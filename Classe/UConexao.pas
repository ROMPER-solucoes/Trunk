unit UConexao;

interface

Uses Classes, FireDAC.Comp.Client, SysUtils, Data.DB,

      DMGeral, ULogSistema;

type
  TCConexao = class
   private
    { private declarations }
    Procedure GeraLogCampo(DataSet : TDataSet);

    Procedure BeforeInsert(DataSet : TDataSet);
    Procedure BeforeDelete(DataSet : TDataSet);
    Procedure BeforeEdit(DataSet : TDataSet);
    Procedure BeforePost(DataSet : TDataSet);

    Procedure AfterInsert(DataSet : TDataSet);
    Procedure AfterDelete(DataSet : TDataSet);
    Procedure AfterEdit(DataSet : TDataSet);
    Procedure AfterPost(DataSet : TDataSet);
    protected
    { protected declarations }
    public
    VcSqlConexao : TFDQuery;
    Function ExecuteSql(PpSQL:String):String;
    Function ExecuteRetornoValor(Campo, PpSQL:String):String;
    Function ExecuteComando(PpComando:String):String;
    published
    { published declarations }
    Constructor Create; // declaração do metodo construtor
    Destructor  Destroy; Override; // declaração do metodo destrutor
  end;

Var
  VcConexao : TCConexao;

implementation

{ TCConexao }

constructor TCConexao.Create;
begin
  inherited;
  VcSqlConexao := TFDQuery.Create(nil);
  VcSqlConexao.Connection := FDmGeral.FdConexao;

  VcSqlConexao.BeforeInsert := BeforeInsert;
  VcSqlConexao.BeforeDelete := BeforeDelete;
  VcSqlConexao.BeforeEdit   := BeforeEdit;
  VcSqlConexao.BeforePost   := BeforePost;

  VcSqlConexao.AfterInsert := AfterInsert;
  VcSqlConexao.AfterDelete := AfterDelete;
  VcSqlConexao.AfterEdit   := AfterEdit;
  VcSqlConexao.AfterPost   := AfterPost;

end;

function TCConexao.ExecuteComando(PpComando: String): String;
begin
  try
    VcSqlConexao.Close;
    VcSqlConexao.SQL.Text := PpComando;
    VcSqlConexao.ExecSQL(True);
    VcLogSistema.GravarLog('SQL: ' + PpComando);
  Except
    VcLogSistema.GravarLog('Erro ao executar : ' + PpComando);
  end;
end;

function TCConexao.ExecuteRetornoValor(Campo, PpSQL: String): String;
begin
  try
    VcSqlConexao.Close;
    VcSqlConexao.SQL.Text := PpSQL;
    VcSqlConexao.Open;
    if (VcSqlConexao.RecordCount = 0) then
      Result := ''
    else
      Result := VcSqlConexao.FieldByName(Campo).AsString;

    VcLogSistema.GravarLog('SQL: ' + PpSQL);
  Except
    VcLogSistema.GravarLog('Erro ao executar : ' + PpSQL);
    Result := 'Problema ao consultar tabela!';
  end;
end;

function TCConexao.ExecuteSql(PpSQL: String): String;
begin
  try
    VcSqlConexao.Close;
    VcSqlConexao.SQL.Text := PpSQL;
    VcSqlConexao.Open;
    if (VcSqlConexao.RecordCount = 0) then
      Result := 'Registro não encontrado!';

    VcLogSistema.GravarLog('SQL: ' + PpSQL);
  Except
    Result := 'Problema ao consultar tabela!';
    VcLogSistema.GravarLog('SQL erro: ' + PpSQL);
  end;
end;

procedure TCConexao.GeraLogCampo(DataSet : TDataSet);
var
  VpLaco : Integer;
  VpDadoLog: String;
begin
  VpDadoLog := '';
  for VpLaco := 0 to DataSet.FieldCount-1 do
    VpDadoLog := VpDadoLog + DataSet.Fields[VpLaco].FieldName + ': ' + DataSet.Fields[VpLaco].AsString  + ',';
  VcLogSistema.GravarLog(VpDadoLog);
end;

procedure TCConexao.BeforeEdit(DataSet: TDataSet);
begin
  //
end;

procedure TCConexao.BeforeInsert(DataSet: TDataSet);
begin
  //
end;

procedure TCConexao.BeforePost(DataSet: TDataSet);
begin
  VcLogSistema.GravarLog('Salvando registro da tabela:' +  VcSqlConexao.Table.Name);
  GeraLogCampo(DataSet);
end;

procedure TCConexao.BeforeDelete(DataSet: TDataSet);
begin
  VcLogSistema.GravarLog('Deletando registro da tabela:' + VcSqlConexao.Table.Name);
  GeraLogCampo(DataSet);
end;

procedure TCConexao.AfterPost(DataSet : TDataSet);
begin
  VcLogSistema.GravarLog('Registro salvo na tabela:' + VcSqlConexao.Table.Name);
end;

procedure TCConexao.AfterDelete(DataSet : TDataSet);
begin
  VcLogSistema.GravarLog('Registro deletado da tabela:' + VcSqlConexao.Table.Name);
end;

procedure TCConexao.AfterEdit(DataSet : TDataSet);
begin
  //
end;

procedure TCConexao.AfterInsert(DataSet : TDataSet);
begin
  //
end;

destructor TCConexao.Destroy;
begin
  VcSqlConexao.Free;
  inherited;
end;

end.
