unit UClassificacaoCad;

interface

Uses Classes, Data.DB, Vcl.Mask, Vcl.Grids, FireDAC.Comp.Client,
      System.SysUtils,

      DMGeral, UConexao;

type
  TCClassificacao = class
   private
    { private declarations }
    protected
    { protected declarations }
    public
    { public declarations }
    VcDSClassificacao: TDataSource;
    procedure ClassificacaoCriaQuery;
    function ClassificacaoAtualizaCampo(PpSequencia:String) : String;
    procedure ClassificacaoAtualizaSQL(PpWhereSQL:String);
    Function ClassificacaoRetornaSQL(PpSQL: String) : String;
    Function ClassificacaoRetornaQueryGrid : TFDQuery;

    Function RegistroNovo : String;
    Function RegistroCancela : String;
    Function RegistroSalva : String;
    Function RegistroExclui: String;

    published
    { published declarations }
    Constructor Create; // declaração do metodo construtor
    Destructor  Destroy; Override; // declaração do metodo destrutor
  end;

Var
  VcClassificacao : TCClassificacao;
  VcConexaoSQL : TCConexao;
  VcConexaoClassificacao : TCConexao;

implementation

{ TCClassificacao }

constructor TCClassificacao.Create;
begin
  inherited;
end;

function TCClassificacao.ClassificacaoAtualizaCampo(PpSequencia: String): String;
begin
  Result := VcConexaoClassificacao.ExecuteSql('SELECT * FROM CLASSIFICACAO WHERE SEQUENCIA = ' + QuotedStr(PpSequencia));
end;

procedure TCClassificacao.ClassificacaoAtualizaSQL(PpWhereSQL: String);
begin
  VcConexaoSQL.ExecuteSql('SELECT * FROM CLASSIFICACAO ' + PpWhereSQL);
end;

procedure TCClassificacao.ClassificacaoCriaQuery;
begin
  VcConexaoClassificacao := TCConexao.Create;
  VcConexaoSQL := TCConexao.Create;
  VcDSClassificacao  := TDataSource.Create(nil);
  VcDSClassificacao.DataSet  := VcConexaoClassificacao.VcSqlConexao;
end;

function TCClassificacao.ClassificacaoRetornaQueryGrid: TFDQuery;
begin
  Result := VcConexaoSQL.VcSqlConexao;
end;

function TCClassificacao.ClassificacaoRetornaSQL(PpSQL: String): String;
begin
  Result := VcConexaoSQL.ExecuteRetornoValor('SEQUENCIA', PpSQL);
end;

function TCClassificacao.RegistroCancela: String;
begin
  try
    VcDSClassificacao.DataSet.Cancel;
  Except
    Result := 'Problema ao cancelar registro!'
  end;
end;

function TCClassificacao.RegistroExclui: String;
begin
  try
    VcDSClassificacao.DataSet.Delete;
  Except
    Result := 'Problema ao excluir registro!'
  end;
end;

function TCClassificacao.RegistroNovo: String;
begin
  try
  VcDSClassificacao.DataSet.Insert;
  Except
    Result := 'Problema ao iniciar novo registro!'
  end;
end;

function TCClassificacao.RegistroSalva: String;
begin
  try
    if VcDSClassificacao.DataSet.FieldByName('SEQUENCIA').IsNull then
      VcDSClassificacao.DataSet.FieldByName('SEQUENCIA').AsInteger := StrToInt(ClassificacaoRetornaSQL('SELECT NVL(MAX(SEQUENCIA),0) SEQUENCIA FROM CLASSIFICACAO')) + 1
    else
    begin
      if (VcDSClassificacao.State  in [dsInsert]) and ('0' <> ClassificacaoRetornaSQL('SELECT COUNT(*) SEQUENCIA FROM CLASSIFICACAO WHERE SEQUENCIA = ' + VcDSClassificacao.DataSet.FieldByName('SEQUENCIA').AsString)) then
      begin
        Result := 'Código já cadastrado, proximo código disponivel ' +
        IntToStr(StrToInt(ClassificacaoRetornaSQL('SELECT NVL(MAX(SEQUENCIA),0) SEQUENCIA FROM CLASSIFICACAO')) + 1) + '.';
        Exit;
      end;
    end;

    VcDSClassificacao.DataSet.Post;
  Except
    Result := 'Problema ao salvar novo registro!'
  end;
end;

destructor TCClassificacao.Destroy;
begin
  VcClassificacao.Free;
  VcConexaoClassificacao.Free;
  VcDSClassificacao.Free;
  inherited;
end;

end.
