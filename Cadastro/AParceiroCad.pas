unit AParceiroCad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, FireDAC.Comp.Client,
  Vcl.Buttons, Vcl.Grids, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFParceiroCad = class(TForm)
    Panel1: TPanel;
    PCGeral: TPageControl;
    TsParceiro: TTabSheet;
    Splitter1: TSplitter;
    Panel2: TPanel;
    GParceiro: TStringGrid;
    Panel: TPanel;
    GBParceiro: TGroupBox;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBMemo1: TDBMemo;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    TsCliente: TTabSheet;
    Label10: TLabel;
    Panel3: TPanel;
    GCliente: TStringGrid;
    Splitter2: TSplitter;
    GBCliente: TGroupBox;
    SpeedButton3: TSpeedButton;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBMemo2: TDBMemo;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    TsFornecedor: TTabSheet;
    Panel5: TPanel;
    GFornecedor: TStringGrid;
    Label26: TLabel;
    GBFornecedor: TGroupBox;
    SpeedButton5: TSpeedButton;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    DBRadioGroup3: TDBRadioGroup;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBMemo3: TDBMemo;
    DBLookupComboBox11: TDBLookupComboBox;
    DBLookupComboBox12: TDBLookupComboBox;
    Splitter3: TSplitter;
    TsEndereco: TTabSheet;
    Panel7: TPanel;
    GEndereço: TStringGrid;
    Panel8: TPanel;
    Label36: TLabel;
    SpeedButton6: TSpeedButton;
    DBEdit21: TDBEdit;
    Splitter4: TSplitter;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    DBLookupComboBox15: TDBLookupComboBox;
    DBEdit22: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBLookupComboBox16: TDBLookupComboBox;
    TsContato: TTabSheet;
    Panel9: TPanel;
    GContato: TStringGrid;
    PContato: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    DBEdit23: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit32: TDBEdit;
    Splitter5: TSplitter;
    Label46: TLabel;
    DBEdit31: TDBEdit;
    Label48: TLabel;
    DBEdit33: TDBEdit;
    Label51: TLabel;
    DBEdit34: TDBEdit;
    Label52: TLabel;
    DBEdit35: TDBEdit;
    Label53: TLabel;
    DBEdit36: TDBEdit;
    Label54: TLabel;
    DBEdit37: TDBEdit;
    Label55: TLabel;
    DBEdit38: TDBEdit;
    PDATAABERTURA: TDateTimePicker;
    CDATAABERTURA: TDateTimePicker;
    FDATAABERTURA: TDateTimePicker;
    PParceiro: TPanel;
    BPesquisa: TSpeedButton;
    ECodigoParceiro: TDBEdit;
    Label1: TLabel;
    PDATACADASTRO: TDateTimePicker;
    Label21: TLabel;
    PCliente: TPanel;
    SpeedButton2: TSpeedButton;
    ECodigoCliente: TDBEdit;
    Label11: TLabel;
    CDATACADASTRO: TDateTimePicker;
    Label22: TLabel;
    Label23: TLabel;
    CDATASUSPENSO: TDateTimePicker;
    PFornecedor: TPanel;
    SpeedButton4: TSpeedButton;
    ECodigoFornecedor: TDBEdit;
    Label25: TLabel;
    FDATACADASTRO: TDateTimePicker;
    FDATASUSPENSO: TDateTimePicker;
    Label24: TLabel;
    RegiaoSeq: TDBEdit;
    ClassificacaoSeq: TDBEdit;
    DsRegiao: TEdit;
    DsClassificacao: TEdit;

    Function  RetornaFiltro : String;
    Procedure FiltroBuscaSequencia(Sender: TObject; var Key: Char);
    Procedure ControlaPageControl(PpAtiva:Boolean);

    Procedure ParceiroAtualizaGrid;
    Procedure ParceiroCarregaGridRegistro;
    Procedure ParceiroCriaGridTitulo;
    Procedure ParceiroVinculaCampoConexao;
    Procedure ParceiroShow;
    Function  ParceiroAtualizaCampo(PpSequencia:String) : String;
    Procedure ParceiroAtualizaCampoData;

    Procedure ClienteCarregaGridRegistro;
    Procedure ClienteCriaGridTitulo;
    Procedure ClienteVinculaCampoConexao;
    Procedure ClienteAtualizaGrid;
    Procedure ClienteShow;
    Function  ClienteAtualizaCampo(PpSequencia:String) : String;
    Procedure ClienteAtualizaCampoData;

    Procedure FornecedorCarregaGridRegistro;
    Procedure FornecedorCriaGridTitulo;
    Procedure FornecedorVinculaCampoConexao;
    Procedure FornecedorAtualizaGrid;
    Procedure FornecedorShow;
    Function  FornecedorAtualizaCampo(PpSequencia:String) : String;
    Procedure FornecedorAtualizaCampoData;

    Procedure ContatoCarregaGridRegistro;
    Procedure ContatoCriaGridTitulo;
    Procedure ContatoVinculaCampoConexao;
    Procedure ContatoAtualizaGrid;
    Procedure ContatoShow;

    Function RegistroNovo : String;
    Function RegistroCancela : String;
    Function RegistroSalva: String;
    Function RegistroExclui: String;

    Procedure IniciaVazioCampo(PpRegistroTag:Integer);
    procedure GParceiroDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure GParceiroKeyPress(Sender: TObject; var Key: Char);
    procedure GParceiroMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GParceiroSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure GClienteDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure GClienteKeyPress(Sender: TObject; var Key: Char);
    procedure GClienteMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GClienteSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure BPesquisaClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PCGeralChanging(Sender: TObject; var AllowChange: Boolean);
    procedure PCGeralChange(Sender: TObject);
    procedure ECodigoParceiroEnter(Sender: TObject);
    procedure ECodigoClienteEnter(Sender: TObject);
    procedure GFornecedorDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure GFornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure GFornecedorMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GFornecedorSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ECodigoFornecedorEnter(Sender: TObject);
    procedure GContatoDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure GContatoKeyPress(Sender: TObject; var Key: Char);
    procedure GContatoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GContatoSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure PDATACADASTROChange(Sender: TObject);
    procedure PDATAABERTURAChange(Sender: TObject);
    procedure CDATACADASTROChange(Sender: TObject);
    procedure CDATASUSPENSOChange(Sender: TObject);
    procedure CDATAABERTURAChange(Sender: TObject);
    procedure FDATACADASTROChange(Sender: TObject);
    procedure FDATASUSPENSOChange(Sender: TObject);
    procedure FDATAABERTURAChange(Sender: TObject);
    procedure ClassificacaoSeqExit(Sender: TObject);
    procedure ClassificacaoSeqKeyPress(Sender: TObject; var Key: Char);
    procedure RegiaoSeqChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(PpCoolBar : TCoolBar);
  end;

var
  VCParceiroCad : TFParceiroCad;
  VcCoolBar : TCoolBar;
  FParceiroOrdem, FFornecedorOrdem,
  FClienteOrdem, FContatoOrdem: String;
  FControlaPageControl : Boolean;
  FCampoFiltro : TDBEdit;

implementation

Uses
  UParceiroCad, APrincipal;

{$R *.dfm}

{ TFParceiroCad }

procedure TFParceiroCad.ClienteShow;
begin
  VcParceiro.ClienteCriaQuery;
  ClienteCriaGridTitulo;
  ClienteVinculaCampoConexao;
  GCliente.Options  := GCliente.Options + [goColSizing];
  GCliente.Options  := GCliente.Options + [goColMoving];
end;

procedure TFParceiroCad.CDATAABERTURAChange(Sender: TObject);
begin
VcParceiro.ClienteInsertEdit;
VcParceiro.VcDSCliente.DataSet.FieldByName('DATAABERTURA').AsDateTime := CDATAABERTURA.DateTime;
end;

procedure TFParceiroCad.CDATACADASTROChange(Sender: TObject);
begin
VcParceiro.ClienteInsertEdit;
VcParceiro.VcDSCliente.DataSet.FieldByName('DATACADASTRO').AsDateTime := CDATACADASTRO.DateTime;
end;

procedure TFParceiroCad.CDATASUSPENSOChange(Sender: TObject);
begin
VcParceiro.ClienteInsertEdit;
VcParceiro.VcDSCliente.DataSet.FieldByName('DATASUSPENSO').AsDateTime := CDATASUSPENSO.DateTime;
end;

procedure TFParceiroCad.ClassificacaoSeqExit(Sender: TObject);
begin
  if ClassificacaoSeq.Text <> '' then
    DsClassificacao.Text  := VcParceiro.ParceiroRetornaDsClassificacao(ClassificacaoSeq.Text);
end;

procedure TFParceiroCad.ClassificacaoSeqKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    ClassificacaoSeq.Text := FPrincipal.RetornaSequencia(ClassificacaoSeq);
end;

function TFParceiroCad.ClienteAtualizaCampo(PpSequencia: String): String;
begin
  VcParceiro.ClienteAtualizaCampo(PpSequencia);
  ClienteAtualizaCampoData;
end;

procedure TFParceiroCad.ClienteAtualizaCampoData;
var
  VpLaco : Integer;
begin
  for VpLaco := 0 to VCParceiroCad.ComponentCount -1 do
  begin
    if (VCParceiroCad.Components[VpLaco].GetParentComponent = VCParceiroCad.PCliente) or
       (VCParceiroCad.Components[VpLaco].GetParentComponent = VCParceiroCad.GBCliente) then
    begin
      if (VCParceiroCad.Components[VpLaco] is TDateTimePicker) then
        begin
        TDateTimePicker(VCParceiroCad.Components[VpLaco]).DateTime :=
                        VcParceiro.VcDSCliente.DataSet.FieldByName(copy(TDateTimePicker(VCParceiroCad.Components[VpLaco]).Name,2)).AsDateTime;
        end;
    end;
  end;
end;

procedure TFParceiroCad.ClienteAtualizaGrid;
Var
  VpLaco : integer;
  VpWhere : String;
begin
  VpWhere := ' ';
  for VpLaco := 0 to GCliente.ColCount -1 do
  begin
    if GCliente.Cells[VpLaco,1] <> '' then
      VpWhere := VpWhere + ' and UPPER (' + GCliente.Cells[VpLaco,0] + ') like UPPER (' +
        QuotedStr('%' + GCliente.Cells[VpLaco,1] + '%') + ')';
  end;
  if FClienteOrdem <> '' then
    VpWhere := VpWhere + ' order by ' + FClienteOrdem;

  VcParceiro.ClienteAtualizaSQL(VpWhere);
  ClienteCarregaGridRegistro;
end;


function TFParceiroCad.ParceiroAtualizaCampo(PpSequencia: String): String;
begin
  VCParceiro.ParceiroAtualizaCampo(PpSequencia);
  ParceiroAtualizaCampoData;
end;

procedure TFParceiroCad.ParceiroAtualizaCampoData;
var
  VpLaco : Integer;
begin
  for VpLaco := 0 to VCParceiroCad.ComponentCount -1 do
  begin
    if (VCParceiroCad.Components[VpLaco].GetParentComponent = VCParceiroCad.PParceiro) or
       (VCParceiroCad.Components[VpLaco].GetParentComponent = VCParceiroCad.GBParceiro) then
    begin
      if (VCParceiroCad.Components[VpLaco] is TDateTimePicker) then
        begin
        TDateTimePicker(VCParceiroCad.Components[VpLaco]).DateTime :=
                VcParceiro.VcDSParceiro.DataSet.FieldByName(copy(TDateTimePicker(VCParceiroCad.Components[VpLaco]).Name,2)).AsDateTime;
        end;
    end;
  end;
end;

procedure TFParceiroCad.ParceiroAtualizaGrid;
Var
  VpLaco : integer;
  VpWhere : String;
begin
  VpWhere := ' where 1 = 1 ';
  for VpLaco := 0 to GParceiro.FixedRows -1 do
  begin
    if GParceiro.Cells[VpLaco,1] <> '' then
      VpWhere := VpWhere + ' and UPPER (' + GParceiro.Cells[VpLaco,0] + ') like UPPER (' +
        QuotedStr('%' + GParceiro.Cells[VpLaco,1] + '%') + ')';
  end;
  if FParceiroOrdem <> '' then
    VpWhere := VpWhere + ' order by ' + FParceiroOrdem;

  VcParceiro.ParceiroAtualizaSQL(VpWhere);
  ParceiroCarregaGridRegistro;
end;

procedure TFParceiroCad.BPesquisaClick(Sender: TObject);
begin
  VcCoolBar.Bands[3].Text := ParceiroAtualizaCampo(ECodigoParceiro.Text);
  if ECodigoParceiro.Text <> '' then
    ControlaPageControl(True)
  else
    ControlaPageControl(False);
end;

procedure TFParceiroCad.ParceiroCarregaGridRegistro;
var
  VpLaco, VpLinha : integer;
  VpSqlConexao : TFDQuery;
begin
  VpLinha := 2;
  VpLaco  := 0;
  VpSqlConexao := VcParceiro.ParceiroRetornaQueryGrid;
  while not VpSqlConexao.Eof do
  begin
    GParceiro.RowCount := VpLinha;
    for VpLaco := 0 to GParceiro.FixedRows do
    begin
      GParceiro.Cells[VpLaco,VpLinha] := VpSqlConexao.FieldByName(GParceiro.Cells[VpLaco,0]).AsString;
    end;
    VpLinha := VpLinha + 1;
    VpSqlConexao.Next;
  end;
  GParceiro.RowCount := VpLinha;
end;

procedure TFParceiroCad.ClienteCarregaGridRegistro;
var
  VpLaco, VpLinha : integer;
  VpSqlConexao : TFDQuery;
begin
  VpLinha := 2;
  VpLaco := 0;
  VpSqlConexao := VcParceiro.ClienteRetornaQueryGrid;
  while not VpSqlConexao.Eof do
  begin
    GCliente.RowCount := VpLinha;
    for VpLaco := 0 to GCliente.FixedRows do
    begin
      GCliente.Cells[VpLaco,VpLinha] := VpSqlConexao.FieldByName(GCliente.Cells[VpLaco,0]).AsString;
    end;
    VpLinha := VpLinha + 1;
    VpSqlConexao.Next;
  end;
  GCliente.RowCount := VpLinha;
end;

procedure TFParceiroCad.ClienteCriaGridTitulo;
var
  VpLaco, VpColCount : integer;
  VpSqlConexao : TFDQuery;
begin
  VpSqlConexao := VcParceiro.ClienteRetornaQueryGrid;
  VpColCount := 0;
  for VpLaco := 0 to VpSqlConexao.Fields.Count - 1 do
  begin
    if VpSqlConexao.Fields[VpLaco].FieldName = 'SEQUENCIA' then
    begin
      VpColCount := VpColCount;
      GCliente.ColCount := VpColCount + 1;
      GCliente.Cells[VpColCount,0] := 'SEQUENCIA';
      GCliente.ColWidths[VpColCount] := 60;
    end
    else if VpSqlConexao.Fields[VpLaco].FieldName = 'NOME' then
    begin
      VpColCount := VpColCount + 1;
      GCliente.ColCount := VpColCount +1;
      GCliente.Cells[VpColCount,0] := 'NOME';
      GCliente.ColWidths[VpColCount] := 500;
    end
    else
      VpSqlConexao.Fields[VpLaco].Visible := False;
  end;
  GCliente.FixedRows := VpColCount;
end;

procedure TFParceiroCad.ClienteVinculaCampoConexao;
Var
  VpLaco : integer;
begin
  for VpLaco := 0 to ComponentCount -1 do
  begin
    if (Components[VpLaco].GetParentComponent = PCliente) or
       (Components[VpLaco].GetParentComponent = GBCliente) then
    begin
      if (Components[VpLaco] is TDBEdit) then
        TDBEdit(Components[VpLaco]).DataSource := VcParceiro.VcDSCliente;
    end;
  end;
end;

procedure TFParceiroCad.ContatoAtualizaGrid;
Var
  VpLaco : integer;
  VpWhere : String;
begin
  VpWhere := ' ';
  for VpLaco := 0 to GContato.ColCount -1 do
  begin
    if GContato.Cells[VpLaco,1] <> '' then
      VpWhere := VpWhere + ' and UPPER (' + GContato.Cells[VpLaco,0] + ') like UPPER (' +
        QuotedStr('%' + GContato.Cells[VpLaco,1] + '%') + ')';
  end;
  if FContatoOrdem <> '' then
    VpWhere := VpWhere + ' order by ' + FContatoOrdem;

  VcParceiro.ContatoAtualizaSQL(VpWhere);
  ContatoCarregaGridRegistro;
end;

procedure TFParceiroCad.ContatoCarregaGridRegistro;
var
  VpLaco, VpLinha : integer;
  VpSqlConexao : TFDQuery;
begin
  VpLinha := 2;
  VpLaco := 0;
  VpSqlConexao := VcParceiro.ContatoRetornaQueryGrid;
  while not VpSqlConexao.Eof do
  begin
    GContato.RowCount := VpLinha;
    for VpLaco := 0 to GContato.FixedRows do
    begin
      GContato.Cells[VpLaco,VpLinha] := VpSqlConexao.FieldByName(GContato.Cells[VpLaco,0]).AsString;
    end;
    VpLinha := VpLinha + 1;
    VpSqlConexao.Next;
  end;
  GContato.RowCount := VpLinha;
end;

procedure TFParceiroCad.ContatoCriaGridTitulo;
var
  VpLaco, VpColCount : integer;
  VpSqlConexao : TFDQuery;
begin
  VpSqlConexao := VcParceiro.ContatoRetornaQueryGrid;
  VpColCount := 0;
  for VpLaco := 0 to VpSqlConexao.Fields.Count - 1 do
  begin
    if VpSqlConexao.Fields[VpLaco].FieldName = 'SEQUENCIA' then
    begin
      VpColCount := VpColCount;
      GContato.ColCount := VpColCount + 1;
      GContato.Cells[VpColCount,0] := 'SEQUENCIA';
      GContato.ColWidths[VpColCount] := 60;
    end
    else if VpSqlConexao.Fields[VpLaco].FieldName = 'DESCRICAO' then
    begin
      VpColCount := VpColCount + 1;
      GContato.ColCount := VpColCount +1;
      GContato.Cells[VpColCount,0] := 'DESCRICAO';
      GContato.ColWidths[VpColCount] := 500;
    end
    else
      VpSqlConexao.Fields[VpLaco].Visible := False;
  end;
  GContato.FixedRows := VpColCount;
end;

procedure TFParceiroCad.ContatoShow;
begin
  VcParceiro.ContatoCriaQuery;
  ContatoCriaGridTitulo;
  ContatoVinculaCampoConexao;
  GContato.Options  := GContato.Options + [goColSizing];
  GContato.Options  := GContato.Options + [goColMoving];
end;

procedure TFParceiroCad.ContatoVinculaCampoConexao;
Var
  VpLaco : integer;
begin
  for VpLaco := 0 to ComponentCount -1 do
  begin
    if (Components[VpLaco].GetParentComponent = PContato) then
    begin
      if (Components[VpLaco] is TDBEdit) then
        TDBEdit(Components[VpLaco]).DataSource := VcParceiro.VcDSContato;
    end;
  end;
end;

procedure TFParceiroCad.ControlaPageControl(PpAtiva:Boolean);
begin
  FControlaPageControl := PpAtiva;
end;

constructor TFParceiroCad.Create(PpCoolBar: TCoolBar);
begin
  inherited Create(nil);
  VcCoolBar := PpCoolBar;
end;

procedure TFParceiroCad.RegiaoSeqChange(Sender: TObject);
begin
  if RegiaoSeq.Text <> '' then
    DsRegiao.Text := VCParceiro.ParceiroRetornaDsRegiao(RegiaoSeq.Text)
  else
    DsRegiao.Text := '';
end;

procedure TFParceiroCad.PDATAABERTURAChange(Sender: TObject);
begin
VcParceiro.ParceiroInsertEdit;
VcParceiro.VcDSParceiro.DataSet.FieldByName('DATAABERTURA').AsDateTime := PDATAABERTURA.DateTime;
end;

procedure TFParceiroCad.PDATACADASTROChange(Sender: TObject);
begin
VcParceiro.ParceiroInsertEdit;
VcParceiro.VcDSParceiro.DataSet.FieldByName('DATACADASTRO').AsDateTime := PDATACADASTRO.DateTime;
end;

procedure TFParceiroCad.ECodigoFornecedorEnter(Sender: TObject);
begin
  FornecedorAtualizaGrid;
end;

procedure TFParceiroCad.ECodigoClienteEnter(Sender: TObject);
begin
  clienteAtualizaGrid;
end;

procedure TFParceiroCad.ECodigoParceiroEnter(Sender: TObject);
begin
  ParceiroAtualizaGrid;
end;

procedure TFParceiroCad.FDATAABERTURAChange(Sender: TObject);
begin
VcParceiro.FornecedorInsertEdit;
VcParceiro.VcDSFornecedor.DataSet.FieldByName('DATAABERTURA').AsDateTime := FDATAABERTURA.DateTime;
end;

procedure TFParceiroCad.FDATACADASTROChange(Sender: TObject);
begin
VcParceiro.FornecedorInsertEdit;
VcParceiro.VcDSFornecedor.DataSet.FieldByName('DATACADASTRO').AsDateTime := FDATACADASTRO.DateTime;
end;

procedure TFParceiroCad.FDATASUSPENSOChange(Sender: TObject);
begin
VcParceiro.FornecedorInsertEdit;
VcParceiro.VcDSFornecedor.DataSet.FieldByName('DATASUSPENSO').AsDateTime := FDATASUSPENSO.DateTime;
end;

procedure TFParceiroCad.FiltroBuscaSequencia(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
    RegiaoSeq.Text := FPrincipal.RetornaSequencia(Sender);
    VcParceiro.ParceiroInsertEdit;
    FCampoFiltro :=  TDBEdit(Sender);
  end;
end;

procedure TFParceiroCad.FormShow(Sender: TObject);
var
  VpLaco : integer;
begin
  PCGeral.ActivePageIndex := 0;
  ControlaPageControl(False);
  VcParceiro := TCParceiro.Create;
  VcParceiro.ParceiroCriaQuery;
  VcParceiro.ParceiroAtualizaSQL('');
  Parceiroshow;
  ClienteShow;
  FornecedorShow;
  ContatoShow;
  IniciaVazioCampo(0);
end;

function TFParceiroCad.FornecedorAtualizaCampo(PpSequencia: String): String;
begin
  VcParceiro.FornecedorAtualizaCampo(PpSequencia);
  FornecedorAtualizaCampoData;
end;

procedure TFParceiroCad.FornecedorAtualizaCampoData;
var
  VpLaco : Integer;
begin
  for VpLaco := 0 to VCParceiroCad.ComponentCount -1 do
  begin
    if (VCParceiroCad.Components[VpLaco].GetParentComponent = VCParceiroCad.PFornecedor) or
       (VCParceiroCad.Components[VpLaco].GetParentComponent = VCParceiroCad.GBFornecedor) then
    begin
      if (VCParceiroCad.Components[VpLaco] is TDateTimePicker) then
        begin
        TDateTimePicker(VCParceiroCad.Components[VpLaco]).DateTime :=
                        VcParceiro.VcDSFornecedor.DataSet.FieldByName(copy(TDateTimePicker(VCParceiroCad.Components[VpLaco]).Name,2)).AsDateTime;
        end;
    end;
  end;
end;

procedure TFParceiroCad.FornecedorAtualizaGrid;
Var
  VpLaco : integer;
  VpWhere : String;
begin
  VpWhere := ' ';
  for VpLaco := 0 to GFornecedor.ColCount -1 do
  begin
    if GFornecedor.Cells[VpLaco,1] <> '' then
      VpWhere := VpWhere + ' and UPPER (' + GFornecedor.Cells[VpLaco,0] + ') like UPPER (' +
        QuotedStr('%' + GFornecedor.Cells[VpLaco,1] + '%') + ')';
  end;
  if FFornecedorOrdem <> '' then
    VpWhere := VpWhere + ' order by ' + FFornecedorOrdem;

  VcParceiro.FornecedorAtualizaSQL(VpWhere);
  FornecedorCarregaGridRegistro;
end;

procedure TFParceiroCad.FornecedorCarregaGridRegistro;
var
  VpLaco, VpLinha : integer;
  VpSqlConexao : TFDQuery;
begin
  VpLinha := 2;
  VpLaco := 0;
  VpSqlConexao := VcParceiro.FornecedorRetornaQueryGrid;
  while not VpSqlConexao.Eof do
  begin
    GFornecedor.RowCount := VpLinha;
    for VpLaco := 0 to GFornecedor.FixedRows do
    begin
      GFornecedor.Cells[VpLaco,VpLinha] := VpSqlConexao.FieldByName(GFornecedor.Cells[VpLaco,0]).AsString;
    end;
    VpLinha := VpLinha + 1;
    VpSqlConexao.Next;
  end;
  GFornecedor.RowCount := VpLinha;
end;

procedure TFParceiroCad.FornecedorCriaGridTitulo;
var
  VpLaco, VpColCount : integer;
  VpSqlConexao : TFDQuery;
begin
  VpSqlConexao := VcParceiro.FornecedorRetornaQueryGrid;
  VpColCount := 0;
  for VpLaco := 0 to VpSqlConexao.Fields.Count - 1 do
  begin
    if VpSqlConexao.Fields[VpLaco].FieldName = 'SEQUENCIA' then
    begin
      VpColCount := VpColCount;
      GFornecedor.ColCount := VpColCount + 1;
      GFornecedor.Cells[VpColCount,0] := 'SEQUENCIA';
      GFornecedor.ColWidths[VpColCount] := 60;
    end
    else if VpSqlConexao.Fields[VpLaco].FieldName = 'NOME' then
    begin
      VpColCount := VpColCount + 1;
      GFornecedor.ColCount := VpColCount +1;
      GFornecedor.Cells[VpColCount,0] := 'NOME';
      GFornecedor.ColWidths[VpColCount] := 500;
    end
    else
      VpSqlConexao.Fields[VpLaco].Visible := False;
  end;
  GFornecedor.FixedRows := VpColCount;
end;

procedure TFParceiroCad.FornecedorShow;
begin
  VcParceiro.FornecedorCriaQuery;
  FornecedorCriaGridTitulo;
  FornecedorVinculaCampoConexao;
  GFornecedor.Options  := GCliente.Options + [goColSizing];
  GFornecedor.Options  := GCliente.Options + [goColMoving];
end;

procedure TFParceiroCad.FornecedorVinculaCampoConexao;
Var
  VpLaco : integer;
begin
  for VpLaco := 0 to ComponentCount -1 do
  begin
    if (Components[VpLaco].GetParentComponent = PFornecedor) or
       (Components[VpLaco].GetParentComponent = GBFornecedor) then
    begin
      if (Components[VpLaco] is TDBEdit) then
        TDBEdit(Components[VpLaco]).DataSource := VcParceiro.VcDSFornecedor;
    end;
  end;
end;

function TFParceiroCad.RegistroNovo: String;
begin
  Result := VcParceiro.RegistroNovo(VCParceiroCad.PCGeral.ActivePage.Tag);
  IniciaVazioCampo(VCParceiroCad.PCGeral.ActivePage.Tag);
end;

function TFParceiroCad.RegistroSalva: String;
begin
  Result := VcParceiro.RegistroSalva(VCParceiroCad.PCGeral.ActivePage.Tag);
  if Result = '' then
    begin
    IniciaVazioCampo(VCParceiroCad.PCGeral.ActivePage.Tag);
    Result := 'Salvo com sucesso!';
    end;
end;

function TFParceiroCad.RetornaFiltro: String;
begin
  FCampoFiltro.SetFocus;
  FCampoFiltro.Text := APrincipal.FRetornoValorFiltro;
end;

procedure TFParceiroCad.SpeedButton2Click(Sender: TObject);
begin
  VcCoolBar.Bands[3].Text := ClienteAtualizaCampo(ECodigoCliente.Text);
end;

procedure TFParceiroCad.SpeedButton4Click(Sender: TObject);
begin
  VcCoolBar.Bands[3].Text := FornecedorAtualizaCampo(ECodigoFornecedor.Text);
end;

procedure TFParceiroCad.ParceiroCriaGridTitulo;
var
  VpLaco, VpColCount : integer;
  VpSqlConexao : TFDQuery;
begin
  VpSqlConexao := VcParceiro.ParceiroRetornaQueryGrid;
  VpColCount := 0;
  for VpLaco := 0 to VpSqlConexao.Fields.Count - 1 do
  begin
    if VpSqlConexao.Fields[VpLaco].FieldName = 'SEQUENCIA' then
    begin
      VpColCount := VpColCount;
      GParceiro.ColCount := VpColCount + 1;
      GParceiro.Cells[VpColCount,0] := 'SEQUENCIA';
      GParceiro.ColWidths[VpColCount] := 60;
    end
    else if VpSqlConexao.Fields[VpLaco].FieldName = 'NOME' then
    begin
      VpColCount := VpColCount + 1;
      GParceiro.ColCount := VpColCount + 1;
      GParceiro.Cells[VpColCount,0] := 'NOME';
      GParceiro.ColWidths[VpColCount] := 500;
    end
    else
      VpSqlConexao.Fields[VpLaco].Visible := False;
  end;
  GParceiro.FixedRows := VpColCount;
end;

procedure TFParceiroCad.ParceiroShow;
begin
  ParceiroCriaGridTitulo;
  ParceiroCarregaGridRegistro;
  ParceiroVinculaCampoConexao;
  GParceiro.Options := GParceiro.Options + [goColSizing];
  GParceiro.Options := GParceiro.Options + [goColMoving];
end;

procedure TFParceiroCad.GClienteDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  if ARow = 1 then
  begin
    GCliente.Canvas.Brush.Color := clGradientInactiveCaption;
    GCliente.Canvas.Font.Color:=clblack;
    GCliente.canvas.fillRect(Rect);
    GCliente.canvas.TextOut(Rect.Left,Rect.Top,GCliente.Cells[ACol,ARow]);
  end;
end;

procedure TFParceiroCad.GClienteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ClienteAtualizaGrid;
end;

procedure TFParceiroCad.GClienteMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Col, Row: Integer;
begin
  GCliente.MouseToCell(X, Y, Col, Row);
  if Row = 0 then
    begin
    if FClienteOrdem = GCliente.Cells[Col,Row] then
      FClienteOrdem := GCliente.Cells[Col,Row] + ' DESC '
    else
      FClienteOrdem := GCliente.Cells[Col,Row];
    ClienteAtualizaGrid;
    end;
end;

procedure TFParceiroCad.GClienteSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  if ARow = 1 then
    GCliente.Options := GCliente.Options + [goEditing]
  else
    GCliente.Options := GCliente.Options - [goEditing];

  if ARow > 1  then
    ClienteAtualizaCampo(GCliente.Cells[0,ARow]);
end;

procedure TFParceiroCad.GContatoDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  if ARow = 1 then
  begin
    GContato.Canvas.Brush.Color := clGradientInactiveCaption;
    GContato.Canvas.Font.Color:=clblack;
    GContato.canvas.fillRect(Rect);
    GContato.canvas.TextOut(Rect.Left,Rect.Top,GContato.Cells[ACol,ARow]);
  end;
end;

procedure TFParceiroCad.GContatoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ContatoAtualizaGrid;
end;

procedure TFParceiroCad.GContatoMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Col, Row: Integer;
begin
  GContato.MouseToCell(X, Y, Col, Row);
  if Row = 0 then
    begin
    if FContatoOrdem = GContato.Cells[Col,Row] then
      FContatoOrdem := GContato.Cells[Col,Row] + ' DESC '
    else
      FContatoOrdem := GContato.Cells[Col,Row];
    ContatoAtualizaGrid;
    end;
end;

procedure TFParceiroCad.GContatoSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  if ARow = 1 then
    GContato.Options := GContato.Options + [goEditing]
  else
    GContato.Options := GContato.Options - [goEditing];

  if ARow > 1  then
    VcParceiro.ContatoAtualizaCampo(GContato.Cells[0,ARow]);
end;

procedure TFParceiroCad.GFornecedorDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  if ARow = 1 then
  begin
    GFornecedor.Canvas.Brush.Color := clGradientInactiveCaption;
    GFornecedor.Canvas.Font.Color:=clblack;
    GFornecedor.canvas.fillRect(Rect);
    GFornecedor.canvas.TextOut(Rect.Left,Rect.Top,GFornecedor.Cells[ACol,ARow]);
  end;
end;

procedure TFParceiroCad.GFornecedorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    FornecedorAtualizaGrid;
end;

procedure TFParceiroCad.GFornecedorMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Col, Row: Integer;
begin
  GFornecedor.MouseToCell(X, Y, Col, Row);
  if Row = 0 then
    begin
    if FFornecedorOrdem = GFornecedor.Cells[Col,Row] then
      FFornecedorOrdem := GFornecedor.Cells[Col,Row] + ' DESC '
    else
      FFornecedorOrdem := GFornecedor.Cells[Col,Row];
    FornecedorAtualizaGrid;
    end;
end;

procedure TFParceiroCad.GFornecedorSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if ARow = 1 then
    GFornecedor.Options := GFornecedor.Options + [goEditing]
  else
    GFornecedor.Options := GFornecedor.Options - [goEditing];

  if ARow > 1  then
    FornecedorAtualizaCampo(GFornecedor.Cells[0,ARow]);
end;

procedure TFParceiroCad.GParceiroDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  if ARow = 1 then
  begin
    GParceiro.Canvas.Brush.Color := clGradientInactiveCaption;
    GParceiro.Canvas.Font.Color:=clblack;
    GParceiro.canvas.fillRect(Rect);
    GParceiro.canvas.TextOut(Rect.Left,Rect.Top,GParceiro.Cells[ACol,ARow]);
  end;
end;

procedure TFParceiroCad.GParceiroKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ParceiroAtualizaGrid;
end;

procedure TFParceiroCad.GParceiroMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Col, Row: Integer;
begin
  GParceiro.MouseToCell(X, Y, Col, Row);
  if Row = 0 then
    begin
    if FParceiroOrdem = GParceiro.Cells[Col,Row] then
      FParceiroOrdem := GParceiro.Cells[Col,Row] + ' DESC '
    else
      FParceiroOrdem := GParceiro.Cells[Col,Row];
    ParceiroAtualizaGrid;
    end;
end;

procedure TFParceiroCad.GParceiroSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if ARow = 1 then
    GParceiro.Options := GParceiro.Options + [goEditing]
  else
    GParceiro.Options := GParceiro.Options - [goEditing];

  if ARow > 1  then
    begin
    ParceiroAtualizaCampo(GParceiro.Cells[0,ARow]);
    ControlaPageControl(True);
    end;
end;

procedure TFParceiroCad.IniciaVazioCampo(PpRegistroTag:Integer);
begin
  case PpRegistroTag of
    0 : begin
        ParceiroAtualizaCampo('-1');
        VcParceiro.VcDSParceiro.DataSet.FieldByName('SEQUENCIA').focusControl;
        ControlaPageControl(False);
        end;
    1 : begin
        ClienteAtualizaCampo('-1');
        VcParceiro.VcDSCliente.DataSet.FieldByName('SEQUENCIA').focusControl;
        end;
    2 : begin
        FornecedorAtualizaCampo('-1');
        VcParceiro.VcDSFornecedor.DataSet.FieldByName('SEQUENCIA').focusControl;
        end;
    4 : begin
        VcParceiro.ContatoAtualizaCampo('-1');
        VcParceiro.VcDSContato.DataSet.FieldByName('SEQUENCIA').focusControl;
        end;
  end;
end;

procedure TFParceiroCad.ParceiroVinculaCampoConexao;
Var
  VpLaco : integer;
begin
  for VpLaco := 0 to ComponentCount -1 do
  begin
    if (Components[VpLaco].GetParentComponent = PParceiro) or
       (Components[VpLaco].GetParentComponent = GBParceiro) then
    begin
      if (Components[VpLaco] is TDBEdit) then
        TDBEdit(Components[VpLaco]).DataSource := VcParceiro.VcDSParceiro;
    end;
  end;
end;

procedure TFParceiroCad.PCGeralChange(Sender: TObject);
begin
  if FControlaPageControl then
    begin
      case VCParceiroCad.PCGeral.ActivePage.Tag of
      1 : begin
          ClienteAtualizaGrid;
          IniciaVazioCampo(1);
          end;
      2 : begin
          FornecedorAtualizaGrid;
          IniciaVazioCampo(2);
          end;
      4 : begin
          ContatoAtualizaGrid;
          IniciaVazioCampo(4);
          end;
      end;
    end;
end;

procedure TFParceiroCad.PCGeralChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  AllowChange := FControlaPageControl;
end;

function TFParceiroCad.RegistroCancela: String;
begin
  Result := VcParceiro.RegistroCancela(VCParceiroCad.PCGeral.ActivePage.Tag);
  if Result = '' then
    begin
    IniciaVazioCampo(VCParceiroCad.PCGeral.ActivePage.Tag);
    Result := 'Alterações cancelada!'
    end;
end;

function TFParceiroCad.RegistroExclui: String;
begin
  Result := VcParceiro.RegistroExclui(VCParceiroCad.PCGeral.ActivePage.Tag);
  if Result = '' then
    begin
    IniciaVazioCampo(VCParceiroCad.PCGeral.ActivePage.Tag);
    Result := 'Excluido com sucesso!'
    end;
end;

end.
