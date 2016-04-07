unit UUsuario;

interface

Uses Classes, Data.DB, Vcl.Mask, Vcl.Grids, FireDAC.Comp.Client,
      System.SysUtils,

      DMGeral, UConexao;

type
  TCUsuario = class
   private
    { private declarations }
    protected
    { protected declarations }
    public
    { public declarations }
    VcDSUsuario: TDataSource;
    procedure UsuarioCriaQuery;
    function UsuarioAtualizaCampo(PpSequencia:String) : String;
    procedure UsuarioAtualizaSQL(PpWhereSQL:String);
    Function UsuarioRetornaSQL(PpSQL: String) : String;
    Function UsuarioRetornaQueryGrid : TFDQuery;

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
  VcUsuario: TCUsuario;
  VcConexaoSQL : TCConexao;

implementation

{ TCUsuario }

constructor TCUsuario.Create;
begin
  inherited;
end;

procedure TCUsuario.UsuarioCriaQuery;
begin
  VcConexao     := TCConexao.Create;
  VcConexaoSQL := TCConexao.Create;
  VcDSUsuario  := TDataSource.Create(nil);
  VcDSUsuario.DataSet  := VcConexao.VcSqlConexao;
end;

function TCUsuario.UsuarioAtualizaCampo(PpSequencia: String): String;
begin
  Result := VcConexao.ExecuteSql('SELECT * FROM USUARIO WHERE SEQUENCIA = ' + QuotedStr(PpSequencia));
end;

procedure TCUsuario.UsuarioAtualizaSQL(PpWhereSQL: String);
begin
  VcConexaoSQL.ExecuteSql('SELECT * FROM USUARIO ' + PpWhereSQL);
end;

function TCUsuario.UsuarioRetornaSQL(PpSQL: String): String;
begin
  Result := VcConexaoSQL.ExecuteRetornoValor('SEQUENCIA', PpSQL);
end;

function TCUsuario.UsuarioRetornaQueryGrid: TFDQuery;
begin
  Result := VcConexaoSQL.VcSqlConexao;
end;

function TCUsuario.RegistroNovo: String;
begin
  try
  VcDSUsuario.DataSet.Insert;
  Except
    Result := 'Problema ao iniciar novo registro!'
  end;
end;

function TCUsuario.RegistroSalva: String;
begin
  try
    if VcDSUsuario.DataSet.FieldByName('SEQUENCIA').IsNull then
      VcDSUsuario.DataSet.FieldByName('SEQUENCIA').AsInteger := StrToInt(UsuarioRetornaSQL('SELECT NVL(MAX(SEQUENCIA),0) SEQUENCIA FROM USUARIO')) + 1
    else
    begin
      if (VcDSUsuario.State  in [dsInsert]) and ('0' <> UsuarioRetornaSQL('SELECT COUNT(*) SEQUENCIA FROM USUARIO WHERE SEQUENCIA = ' + VcDSUsuario.DataSet.FieldByName('SEQUENCIA').AsString)) then
      begin
        Result := 'Código já cadastrado, proximo código disponivel ' +
        IntToStr(StrToInt(UsuarioRetornaSQL('SELECT NVL(MAX(SEQUENCIA),0) SEQUENCIA FROM USUARIO')) + 1) + '.';
        Exit;
      end;
    end;

    VcDSUsuario.DataSet.Post;
  Except
    Result := 'Problema ao salvar novo registro!'
  end;
end;

function TCUsuario.RegistroCancela: String;
begin
  try
    VcDSUsuario.DataSet.Cancel;
  Except
    Result := 'Problema ao cancelar registro!'
  end;
end;

function TCUsuario.RegistroExclui: String;
begin
  try
    VcDSUsuario.DataSet.Delete;
  Except
    Result := 'Problema ao excluir registro!'
  end;
end;

destructor TCUsuario.Destroy;
begin
  VcUsuario.Free;
  VcConexao.Free;
  VcDSUsuario.Free;
  inherited;
end;


end.
