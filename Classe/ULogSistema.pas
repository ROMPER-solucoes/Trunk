unit ULogSistema;

interface

Uses
  SysUtils, Classes;

type
  TCLogSistema = class
   private
    VcLogTexto : TextFile;
    Function NomeArquivoLog : String;
    Function InicioLinhaLog : String;
    { private declarations }
    protected
    { protected declarations }
    public
    Procedure CriarArquivoLog;
    Procedure GravarLog(PpLog:String);
    published
    { published declarations }
    Constructor Create; // declaração do metodo construtor
    Destructor  Destroy; Override; // declaração do metodo destrutor
  end;

Var
  VcLogSistema : TCLogSistema;

implementation

Uses UGeral;

{ TCLogSistema }

constructor TCLogSistema.Create;
begin
  inherited;
end;

Function TCLogSistema.NomeArquivoLog : String;
var
  VpAno, VpMes, VpDia : word;
begin
  DecodeDate (now, VpAno, VpMes, VpDia);
  Result := VcGeral.RetornaDiretorioExecutavel + '\Log\' +
        IntToStr(VpDia) + '-' + IntToStr(VpMes) + '-' + IntToStr(VpAno) + '.txt';
end;

procedure TCLogSistema.CriarArquivoLog;
begin
  AssignFile(VcLogTexto, NomeArquivoLog);
  if not FileExists(NomeArquivoLog) then
  begin
    ReWrite(VcLogTexto);
    CloseFile(VcLogTexto);
  end;
end;

procedure TCLogSistema.GravarLog(PpLog:String);
Var
  VpListString : TStringList;
  VpLaco : Integer;
begin
  try
    VpListString := TStringList.Create;
    VpListString.LoadFromFile(NomeArquivoLog);

    Rewrite(VcLogTexto);
    for VpLaco := 0 to VpListString.Count -1 do
    begin
      Writeln(VcLogTexto, VpListString[VpLaco]);
    end;
    Writeln(VcLogTexto, InicioLinhaLog + PpLog);
    CloseFile(VcLogTexto);
    VpListString.Free;
  except
  end;
end;

function TCLogSistema.InicioLinhaLog: String;
begin
  Result := DateTimeToStr(now) + ' : ';
end;

destructor TCLogSistema.Destroy;
begin
  inherited;
end;

end.
