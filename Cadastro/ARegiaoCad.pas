unit ARegiaoCad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, FireDAC.Comp.Client,
  Vcl.Buttons, Vcl.Grids, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFRegiaoCad = class(TForm)
    Panel1: TPanel;
    PCGeral: TPageControl;
    TsRegiao: TTabSheet;
    Splitter1: TSplitter;
    Panel2: TPanel;
    GRegiao: TStringGrid;
    PCampo: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BPesquisa: TSpeedButton;
    ECodigo: TDBEdit;
    EDescricao: TDBEdit;

    Function CarregaFiltro : String;

    Function RegistroNovo : String;
    Function RegistroCancela : String;
    Function RegistroSalva: String;
    Function RegistroExclui: String;

    Procedure AtualizaRegiaoGrid;
    Procedure CriaGridTitulo;
    Procedure CarregaGridRegistro;
    Procedure VinculaCampoConexao;
    Procedure IniciaVazioCampo;

    procedure FormShow(Sender: TObject);
    procedure BPesquisaClick(Sender: TObject);
    procedure ECodigoEnter(Sender: TObject);
    procedure GRegiaoDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure GRegiaoKeyPress(Sender: TObject; var Key: Char);
    procedure GRegiaoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GRegiaoSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(PpCoolBar : TCoolBar);
  end;

var
  VcRegiaoCad : TFRegiaoCad;
  FRegiaoOrdem: String;
  VcCoolBar : TCoolBar;

implementation

Uses
  UPadraoTela,
  URegiaoCad, APrincipal;

{$R *.dfm}

{ TFRegiaoCad }

constructor TFRegiaoCad.Create(PpCoolBar: TCoolBar);
begin
  inherited Create(nil);
  VcCoolBar := PpCoolBar;
end;

procedure TFRegiaoCad.FormShow(Sender: TObject);
begin
  VcRegiao := TCRegiao.Create;
  VcRegiao.RegiaoCriaQuery;
  VcRegiao.RegiaoAtualizaSQL('');
  CriaGridTitulo;
  CarregaGridRegistro;
  VinculaCampoConexao;
  IniciaVazioCampo;
  GRegiao.Options := GRegiao.Options + [goColSizing];
  GRegiao.Options := GRegiao.Options + [goColMoving];
end;

procedure TFRegiaoCad.CarregaGridRegistro;
var
  VpSqlConexao : TFDQuery;
begin
  VpSqlConexao := VcRegiao.RegiaoRetornaQueryGrid;
  VcPadraoTela.CarregaGridRegistro(GRegiao, VpSqlConexao);
end;

procedure TFRegiaoCad.CriaGridTitulo;
var
  VpSqlConexao : TFDQuery;
  VpListaNomeCampo : String;
begin
  VpSqlConexao := VcRegiao.RegiaoRetornaQueryGrid;
  VpListaNomeCampo := 'SEQUENCIA=60, DESCRICAO=500';
  VcPadraoTela.CriaGridTitulo(GRegiao, VpSqlConexao, VpListaNomeCampo);
end;

procedure TFRegiaoCad.ECodigoEnter(Sender: TObject);
begin
  AtualizaRegiaoGrid;
end;

procedure TFRegiaoCad.GRegiaoDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  VcPadraoTela.GridDrawCell(Sender, ACol, ARow, Rect, State);
end;

procedure TFRegiaoCad.GRegiaoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    AtualizaRegiaoGrid;
end;

procedure TFRegiaoCad.GRegiaoMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if VcPadraoTela.GridMouseUp(Sender, Button, Shift, X, Y, FRegiaoOrdem) then
    AtualizaRegiaoGrid;
end;

procedure TFRegiaoCad.GRegiaoSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  if VcPadraoTela.GridSelectCell(Sender, ACol, ARow, CanSelect) then
    VcRegiao.RegiaoAtualizaCampo(GRegiao.Cells[0,ARow]);
end;

procedure TFRegiaoCad.AtualizaRegiaoGrid;
Var
  VpWhere : String;
begin
  VpWhere := VcPadraoTela.AtualizaGrid(GRegiao, FRegiaoOrdem);
  VcRegiao.RegiaoAtualizaSQL(VpWhere);
  CarregaGridRegistro;
end;

procedure TFRegiaoCad.IniciaVazioCampo;
begin
  VcRegiao.RegiaoAtualizaCampo('-1');
  VcRegiao.VcDSRegiao.DataSet.FieldByName('SEQUENCIA').focusControl;
end;

procedure TFRegiaoCad.BPesquisaClick(Sender: TObject);
begin
  VcCoolBar.Bands[3].Text := VcRegiao.RegiaoAtualizaCampo(ECodigo.Text);
end;


function TFRegiaoCad.RegistroCancela: String;
begin
  Result := VcRegiao.RegistroCancela;
  if Result = '' then
    begin
    IniciaVazioCampo;
    Result := 'Alterações cancelada!'
    end;
end;

function TFRegiaoCad.RegistroNovo: String;
begin
  Result := VcRegiao.RegistroNovo;
  IniciaVazioCampo;
end;

function TFRegiaoCad.RegistroSalva: String;
begin
  Result := VcRegiao.RegistroSalva;
  if Result = '' then
    begin
    IniciaVazioCampo;
    Result := 'Salvo com sucesso!';
    end;
end;

function TFRegiaoCad.CarregaFiltro: String;
begin
  Result := VcRegiao.VcDSRegiao.DataSet.FieldByName('SEQUENCIA').AsString;
end;

procedure TFRegiaoCad.VinculaCampoConexao;
Var
  VpLaco : integer;
begin
  for VpLaco := 0 to ComponentCount -1 do
  begin
    if Components[VpLaco] is TDBEdit then
      TDBEdit(Components[VpLaco]).DataSource := VcRegiao.VcDSRegiao;
  end;
end;

function TFRegiaoCad.RegistroExclui: String;
begin
  Result := VcRegiao.RegistroExclui;
  if Result = '' then
    begin
    IniciaVazioCampo;
    Result := 'Excluido com sucesso!'
    end;
end;

end.
