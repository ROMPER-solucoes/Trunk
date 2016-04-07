unit UParceiroCad;

interface

Uses Classes, Data.DB, Vcl.Mask, Vcl.Grids, FireDAC.Comp.Client,
      System.SysUtils,

      DMGeral, UConexao;

type
  TCParceiro = class
   private
    { private declarations }
    protected
    { protected declarations }
    public
    { public declarations }
    VcDSParceiro: TDataSource;
    VcDSCliente : TDataSource;
    VcDSFornecedor : TDataSource;
    VcDSContato : TDataSource;

    procedure ParceiroCriaQuery;
    function ParceiroAtualizaCampo(PpSequencia:String) : String;
    procedure ParceiroAtualizaSQL(PpWhereSQL:String);
    Function ParceiroRetornaQueryGrid : TFDQuery;
    Function ParceiroSalva : String;
    Procedure ParceiroInsertEdit;
    Function ParceiroRetornaDsClassificacao(PpSequencia:String): String;
    Function ParceiroRetornaDsRegiao(PpSequencia:String): String;

    procedure ClienteCriaQuery;
    function ClienteAtualizaCampo(PpSequencia:String) : String;
    procedure ClienteAtualizaSQL(PpWhereSQL:String);
    Function ClienteRetornaQueryGrid : TFDQuery;
    Function ClienteSalva : String;
    Procedure ClienteInsertEdit;

    procedure FornecedorCriaQuery;
    function FornecedorAtualizaCampo(PpSequencia:String) : String;
    procedure FornecedorAtualizaSQL(PpWhereSQL:String);
    Function FornecedorRetornaQueryGrid : TFDQuery;
    Function FornecedorSalva : String;
    Procedure FornecedorInsertEdit;

    procedure ContatoCriaQuery;
    function ContatoAtualizaCampo(PpSequencia:String) : String;
    procedure ContatoAtualizaSQL(PpWhereSQL:String);
    Function ContatoRetornaQueryGrid : TFDQuery;
    Function ContatoSalva : String;

    Function RetornaSQL(PpCampo, PpSQL: String) : String;

    Function RegistroNovo(PpRegistroTag:Integer) : String;
    Function RegistroCancela(PpRegistroTag:Integer) : String;
    Function RegistroSalva(PpRegistroTag:Integer) : String;
    Function RegistroExclui(PpRegistroTag:Integer): String;

    published
    { published declarations }
    Constructor Create; // declaração do metodo construtor
    Destructor  Destroy; Override; // declaração do metodo destrutor
  end;

Var
  VcParceiro : TCParceiro;
  VcConexaoSQL, VcParceiroConexao,
  VcClienteConexao, VcFornecedorConexao,
  VcContatoConexao : TCConexao;


implementation

Uses
  UClassificacaoCad;

constructor TCParceiro.Create;
begin
  inherited;
end;

{********************Parceiro********************}

function TCParceiro.ParceiroAtualizaCampo(PpSequencia: String): String;
begin
  Result := VcParceiroConexao.ExecuteSql('SELECT * FROM PARCEIRO WHERE SEQUENCIA = ' + QuotedStr(PpSequencia));
end;

procedure TCParceiro.ParceiroAtualizaSQL(PpWhereSQL: String);
begin
  VcConexaoSQL.ExecuteSql('SELECT * FROM PARCEIRO ' + PpWhereSQL);
end;

procedure TCParceiro.ParceiroCriaQuery;
begin
  VcConexaoSQL := TCConexao.Create;
  VcParceiroConexao := TCConexao.Create;
  VcClassificacao := TCClassificacao.Create;

  VcDSParceiro := TDataSource.Create(nil);
  VcDSParceiro.DataSet := VcParceiroConexao.VcSqlConexao;
end;

procedure TCParceiro.ParceiroInsertEdit;
begin
  if VcDSParceiro.State = dsBrowse then
  begin
    if VcDSParceiro.DataSet.RecordCount > 0 then
      VcDSParceiro.DataSet.Edit
    else
      VcDSParceiro.DataSet.Insert;
  end;
end;

function TCParceiro.ParceiroRetornaDsClassificacao(PpSequencia:String): String;
begin
  Result  := RetornaSQL('DESCRICAO', 'SELECT DESCRICAO FROM CLASSIFICACAO WHERE SEQUENCIA = ' + PpSequencia);
end;

function TCParceiro.ParceiroRetornaDsRegiao(PpSequencia:String): String;
begin
  Result  := RetornaSQL('DESCRICAO', 'SELECT DESCRICAO FROM REGIAO WHERE SEQUENCIA = ' + PpSequencia);
end;

function TCParceiro.ParceiroRetornaQueryGrid: TFDQuery;
begin
  Result := VcConexaoSQL.VcSqlConexao;
end;

function TCParceiro.RetornaSQL(PpCampo, PpSQL: String): String;
begin
  Result := VcConexaoSQL.ExecuteRetornoValor(PpCampo, PpSQL);
end;

function TCParceiro.ParceiroSalva: String;
begin
  if VcDSParceiro.State = dsBrowse then
    Exit;

  if VcDSParceiro.DataSet.FieldByName('SEQUENCIA').IsNull then
    VcDSParceiro.DataSet.FieldByName('SEQUENCIA').AsInteger := StrToInt(RetornaSQL('SEQUENCIA', 'SELECT NVL(MAX(SEQUENCIA),0) SEQUENCIA FROM PARCEIRO')) + 1
  else
  begin
    if (VcDSParceiro.State in [dsInsert]) and ('0' <> RetornaSQL('SEQUENCIA', 'SELECT COUNT(*) SEQUENCIA FROM PARCEIRO WHERE SEQUENCIA = ' + VcDSParceiro.DataSet.FieldByName('SEQUENCIA').AsString)) then
    begin
      Result := 'Código já cadastrado, proximo código disponivel ' +
      IntToStr(StrToInt(RetornaSQL('SEQUENCIA', 'SELECT NVL(MAX(SEQUENCIA),0) SEQUENCIA FROM PARCEIRO')) + 1) + '.';
      Exit;
    end;
  end;

  VcDSParceiro.DataSet.Post;
end;

function TCParceiro.RegistroCancela(PpRegistroTag:Integer): String;
begin
  try
    case PpRegistroTag of
      0 : VcDSParceiro.DataSet.Cancel;
      1 : VcDSCliente.DataSet.Cancel;
      2 : VcDSFornecedor.DataSet.Cancel;
      4 : VcDSContato.DataSet.Cancel;
    end;
  Except
    Result := 'Problema ao cancelar registro!'
  end;
end;

function TCParceiro.RegistroExclui(PpRegistroTag:Integer): String;
begin
  try
    case PpRegistroTag of
      0 : VcDSParceiro.DataSet.Delete;
      1 : VcDSCliente.DataSet.Delete;
      2 : VcDSFornecedor.DataSet.Delete;
      4 : VcDSContato.DataSet.Delete;
    end;
  Except
    Result := 'Problema ao excluir registro!'
  end;
end;

function TCParceiro.RegistroNovo(PpRegistroTag:Integer): String;
begin
  try
    case PpRegistroTag of
    0 : VcDSParceiro.DataSet.Insert;
    1 : VcDSCliente.DataSet.Insert;
    2 : VcDSFornecedor.DataSet.Insert;
    4 : VcDSContato.DataSet.Insert;
    end;
  Except
    Result := 'Problema ao iniciar novo registro!'
  end;
end;

function TCParceiro.RegistroSalva(PpRegistroTag:Integer): String;
begin
  try
    case PpRegistroTag of
      0 : Result := ParceiroSalva;
      1 : Result := ClienteSalva;
      2 : Result := FornecedorSalva;
      4 : Result := ContatoSalva;
    end;
  Except
    Result := 'Problema ao salvar novo registro!'
  end;
end;

{********************Cliente********************}

function TCParceiro.ClienteAtualizaCampo(PpSequencia: String): String;
begin
  Result := VcClienteConexao.ExecuteSql('SELECT * FROM CLIENTE WHERE SEQUENCIA = ' +
                                        QuotedStr(PpSequencia) + ' AND PARCEIROSEQ = ' +
                                        VcDSParceiro.DataSet.FieldByName('SEQUENCIA').AsString);
end;

procedure TCParceiro.ClienteAtualizaSQL(PpWhereSQL: String);
begin
  VcConexaoSQL.ExecuteSql('SELECT * FROM CLIENTE WHERE PARCEIROSEQ = ' +
            VcDSParceiro.DataSet.FieldByName('SEQUENCIA').AsString + PpWhereSQL);
end;

procedure TCParceiro.ClienteCriaQuery;
begin
  VcClienteConexao := TCConexao.Create;
  VcDSCliente := TDataSource.Create(nil);
  VcDSCliente.DataSet := VcClienteConexao.VcSqlConexao;
end;

procedure TCParceiro.ClienteInsertEdit;
begin
  if VcDSCliente.State = dsBrowse then
  begin
    if VcDSCliente.DataSet.RecordCount > 0 then
      VcDSCliente.DataSet.Edit
    else
      VcDSCliente.DataSet.Insert;
  end;
end;

function TCParceiro.ClienteRetornaQueryGrid: TFDQuery;
begin
  Result := VcConexaoSQL.VcSqlConexao;
end;

function TCParceiro.ClienteSalva: String;
begin
  if VcDSCliente.State = dsBrowse then
    Exit;

  VcDSCliente.DataSet.FieldByName('PARCEIROSEQ').AsInteger := VcDSParceiro.DataSet.FieldByName('SEQUENCIA').AsInteger;
  if VcDSCliente.DataSet.FieldByName('SEQUENCIA').IsNull then
    VcDSCliente.DataSet.FieldByName('SEQUENCIA').AsInteger := StrToInt(RetornaSQL('SEQUENCIA', 'SELECT NVL(MAX(SEQUENCIA),0) SEQUENCIA FROM CLIENTE')) + 1
  else
  begin
    if (VcDSCliente.State  in [dsInsert]) and ('0' <> RetornaSQL('SEQUENCIA', 'SELECT COUNT(*) SEQUENCIA FROM CLIENTE WHERE SEQUENCIA = ' + VcDSCliente.DataSet.FieldByName('SEQUENCIA').AsString)) then
    begin
      Result := 'Código já cadastrado, proximo código disponivel ' +
      IntToStr(StrToInt(RetornaSQL('SEQUENCIA', 'SELECT NVL(MAX(SEQUENCIA),0) SEQUENCIA FROM CLIENTE')) + 1) + '.';
      Exit;
    end;
  end;

  VcDSCliente.DataSet.Post;
end;

{********************Contato********************}

function TCParceiro.ContatoAtualizaCampo(PpSequencia: String): String;
begin
  Result := VcContatoConexao.ExecuteSql('SELECT * FROM CONTATO WHERE SEQUENCIA = ' +
                                        QuotedStr(PpSequencia) + ' AND PARCEIROSEQ = ' +
                                        VcDSParceiro.DataSet.FieldByName('SEQUENCIA').AsString);
end;

procedure TCParceiro.ContatoAtualizaSQL(PpWhereSQL: String);
begin
  VcConexaoSQL.ExecuteSql('SELECT * FROM CONTATO WHERE PARCEIROSEQ = ' +
            VcDSParceiro.DataSet.FieldByName('SEQUENCIA').AsString + PpWhereSQL);
end;

procedure TCParceiro.ContatoCriaQuery;
begin
  VcContatoConexao := TCConexao.Create;
  VcDSContato := TDataSource.Create(nil);
  VcDSContato.DataSet := VcContatoConexao.VcSqlConexao;
end;

function TCParceiro.ContatoRetornaQueryGrid: TFDQuery;
begin
  Result := VcConexaoSQL.VcSqlConexao;
end;

function TCParceiro.ContatoSalva: String;
begin
  if VcDSContato.State = dsBrowse then
    Exit;

  VcDSContato.DataSet.FieldByName('PARCEIROSEQ').AsInteger := VcDSParceiro.DataSet.FieldByName('SEQUENCIA').AsInteger;
  if VcDSContato.DataSet.FieldByName('SEQUENCIA').IsNull then
    VcDSContato.DataSet.FieldByName('SEQUENCIA').AsInteger := StrToInt(RetornaSQL('SEQUENCIA', 'SELECT NVL(MAX(SEQUENCIA),0) SEQUENCIA FROM CONTATO')) + 1
  else
  begin
    if (VcDSContato.State  in [dsInsert]) and ('0' <> RetornaSQL('SEQUENCIA', 'SELECT COUNT(*) SEQUENCIA FROM CONTATO WHERE SEQUENCIA = ' + VcDSContato.DataSet.FieldByName('SEQUENCIA').AsString)) then
    begin
      Result := 'Código já cadastrado, proximo código disponivel ' +
      IntToStr(StrToInt(RetornaSQL('SEQUENCIA', 'SELECT NVL(MAX(SEQUENCIA),0) SEQUENCIA FROM CONTATO')) + 1) + '.';
      Exit;
    end;
  end;

  VcDSContato.DataSet.Post;
end;

{********************Fornecedor********************}

function TCParceiro.FornecedorAtualizaCampo(PpSequencia: String): String;
begin
  Result := VcFornecedorConexao.ExecuteSql('SELECT * FROM FORNECEDOR WHERE SEQUENCIA = ' +
                                        QuotedStr(PpSequencia) + ' AND PARCEIROSEQ = ' +
                                        VcDSParceiro.DataSet.FieldByName('SEQUENCIA').AsString);
end;

procedure TCParceiro.FornecedorAtualizaSQL(PpWhereSQL: String);
begin
  VcConexaoSQL.ExecuteSql('SELECT * FROM FORNECEDOR WHERE PARCEIROSEQ = ' +
            VcDSParceiro.DataSet.FieldByName('SEQUENCIA').AsString + PpWhereSQL);
end;

procedure TCParceiro.FornecedorCriaQuery;
begin
  VcFornecedorConexao := TCConexao.Create;
  VcDSFornecedor := TDataSource.Create(nil);
  VcDSFornecedor.DataSet := VcFornecedorConexao.VcSqlConexao;
end;

procedure TCParceiro.FornecedorInsertEdit;
begin
  if VcDSFornecedor.State = dsBrowse then
  begin
    if VcDSFornecedor.DataSet.RecordCount > 0 then
      VcDSFornecedor.DataSet.Edit
    else
      VcDSFornecedor.DataSet.Insert;
  end;
end;

function TCParceiro.FornecedorRetornaQueryGrid: TFDQuery;
begin
  Result := VcConexaoSQL.VcSqlConexao;
end;

function TCParceiro.FornecedorSalva: String;
begin
  if VcDSFornecedor.State = dsBrowse then
    Exit;

  VcDSFornecedor.DataSet.FieldByName('PARCEIROSEQ').AsInteger := VcDSParceiro.DataSet.FieldByName('SEQUENCIA').AsInteger;
  if VcDSFornecedor.DataSet.FieldByName('SEQUENCIA').IsNull then
    VcDSFornecedor.DataSet.FieldByName('SEQUENCIA').AsInteger := StrToInt(RetornaSQL('SEQUENCIA', 'SELECT NVL(MAX(SEQUENCIA),0) SEQUENCIA FROM FORNECEDOR')) + 1
  else
  begin
    if (VcDSFornecedor.State  in [dsInsert]) and ('0' <> RetornaSQL('SEQUENCIA', 'SELECT COUNT(*) SEQUENCIA FROM FORNECEDOR WHERE SEQUENCIA = ' + VcDSFornecedor.DataSet.FieldByName('SEQUENCIA').AsString)) then
    begin
      Result := 'Código já cadastrado, proximo código disponivel ' +
      IntToStr(StrToInt(RetornaSQL('SEQUENCIA', 'SELECT NVL(MAX(SEQUENCIA),0) SEQUENCIA FROM FORNECEDOR')) + 1) + '.';
      Exit;
    end;
  end;

  VcDSFornecedor.DataSet.Post;
end;

destructor TCParceiro.Destroy;
begin
  VcParceiro.Free;
  VcParceiroConexao.Free;
  VcClienteConexao.Free;
  VcFornecedorConexao.Free;
  VcContatoConexao.Free;
  VcDSParceiro.Free;
  inherited;
end;

end.
