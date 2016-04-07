unit AUsuarioCad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ToolWin, Vcl.ComCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, FireDAC.Comp.Client;

type
  TFUsuarioCad = class(TForm)
    Panel1: TPanel;
    PCGeral: TPageControl;
    TsUsuario: TTabSheet;
    Splitter1: TSplitter;
    Panel2: TPanel;
    GUsuario: TStringGrid;
    PCampo: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BPesquisa: TSpeedButton;
    ECodigo: TDBEdit;
    EDescricao: TDBEdit;
    procedure FormShow(Sender: TObject);

    Procedure AtualizaUsuarioGrid;
    Procedure CriaGridTitulo;
    Procedure CarregaGridRegistro;
    Procedure VinculaCampoConexao;
    Procedure IniciaVazioCampo;

    Function RegistroNovo : String;
    Function RegistroCancela : String;
    Function RegistroSalva: String;
    Function RegistroExclui: String;
    procedure BPesquisaClick(Sender: TObject);
    procedure ECodigoEnter(Sender: TObject);
    procedure GUsuarioDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure GUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure GUsuarioMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GUsuarioSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(PpCoolBar : TCoolBar);
  end;

var
  VcUsuarioCad : TFUsuarioCad;
  FUsuarioOrdem: String;
  VcCoolBar : TCoolBar;

implementation

Uses  Aprincipal,
      UUsuario;

{$R *.dfm}

constructor TFUsuarioCad.Create(PpCoolBar: TCoolBar);
begin
  inherited Create(nil);
  VcCoolBar := PpCoolBar;
end;

procedure TFUsuarioCad.FormShow(Sender: TObject);
begin
  VcUsuario := TCUsuario.Create;
  VcUsuario.UsuarioCriaQuery;
  VcUsuario.UsuarioAtualizaSQL('');
  CriaGridTitulo;
  CarregaGridRegistro;
  VinculaCampoConexao;
  IniciaVazioCampo;
  GUsuario.Options := GUsuario.Options + [goColSizing];
  GUsuario.Options := GUsuario.Options + [goColMoving];
end;

procedure TFUsuarioCad.GUsuarioDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  if ARow = 1 then
  begin
    GUsuario.Canvas.Brush.Color := clGradientInactiveCaption;
    GUsuario.Canvas.Font.Color:=clblack;
    GUsuario.canvas.fillRect(Rect);
    GUsuario.canvas.TextOut(Rect.Left,Rect.Top,GUsuario.Cells[ACol,ARow]);
  end;
end;

procedure TFUsuarioCad.GUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    AtualizaUsuarioGrid;
end;

procedure TFUsuarioCad.GUsuarioMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Col, Row: Integer;
begin
  GUsuario.MouseToCell(X, Y, Col, Row);
  if Row = 0 then
    begin
    if FUsuarioOrdem = GUsuario.Cells[Col,Row] then
      FUsuarioOrdem := GUsuario.Cells[Col,Row] + ' DESC '
    else
      FUsuarioOrdem := GUsuario.Cells[Col,Row];
    AtualizaUsuarioGrid;
    end;
end;

procedure TFUsuarioCad.GUsuarioSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  if ARow = 1 then
    GUsuario.Options := GUsuario.Options + [goEditing]
  else
    GUsuario.Options := GUsuario.Options - [goEditing];

  if ARow > 1  then
    VcUsuario.UsuarioAtualizaCampo(GUsuario.Cells[0,ARow]);
end;

procedure TFUsuarioCad.IniciaVazioCampo;
begin
  VcUsuario.UsuarioAtualizaCampo('-1');
  VcUsuario.VcDSUsuario.DataSet.FieldByName('SEQUENCIA').focusControl;
end;

procedure TFUsuarioCad.CriaGridTitulo;
var
  VpLaco, VpColCount : integer;
  VpSqlConexao : TFDQuery;
begin
  VpSqlConexao := VcUsuario.UsuarioRetornaQueryGrid;
  VpColCount := 0;
  for VpLaco := 0 to VpSqlConexao.Fields.Count - 1 do
  begin
    if VpSqlConexao.Fields[VpLaco].FieldName = 'SEQUENCIA' then
    begin
      VpColCount := VpColCount;
      GUsuario.ColCount := VpColCount +1;
      GUsuario.Cells[VpLaco,0] := 'SEQUENCIA';
      GUsuario.ColWidths[VpLaco] := 60;
    end
    else if VpSqlConexao.Fields[VpLaco].FieldName = 'DESCRICAO' then
    begin
      VpColCount := VpColCount + 1;
      GUsuario.ColCount := VpColCount +1;
      GUsuario.Cells[VpLaco,0] := 'DESCRICAO';
      GUsuario.ColWidths[VpLaco] := 500;
    end
    else
      VpSqlConexao.Fields[VpLaco].Visible := False;
  end;
  GUsuario.FixedRows := VpColCount;

end;

procedure TFUsuarioCad.ECodigoEnter(Sender: TObject);
begin
  AtualizaUsuarioGrid;
end;

procedure TFUsuarioCad.AtualizaUsuarioGrid;
Var
  VpLaco : integer;
  VpWhere : String;
begin
  VpWhere := ' where 1 = 1 ';
  for VpLaco := 0 to GUsuario.ColCount -1 do
  begin
    if GUsuario.Cells[VpLaco,1] <> '' then
      VpWhere := VpWhere + ' and UPPER (' + GUsuario.Cells[VpLaco,0] + ') like UPPER (' +
        QuotedStr('%' + GUsuario.Cells[VpLaco,1] + '%') + ')';
  end;
  if FUsuarioOrdem <> '' then
    VpWhere := VpWhere + ' order by ' + FUsuarioOrdem;

  VcUsuario.UsuarioAtualizaSQL(VpWhere);
  CarregaGridRegistro;
end;

procedure TFUsuarioCad.BPesquisaClick(Sender: TObject);
begin
  VcCoolBar.Bands[3].Text := VcUsuario.UsuarioAtualizaCampo(ECodigo.Text);
end;

procedure TFUsuarioCad.CarregaGridRegistro;
var
  VpLaco, VpLinha : integer;
  VpSqlConexao : TFDQuery;
begin
  VpLinha := 2;
  VpSqlConexao := VcUsuario.UsuarioRetornaQueryGrid;
  while not VpSqlConexao.Eof do
  begin
    GUsuario.RowCount := VpLinha;
    for VpLaco := 0 to GUsuario.FixedRows do
    begin
      GUsuario.Cells[VpLaco,VpLinha] := VpSqlConexao.FieldByName(GUsuario.Cells[VpLaco,0]).AsString;;
    end;
    VpLinha := VpLinha + 1;
    VpSqlConexao.Next;
  end;
  GUsuario.RowCount := VpLinha;
end;

procedure TFUsuarioCad.VinculaCampoConexao;
Var
  VpLaco : integer;
begin
  for VpLaco := 0 to ComponentCount -1 do
  begin
    if Components[VpLaco] is TDBEdit then
      TDBEdit(Components[VpLaco]).DataSource := VcUsuario.VcDSUsuario;
  end;
end;

function TFUsuarioCad.RegistroCancela: String;
begin
  Result := VcUsuario.RegistroCancela;
  if Result = '' then
    begin
    IniciaVazioCampo;
    Result := 'Alterações cancelada!'
    end;
end;

function TFUsuarioCad.RegistroExclui: String;
begin
  Result := VcUsuario.RegistroExclui;
  if Result = '' then
    begin
    IniciaVazioCampo;
    Result := 'Usuario excluido com sucesso!'
    end;
end;

function TFUsuarioCad.RegistroNovo: String;
begin
  Result := VcUsuario.RegistroNovo;
  IniciaVazioCampo;
end;

function TFUsuarioCad.RegistroSalva: String;
begin
  Result := VcUsuario.RegistroSalva;
  if Result = '' then
    begin
    IniciaVazioCampo;
    Result := 'Usuario salvo com sucesso!';
    end;
end;

end.
