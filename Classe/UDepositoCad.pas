unit UDepositoCad;

interface

Uses Classes, Data.DB, Vcl.Mask, Vcl.Grids, FireDAC.Comp.Client,
      System.SysUtils,

      DMGeral, UConexao;

type
  TCDeposito = class
   private
    { private declarations }
    protected
    { protected declarations }
    public
    { public declarations }
    VcDSDeposito: TDataSource;
    procedure DepositoCriaQuery;
    function DepositoAtualizaCampo(PpSequencia:String) : String;
    procedure DepositoAtualizaSQL(PpWhereSQL:String);
    Function DepositoRetornaSQL(PpSQL: String) : String;
    Function DepositoRetornaQueryGrid : TFDQuery;

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
  VcDeposito : TCDeposito;
  VcConexaoSQL : TCConexao;

implementation

{ TCUsuario }

constructor TCDeposito.Create;
begin
  inherited;
end;

procedure TCDeposito.DepositoCriaQuery;
begin
  VcConexao     := TCConexao.Create;
  VcConexaoSQL := TCConexao.Create;
  VcDSDeposito  := TDataSource.Create(nil);
  VcDSDeposito.DataSet  := VcConexao.VcSqlConexao;
end;

function TCDeposito.DepositoAtualizaCampo(PpSequencia: String) : String;
begin
  Result := VcConexao.ExecuteSql('SELECT * FROM DEPOSITO WHERE SEQUENCIA = ' + QuotedStr(PpSequencia));
end;

procedure TCDeposito.DepositoAtualizaSQL(PpWhereSQL: String);
begin
  VcConexaoSQL.ExecuteSql('SELECT * FROM DEPOSITO ' + PpWhereSQL);
end;

Function TCDeposito.DepositoRetornaSQL(PpSQL: String) : String;
begin
  Result := VcConexaoSQL.ExecuteRetornoValor('SEQUENCIA', PpSQL);
end;

Function TCDeposito.DepositoRetornaQueryGrid : TFDQuery;
begin
  Result := VcConexaoSQL.VcSqlConexao;
end;

function TCDeposito.RegistroNovo: String;
begin
  try
  VcDSDeposito.DataSet.Insert;
  Except
    Result := 'Problema ao iniciar novo registro!'
  end;
end;

function TCDeposito.RegistroSalva: String;
begin
  try
    if VcDSDeposito.DataSet.FieldByName('SEQUENCIA').IsNull then
      VcDSDeposito.DataSet.FieldByName('SEQUENCIA').AsInteger := StrToInt(DepositoRetornaSQL('SELECT NVL(MAX(SEQUENCIA),0) SEQUENCIA FROM DEPOSITO')) + 1
    else
    begin
      if (VcDSDeposito.State in [dsInsert]) and ('0' <> DepositoRetornaSQL('SELECT COUNT(*) SEQUENCIA FROM DEPOSITO WHERE SEQUENCIA = ' + VcDSDeposito.DataSet.FieldByName('SEQUENCIA').AsString)) then
      begin
        Result := 'Código já cadastrado, proximo código disponivel ' +
        IntToStr(StrToInt(DepositoRetornaSQL('SELECT NVL(MAX(SEQUENCIA),0) SEQUENCIA FROM DEPOSITO')) + 1) + '.';
        Exit;
      end;
    end;

    VcDSDeposito.DataSet.Post;
  Except
    Result := 'Problema ao salvar novo registro!'
  end;
end;

function TCDeposito.RegistroCancela: String;
begin
  try
    VcDSDeposito.DataSet.Cancel;
  Except
    Result := 'Problema ao cancelar registro!'
  end;
end;

function TCDeposito.RegistroExclui: String;
begin
  try
    VcDSDeposito.DataSet.Delete;
  Except
    Result := 'Problema ao excluir registro!'
  end;
end;

destructor TCDeposito.Destroy;
begin
  VcDeposito.Free;
  VcConexao.Free;
  VcDSDeposito.Free;
  inherited;
end;

end.
