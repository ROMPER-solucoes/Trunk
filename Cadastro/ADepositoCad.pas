unit ADepositoCad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, FireDAC.Comp.Client,
  Vcl.Buttons;

type
  TFDepisitoCad = class(TForm)
    Panel1: TPanel;
    PCGeral: TPageControl;
    TsMovimentoEstoque: TTabSheet;
    Panel2: TPanel;
    PCampo: TPanel;
    Splitter1: TSplitter;
    ECodigo: TDBEdit;
    EDescricao: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    GDeposito: TStringGrid;
    BPesquisa: TSpeedButton;

    Function RegistroNovo : String;
    Function RegistroCancela : String;
    Function RegistroSalva: String;
    Function RegistroExclui: String;

    Procedure AtualizaDepositoGrid;
    Procedure CriaGridTitulo;
    Procedure CarregaGridRegistro;
    Procedure VinculaCampoConexao;
    Procedure IniciaVazioCampo;

    procedure FormShow(Sender: TObject);
    procedure GDepositoSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure GDepositoKeyPress(Sender: TObject; var Key: Char);
    procedure GDepositoDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure BPesquisaClick(Sender: TObject);
    procedure GDepositoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ECodigoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(PpCoolBar : TCoolBar);
  end;

var
  VCDepositoCad : TFDepisitoCad;
  FDepostioOrdem: String;
  VcCoolBar : TCoolBar;

implementation

Uses
  UDepositoCad, APrincipal;

{$R *.dfm}

constructor TFDepisitoCad.Create(PpCoolBar: TCoolBar);
begin
  inherited Create(nil);
  VcCoolBar := PpCoolBar;
end;

procedure TFDepisitoCad.FormShow(Sender: TObject);
begin
  VcDeposito := TCDeposito.Create;
  VcDeposito.DepositoCriaQuery;
  VcDeposito.DepositoAtualizaSQL('');
  CriaGridTitulo;
  CarregaGridRegistro;
  VinculaCampoConexao;
  IniciaVazioCampo;
  GDeposito.Options := GDeposito.Options + [goColSizing];
  GDeposito.Options := GDeposito.Options + [goColMoving];
end;

procedure TFDepisitoCad.VinculaCampoConexao;
Var
  VpLaco : integer;
begin
  for VpLaco := 0 to ComponentCount -1 do
  begin
    if Components[VpLaco] is TDBEdit then
      TDBEdit(Components[VpLaco]).DataSource := VcDeposito.VcDSDeposito;
  end;
end;

procedure TFDepisitoCad.CriaGridTitulo;
var
  VpLaco, VpColCount : integer;
  VpSqlConexao : TFDQuery;
begin
  VpSqlConexao := VcDeposito.DepositoRetornaQueryGrid;
  VpColCount := 0;
  for VpLaco := 0 to VpSqlConexao.Fields.Count - 1 do
  begin
    if VpSqlConexao.Fields[VpLaco].FieldName = 'SEQUENCIA' then
    begin
      VpColCount := VpColCount;
      GDeposito.ColCount := VpColCount +1;
      GDeposito.Cells[VpLaco,0] := 'SEQUENCIA';
      GDeposito.ColWidths[VpLaco] := 60;
    end
    else if VpSqlConexao.Fields[VpLaco].FieldName = 'DESCRICAO' then
    begin
      VpColCount := VpColCount + 1;
      GDeposito.ColCount := VpColCount +1;
      GDeposito.Cells[VpLaco,0] := 'DESCRICAO';
      GDeposito.ColWidths[VpLaco] := 500;
    end
    else
      VpSqlConexao.Fields[VpLaco].Visible := False;
  end;
  GDeposito.FixedRows := VpColCount;
end;

procedure TFDepisitoCad.ECodigoEnter(Sender: TObject);
begin
  AtualizaDepositoGrid;
end;

procedure TFDepisitoCad.AtualizaDepositoGrid;
Var
  VpLaco : integer;
  VpWhere : String;
begin
  VpWhere := ' where 1 = 1 ';
  for VpLaco := 0 to GDeposito.ColCount -1 do
  begin
    if GDeposito.Cells[VpLaco,1] <> '' then
      VpWhere := VpWhere + ' and UPPER (' + GDeposito.Cells[VpLaco,0] + ') like UPPER (' +
        QuotedStr('%' + GDeposito.Cells[VpLaco,1] + '%') + ')';
  end;
  if FDepostioOrdem <> '' then
    VpWhere := VpWhere + ' order by ' + FDepostioOrdem;

  VcDeposito.DepositoAtualizaSQL(VpWhere);
  CarregaGridRegistro;
end;

procedure TFDepisitoCad.BPesquisaClick(Sender: TObject);
begin
  VcCoolBar.Bands[3].Text := VcDeposito.DepositoAtualizaCampo(ECodigo.Text);
end;

procedure TFDepisitoCad.CarregaGridRegistro;
var
  VpLaco, VpLinha : integer;
  VpSqlConexao : TFDQuery;
begin
  VpLinha := 2;
  VpLaco  := 0;
  VpSqlConexao := VcDeposito.DepositoRetornaQueryGrid;
  while not VpSqlConexao.Eof do
  begin
    GDeposito.RowCount := VpLinha;
    for VpLaco := 0 to GDeposito.FixedRows do
    begin
      GDeposito.Cells[VpLaco,VpLinha] := VpSqlConexao.FieldByName(GDeposito.Cells[VpLaco,0]).AsString;
    end;
    VpLinha := VpLinha + 1;
    VpSqlConexao.Next;
  end;
  GDeposito.RowCount := VpLinha;
end;

procedure TFDepisitoCad.GDepositoDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  if ARow = 1 then
  begin
    GDeposito.Canvas.Brush.Color := clGradientInactiveCaption;
    GDeposito.Canvas.Font.Color:=clblack;
    GDeposito.canvas.fillRect(Rect);
    GDeposito.canvas.TextOut(Rect.Left,Rect.Top,GDeposito.Cells[ACol,ARow]);
  end;
end;

procedure TFDepisitoCad.GDepositoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    AtualizaDepositoGrid;
end;

procedure TFDepisitoCad.GDepositoMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Col, Row: Integer;
begin
  GDeposito.MouseToCell(X, Y, Col, Row);
  if Row = 0 then
    begin
    if FDepostioOrdem = GDeposito.Cells[Col,Row] then
      FDepostioOrdem := GDeposito.Cells[Col,Row] + ' DESC '
    else
      FDepostioOrdem := GDeposito.Cells[Col,Row];
    AtualizaDepositoGrid;
    end;
end;

procedure TFDepisitoCad.GDepositoSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if ARow = 1 then
    GDeposito.Options := GDeposito.Options + [goEditing]
  else
    GDeposito.Options := GDeposito.Options - [goEditing];

  if ARow > 1  then
    VcDeposito.DepositoAtualizaCampo(GDeposito.Cells[0,ARow]);
end;

procedure TFDepisitoCad.IniciaVazioCampo;
begin
  VcDeposito.DepositoAtualizaCampo('-1');
  VcDeposito.VcDSDeposito.DataSet.FieldByName('SEQUENCIA').focusControl;
end;

function TFDepisitoCad.RegistroCancela: String;
begin
  Result := VcDeposito.RegistroCancela;
  if Result = '' then
    begin
    IniciaVazioCampo;
    Result := 'Alterações cancelada!'
    end;
end;

function TFDepisitoCad.RegistroNovo: String;
begin
  Result := VcDeposito.RegistroNovo;
  IniciaVazioCampo;
end;

function TFDepisitoCad.RegistroSalva: String;
begin
  Result := VcDeposito.RegistroSalva;
  if Result = '' then
    begin
    IniciaVazioCampo;
    Result := 'Salvo com sucesso!';
    end;
end;

function TFDepisitoCad.RegistroExclui: String;
begin
  Result := VcDeposito.RegistroExclui;
  if Result = '' then
    begin
    IniciaVazioCampo;
    Result := 'Excluido com sucesso!'
    end;
end;

end.

