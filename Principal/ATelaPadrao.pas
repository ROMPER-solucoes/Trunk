unit ATelaPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFTelaPadrao = class(TForm)

  Function RegistroNovo : String;
  Function RegistroCancela : String;
  Function RegistroSalva: String;
  Function RegistroExclui: String;

  Procedure IniciaVazioCampo(Panel : TPanel);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTelaPadrao: TFTelaPadrao;
  VCClasseHeranca : TClass;

implementation

{$R *.dfm}

{ TFTelaPadrao }

procedure TFTelaPadrao.IniciaVazioCampo(Panel : TPanel);
begin
  //
end;

function TFTelaPadrao.RegistroCancela: String;
begin
  //
end;

function TFTelaPadrao.RegistroExclui: String;
begin
  //
end;

function TFTelaPadrao.RegistroNovo: String;
begin
  //Result := VCClasseHeranca.RegistroNovo;
  //IniciaVazioCampo;
  //Result := FTelaPadrao.RegistroNovo(VCParceiroCad.PCGeral.ActivePage.Tag);
  //IniciaVazioCampo(VCParceiroCad.PCGeral.ActivePage.Tag);
end;

function TFTelaPadrao.RegistroSalva: String;
begin
  //
end;

end.
