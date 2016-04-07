unit URegiaoCad;

interface

Uses Classes, Data.DB, Vcl.Mask, Vcl.Grids, FireDAC.Comp.Client,
      System.SysUtils,

      DMGeral, UConexao;

type
  TCRegiao = class
   private
    { private declarations }
    protected
    { protected declarations }
    public
    { public declarations }
    VcDSRegiao: TDataSource;
    procedure RegiaoCriaQuery;
    function RegiaoAtualizaCampo(PpSequencia:String) : String;
    procedure RegiaoAtualizaSQL(PpWhereSQL:String);
    Function RegiaoRetornaSQL(PpSQL: String) : String;
    Function RegiaoRetornaQueryGrid : TFDQuery;

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
  VcRegiao : TCRegiao;
  VcConexaoSQL : TCConexao;

implementation

{ TCRegiao }

constructor TCRegiao.Create;
begin
  inherited;
end;

function TCRegiao.RegiaoAtualizaCampo(PpSequencia: String): String;
begin
  Result := VcConexao.ExecuteSql('SELECT * FROM REGIAO WHERE SEQUENCIA = ' + QuotedStr(PpSequencia));
end;

procedure TCRegiao.RegiaoAtualizaSQL(PpWhereSQL: String);
begin
  VcConexaoSQL.ExecuteSql('SELECT * FROM REGIAO ' + PpWhereSQL);
end;

procedure TCRegiao.RegiaoCriaQuery;
begin
  VcConexao     := TCConexao.Create;
  VcConexaoSQL := TCConexao.Create;
  VcDSRegiao  := TDataSource.Create(nil);
  VcDSRegiao.DataSet  := VcConexao.VcSqlConexao;
end;

function TCRegiao.RegiaoRetornaQueryGrid: TFDQuery;
begin
  Result := VcConexaoSQL.VcSqlConexao;
end;

function TCRegiao.RegiaoRetornaSQL(PpSQL: String): String;
begin
  Result := VcConexaoSQL.ExecuteRetornoValor('SEQUENCIA', PpSQL);
end;

function TCRegiao.RegistroCancela: String;
begin
  try
    VcDSRegiao.DataSet.Cancel;
  Except
    Result := 'Problema ao cancelar registro!'
  end;
end;

function TCRegiao.RegistroExclui: String;
begin
  try
    VcDSRegiao.DataSet.Delete;
  Except
    Result := 'Problema ao excluir registro!'
  end;
end;

function TCRegiao.RegistroNovo: String;
begin
  try
  VcDSRegiao.DataSet.Insert;
  Except
    Result := 'Problema ao iniciar novo registro!'
  end;
end;

function TCRegiao.RegistroSalva: String;
begin
  try
    if VcDSRegiao.DataSet.FieldByName('SEQUENCIA').IsNull then
      VcDSRegiao.DataSet.FieldByName('SEQUENCIA').AsInteger := StrToInt(RegiaoRetornaSQL('SELECT NVL(MAX(SEQUENCIA),0) SEQUENCIA FROM REGIAO')) + 1
    else
    begin
      if (VcDSRegiao.State  in [dsInsert]) and ('0' <> RegiaoRetornaSQL('SELECT COUNT(*) SEQUENCIA FROM REGIAO WHERE SEQUENCIA = ' + VcDSRegiao.DataSet.FieldByName('SEQUENCIA').AsString)) then
      begin
        Result := 'Código já cadastrado, proximo código disponivel ' +
        IntToStr(StrToInt(RegiaoRetornaSQL('SELECT NVL(MAX(SEQUENCIA),0) SEQUENCIA FROM REGIAO')) + 1) + '.';
        Exit;
      end;
    end;

    VcDSRegiao.DataSet.Post;
  Except
    Result := 'Problema ao salvar novo registro!'
  end;
end;

destructor TCRegiao.Destroy;
begin
  VcRegiao.Free;
  VcConexao.Free;
  VcDSRegiao.Free;
  inherited;
  inherited;
end;

end.
