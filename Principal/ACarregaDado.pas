unit ACarregaDado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls,

  APrincipal, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFCarregaDado = class(TForm)
    HTela: THeaderControl;
    Panel1: TPanel;
    Panel2: TPanel;
    PCarregaStatus: TProgressBar;
    MCarregaDado: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    Function CarregaDadoAtualiza(PpDescricao:String; PpProcesso:Integer) : String;
  end;

var
  FCarregaDado: TFCarregaDado;

implementation

{$R *.dfm}

function TFCarregaDado.CarregaDadoAtualiza(PpDescricao: String;
  PpProcesso: Integer): String;
begin
  MCarregaDado.Lines.Add(PpDescricao);
  PCarregaStatus.Position := PpProcesso;
end;

procedure TFCarregaDado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (PCarregaStatus.Position.MaxValue < PCarregaStatus.Position) and
     (PCarregaStatus.Position.MinValue > PCarregaStatus.Position) then
  begin
    ShowMessage('Processo não foi encerrado.');
    Abort;
  end;
end;

end.
