unit UPadraoTela;

interface

Uses Vcl.Grids, System.SysUtils, FireDAC.Comp.Client, System.Classes, System.Types,
  Vcl.Graphics, Vcl.Controls;

type
  TCPadraoTela = class
   private
    { private declarations }
    protected
    { protected declarations }
    public
    { public declarations }
    Function AtualizaGrid(PpGrid : TStringGrid; PpOrdem : String; PpWherePadra:Boolean=False) : String;
    Function CarregaGridRegistro(PpGrid : TStringGrid; PpSqlConexao : TFDQuery) : String;
    Function CriaGridTitulo(PpGrid : TStringGrid; PpSqlConexao : TFDQuery; PpListaNomeCampo: String):String;

    Function GridDrawCell(PpGrid : TObject; PpACol, PpARow: Integer; PpRect: TRect; PpState: TGridDrawState) : String;
    Function GridMouseUp(PpGrid : TObject; PpButton: TMouseButton; PpShift: TShiftState; PpX, PpY: Integer; var GridOrdem : String) : Boolean;
    Function GridSelectCell(PpGrid: TObject; PpACol, PpARow: Integer; var PpCanSelect: Boolean) : Boolean;
    published
    { published declarations }
    Constructor Create; // declaração do metodo construtor
    Destructor  Destroy; Override; // declaração do metodo destrutor
  end;

Var
  VcPadraoTela : TCPadraoTela;

implementation

{ TCPadraoTela }


constructor TCPadraoTela.Create;
begin
  //
  inherited;
end;

function TCPadraoTela.AtualizaGrid(PpGrid: TStringGrid; PpOrdem: String; PpWherePadra:Boolean=False): String;
Var
  VpLaco : integer;
  VpWhere : String;
begin
  VpWhere := '';
  if PpWherePadra then
  VpWhere := ' where 1 = 1 ';
  for VpLaco := 0 to PpGrid.ColCount -1 do
  begin
    if PpGrid.Cells[VpLaco,1] <> '' then
      VpWhere := VpWhere + ' and UPPER (' + PpGrid.Cells[VpLaco,0] + ') like UPPER (' +
        QuotedStr('%' + PpGrid.Cells[VpLaco,1] + '%') + ')';
  end;
  if PpOrdem <> '' then
    VpWhere := VpWhere + ' order by ' + PpOrdem;

  Result := VpWhere;
end;

function TCPadraoTela.CarregaGridRegistro(PpGrid: TStringGrid; PpSqlConexao: TFDQuery): String;
var
  VpLaco, VpLinha : integer;
begin
  VpLinha := 2;
  VpLaco  := 0;
  while not PpSqlConexao.Eof do
  begin
    PpGrid.RowCount := VpLinha;
    for VpLaco := 0 to PpGrid.FixedRows do
    begin
      PpGrid.Cells[VpLaco,VpLinha] := PpSqlConexao.FieldByName(PpGrid.Cells[VpLaco,0]).AsString;
    end;
    VpLinha := VpLinha + 1;
    PpSqlConexao.Next;
  end;
  PpGrid.RowCount := VpLinha;
end;

function TCPadraoTela.CriaGridTitulo(PpGrid: TStringGrid;
  PpSqlConexao: TFDQuery; PpListaNomeCampo: String): String;
var
  VpLaco, VpColCount : integer;
  VpListaNomeCampo : TStringList;
begin
  VpListaNomeCampo := TStringList.Create;
  VpListaNomeCampo.CommaText := PpListaNomeCampo;
  VpColCount := -1;
  for VpLaco := 0 to PpSqlConexao.Fields.Count - 1 do
  begin
    if VpListaNomeCampo.Values[PpSqlConexao.Fields[VpLaco].FieldName] <> '' then
    begin
      VpColCount := VpColCount + 1;
      PpGrid.ColCount := VpColCount +1;
      PpGrid.Cells[VpColCount,0] := PpSqlConexao.Fields[VpLaco].FieldName;
      PpGrid.ColWidths[VpColCount] := StrToInt(VpListaNomeCampo.Values[PpSqlConexao.Fields[VpLaco].FieldName]);
    end
    else
      PpSqlConexao.Fields[VpLaco].Visible := False;
  end;
  PpGrid.FixedRows := VpColCount;
  VpListaNomeCampo.Free;
end;

destructor TCPadraoTela.Destroy;
begin

  inherited;
end;

function TCPadraoTela.GridDrawCell(PpGrid : TObject; PpACol, PpARow: Integer;
  PpRect: TRect; PpState: TGridDrawState): String;
begin
  if PpARow = 1 then
  begin
    TStringGrid(PpGrid).Canvas.Brush.Color := clGradientInactiveCaption;
    TStringGrid(PpGrid).Canvas.Font.Color:=clblack;
    TStringGrid(PpGrid).canvas.fillRect(PpRect);
    TStringGrid(PpGrid).canvas.TextOut(PpRect.Left,PpRect.Top,TStringGrid(PpGrid).Cells[PpACol,PpARow]);
  end;
end;

function TCPadraoTela.GridMouseUp(PpGrid: TObject; PpButton: TMouseButton;
  PpShift: TShiftState; PpX, PpY: Integer; var GridOrdem : String): Boolean;
var
  Col, Row: Integer;
begin
  Result := False;
  TStringGrid(TStringGrid(PpGrid)).MouseToCell(PpX, PpY, Col, Row);
  if Row = 0 then
    begin
    if GridOrdem = TStringGrid(PpGrid).Cells[Col,Row] then
      GridOrdem := TStringGrid(PpGrid).Cells[Col,Row] + ' DESC '
    else
      GridOrdem := TStringGrid(PpGrid).Cells[Col,Row];
    Result := True;
    end;
end;

function TCPadraoTela.GridSelectCell(PpGrid: TObject; PpACol, PpARow: Integer; var PpCanSelect: Boolean): Boolean;
begin
  Result := False;
  if PpARow = 1 then
    TStringGrid(PpGrid).Options := TStringGrid(PpGrid).Options + [goEditing]
  else
    TStringGrid(PpGrid).Options := TStringGrid(PpGrid).Options - [goEditing];

  if PpARow > 1  then
    Result := True;
end;

end.
