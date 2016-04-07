unit UGeral;

interface

Uses Classes, FireDAC.Comp.Client, SysUtils, Forms,

      DMGeral, UConexao, ULogSistema;

type
  TCGeral = class
   private
    { private declarations }
    VcCommand : TFDCommand;
    Function VarrerDiretorio(PpDiretorio:String) : String;
    Function AtualizaBanco(PpArquivo:String) : String;
    Function AtualizaTabelaVersao : String;
    Function CarregaDadoShow : String;
    Function CarregaDadoAtualiza(PpDescricao:String; PpProcesso:Integer) : String;
    protected
    { protected declarations }
    public
    VcSqlGeral : TFDQuery;
    Function ValidaVersao : String;

    Function Atualiza(PpSQL:String) : String;

    Function RetornaDiretorioExecutavel : String;
    published
    { published declarations }
    Constructor Create; // declaração do metodo construtor
    Destructor  Destroy; Override; // declaração do metodo destrutor
  end;

Const
  CcVersao = '0';
  CcDiretorioLista : array[1..7] of string =
    ('Tabela\Criar', 'Tabela\Alterar', 'View', 'Procedure',
    'Function', 'Package', 'Trigger');

var
  VcGeral : TCGeral;

implementation

uses
  UCarregaTela,
  ACarregaDado;

{ TCGeral }

constructor TCGeral.Create;
begin
  inherited;
end;

function TCGeral.CarregaDadoShow: String;
begin
  FCarregaDado :=  TFCarregaDado(VcCarregaTela.CarregaTela(10, nil));
  FCarregaDado.Show;
end;

function TCGeral.CarregaDadoAtualiza(PpDescricao:String; PpProcesso:Integer): String;
begin
  FCarregaDado.CarregaDadoAtualiza(PpDescricao,PpProcesso);
end;

Function TCGeral.ValidaVersao;
var
  VpVersaoAtual : String;
begin
  VcLogSistema.GravarLog('Versão executavel :' + CcVersao);
  VcConexao := TCConexao.Create;
  Result := 'Problema';
  try
    VcConexao.ExecuteSql('SELECT VERSAOATUAL FROM VERSAO');
    VpVersaoAtual := VcConexao.VcSqlConexao.FieldByName('VERSAOATUAL').AsString;
    VcLogSistema.GravarLog('Versão banco :' + VpVersaoAtual);
  Except
    VpVersaoAtual := '';
  end;
  if VpVersaoAtual <> CcVersao then
  begin
    Result := CarregaDadoShow;
    Result := CarregaDadoAtualiza('Iniciando Atualização Versão', 1);
    Result :=  VarrerDiretorio(RetornaDiretorioExecutavel + '\Banco');
    AtualizaTabelaVersao;
    FCarregaDado.Close;
  end;
  Result := '';
end;

function TCGeral.VarrerDiretorio(PpDiretorio : String): String;
var
  VpArquivo : TSearchRec;
  VpLaco, VpLaco1 : Integer;
  VpDiretorio, VpProcesso : string;
begin
  try
    for VpLaco := 1 to High(CcDiretorioLista) do
    begin
      VpDiretorio := PpDiretorio+'\'+CcDiretorioLista[VpLaco];
      VpProcesso := 'Atualizando arquivos da pasta:' + VpDiretorio;
      Result := CarregaDadoAtualiza(VpProcesso, ((VpLaco + 1) * 15));
      VpLaco1 := FindFirst(VpDiretorio+'\*.tab', faAnyFile, VpArquivo);
      while VpLaco1 = 0 do
      begin
        VpProcesso := 'Atualizando Arquivo : ' + VpArquivo.Name;
        Result := CarregaDadoAtualiza(VpProcesso, ((VpLaco - 1) * 15));
        Result := AtualizaBanco(VpDiretorio+'\'+VpArquivo.Name);
        VpProcesso := 'Atualizado com sucesso arquivo: ' + VpArquivo.Name;
        Result := CarregaDadoAtualiza(VpProcesso, ((VpLaco - 1) * 15));
        VpLaco1 := FindNext(VpArquivo);
      end;
      VpProcesso := 'Atualizado com sucesso pasta:' + VpDiretorio;
      Result := CarregaDadoAtualiza(VpProcesso, ((VpLaco + 1) * 15));
    end;
  finally
    FindClose(VpArquivo);
  end;
end;

function TCGeral.Atualiza(PpSQL:String): String;
begin
  VcConexao.ExecuteSql(PpSQL);
end;

function TCGeral.AtualizaBanco(PpArquivo: String): String;
Var
  VpArquivo : TextFile;
  VpLinha, VpSql, Diretorio : String;
begin
  AssignFile(VpArquivo, PpArquivo);
  Reset(VpArquivo);
  Diretorio := ExtractFileDir(PpArquivo);
  While not Eof(VpArquivo) do
  begin
    Readln(VpArquivo, VpLinha);

    // ALTERAR TABELAS CRIAR PK, UK ...
    if Diretorio = RetornaDiretorioExecutavel + '\Banco\Tabela\Alterar' then
    begin
      VcConexao.ExecuteComando(VpLinha);
      Continue;
    end;

    // CREAR TABELAS PROCEDURES ...
    if (Trim(VpLinha) <> '') then
    begin
      VpSql := VpSql + VpLinha;
      if Eof(VpArquivo) then
        VcConexao.ExecuteComando(VpSql);
    end;
  end;
end;

function TCGeral.AtualizaTabelaVersao: String;
begin
  VcConexao.ExecuteComando('DELETE FROM VERSAO');
  VcConexao.ExecuteComando('INSERT INTO VERSAO (SEQUENCIA, VERSAOATUAL) VALUES ' +
                 '(VERSAOPROXIMASEQ.NEXTVAL,'+ QuotedStr(CcVersao) +')');
end;

function TCGeral.RetornaDiretorioExecutavel: String;
begin
  Result := ExtractFilePath(Application.ExeName);
end;

destructor TCGeral.Destroy;
begin
  VcConexao.Free;
  inherited;
end;

end.
