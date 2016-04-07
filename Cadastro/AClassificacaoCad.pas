unit AClassificacaoCad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, FireDAC.Comp.Client,
  Vcl.Buttons, Vcl.Grids, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFClassificacaoCad = class(TForm)
    Panel1: TPanel;
    PCGeral: TPageControl;
    TsClassificacao : TTabSheet;
    Splitter1: TSplitter;
    Panel2: TPanel;
    PCampo: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BPesquisa: TSpeedButton;
    ECodigo: TDBEdit;
    EDescricao: TDBEdit;
    GClassificacao: TStringGrid;

    Function CarregaFiltro : String;

    Function RegistroNovo : String;
    Function RegistroCancela : String;
    Function RegistroSalva: String;
    Function RegistroExclui: String;

    Procedure AtualizaClassificacaoGrid;
    Procedure CriaGridTitulo;
    Procedure CarregaGridRegistro;
    Procedure VinculaCampoConexao;
    Procedure IniciaVazioCampo;

    procedure BPesquisaClick(Sender: TObject);
    procedure ECodigoEnter(Sender: TObject);
    procedure GClassificacaoKeyPress(Sender: TObject; var Key: Char);
    procedure GClassificacaoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GClassificacaoSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure GClassificacaoDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(PpCoolBar : TCoolBar);
  end;

var
  VcClassificacaoCad : TFClassificacaoCad;
  FClassificacaoOrdem: String;
  VcCoolBar : TCoolBar;

implementation

Uses
  UClassificacaoCad, APrincipal;

{$R *.dfm}

{ TFClassificacaoCad }

procedure TFClassificacaoCad.AtualizaClassificacaoGrid;
Var
  VpLaco : integer;
  VpWhere : String;
begin
  VpWhere := ' where 1 = 1 ';
  for VpLaco := 0 to GClassificacao.ColCount -1 do
  begin
    if GClassificacao.Cells[VpLaco,1] <> '' then
      VpWhere := VpWhere + ' and UPPER (' + GClassificacao.Cells[VpLaco,0] + ') like UPPER (' +
        QuotedStr('%' + GClassificacao.Cells[VpLaco,1] + '%') + ')';
  end;
  if FClassificacaoOrdem <> '' then
    VpWhere := VpWhere + ' order by ' + FClassificacaoOrdem;

  VcClassificacao.ClassificacaoAtualizaSQL(VpWhere);
  CarregaGridRegistro;
end;

procedure TFClassificacaoCad.BPesquisaClick(Sender: TObject);
begin
  VcCoolBar.Bands[3].Text := VcClassificacao.ClassificacaoAtualizaCampo(ECodigo.Text);
end;

function TFClassificacaoCad.CarregaFiltro: String;
begin
  Result := VcClassificacao.VcDSClassificacao.DataSet.FieldByName('SEQUENCIA').AsString;
end;

procedure TFClassificacaoCad.CarregaGridRegistro;
var
  VpLaco, VpLinha : integer;
  VpSqlConexao : TFDQuery;
begin
  VpLinha := 2;
  VpLaco  := 0;
  VpSqlConexao := VcClassificacao.ClassificacaoRetornaQueryGrid;
  while not VpSqlConexao.Eof do
  begin
    GClassificacao.RowCount := VpLinha;
    for VpLaco := 0 to GClassificacao.FixedRows do
    begin
      GClassificacao.Cells[VpLaco,VpLinha] := VpSqlConexao.FieldByName(GClassificacao.Cells[VpLaco,0]).AsString;
    end;
    VpLinha := VpLinha + 1;
    VpSqlConexao.Next;
  end;
  GClassificacao.RowCount := VpLinha;
end;

constructor TFClassificacaoCad.Create(PpCoolBar: TCoolBar);
begin
  inherited Create(nil);
  VcCoolBar := PpCoolBar;
end;

procedure TFClassificacaoCad.CriaGridTitulo;
var
  VpLaco, VpColCount : integer;
  VpSqlConexao : TFDQuery;
begin
  VpSqlConexao := VcClassificacao.ClassificacaoRetornaQueryGrid;
  VpColCount := 0;
  for VpLaco := 0 to VpSqlConexao.Fields.Count - 1 do
  begin
    if VpSqlConexao.Fields[VpLaco].FieldName = 'SEQUENCIA' then
    begin
      VpColCount := VpColCount;
      GClassificacao.ColCount := VpColCount + 1;
      GClassificacao.Cells[VpLaco,0] := 'SEQUENCIA';
      GClassificacao.ColWidths[VpLaco] := 60;
    end
    else if VpSqlConexao.Fields[VpLaco].FieldName = 'DESCRICAO' then
    begin
      VpColCount := VpColCount + 1;
      GClassificacao.ColCount := VpColCount +1;
      GClassificacao.Cells[VpLaco,0] := 'DESCRICAO';
      GClassificacao.ColWidths[VpLaco] := 500;
    end
    else
      VpSqlConexao.Fields[VpLaco].Visible := False;
  end;
  GClassificacao.FixedRows := VpColCount;
end;

procedure TFClassificacaoCad.ECodigoEnter(Sender: TObject);
begin
  AtualizaClassificacaoGrid;
end;

procedure TFClassificacaoCad.FormShow(Sender: TObject);
begin
  VcClassificacao := TCClassificacao.Create;
  VcClassificacao.ClassificacaoCriaQuery;
  VcClassificacao.ClassificacaoAtualizaSQL('');
  CriaGridTitulo;
  CarregaGridRegistro;
  VinculaCampoConexao;
  IniciaVazioCampo;
  GClassificacao.Options := GClassificacao.Options + [goColSizing];
  GClassificacao.Options := GClassificacao.Options + [goColMoving];
end;

procedure TFClassificacaoCad.GClassificacaoDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  if ARow = 1 then
  begin
    GClassificacao.Canvas.Brush.Color := clGradientInactiveCaption;
    GClassificacao.Canvas.Font.Color:=clblack;
    GClassificacao.canvas.fillRect(Rect);
    GClassificacao.canvas.TextOut(Rect.Left,Rect.Top,GClassificacao.Cells[ACol,ARow]);
  end;
end;

procedure TFClassificacaoCad.GClassificacaoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    AtualizaClassificacaoGrid;
end;

procedure TFClassificacaoCad.GClassificacaoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Col, Row: Integer;
begin
  GClassificacao.MouseToCell(X, Y, Col, Row);
  if Row = 0 then
    begin
    if FClassificacaoOrdem = GClassificacao.Cells[Col,Row] then
      FClassificacaoOrdem := GClassificacao.Cells[Col,Row] + ' DESC '
    else
      FClassificacaoOrdem := GClassificacao.Cells[Col,Row];
    AtualizaClassificacaoGrid;
    end;
end;

procedure TFClassificacaoCad.GClassificacaoSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if ARow = 1 then
    GClassificacao.Options := GClassificacao.Options + [goEditing]
  else
    GClassificacao.Options := GClassificacao.Options - [goEditing];

  if ARow > 1  then
    VcClassificacao.ClassificacaoAtualizaCampo(GClassificacao.Cells[0,ARow]);
end;

procedure TFClassificacaoCad.IniciaVazioCampo;
begin
  VcClassificacao.ClassificacaoAtualizaCampo('-1');
  VcClassificacao.VcDSClassificacao.DataSet.FieldByName('SEQUENCIA').focusControl;
end;

function TFClassificacaoCad.RegistroCancela: String;
begin
  Result := VcClassificacao.RegistroCancela;
  if Result = '' then
    begin
    IniciaVazioCampo;
    Result := 'Alterações cancelada!'
    end;
end;

function TFClassificacaoCad.RegistroExclui: String;
begin
  Result := VcClassificacao.RegistroExclui;
  if Result = '' then
    begin
    IniciaVazioCampo;
    Result := 'Excluido com sucesso!'
    end;
end;

function TFClassificacaoCad.RegistroNovo: String;
begin
  Result := VcClassificacao.RegistroNovo;
  IniciaVazioCampo;
end;

function TFClassificacaoCad.RegistroSalva: String;
begin
  Result := VcClassificacao.RegistroSalva;
  if Result = '' then
    begin
    IniciaVazioCampo;
    Result := 'Salvo com sucesso!';
    end;
end;

procedure TFClassificacaoCad.VinculaCampoConexao;
Var
  VpLaco : integer;
begin
  for VpLaco := 0 to ComponentCount -1 do
  begin
    if Components[VpLaco] is TDBEdit then
      TDBEdit(Components[VpLaco]).DataSource := VcClassificacao.VcDSClassificacao;
  end;
end;

end.
