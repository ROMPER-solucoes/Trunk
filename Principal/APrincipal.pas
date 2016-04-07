unit APrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ButtonGroup, Vcl.Menus, Vcl.ToolWin,
  Vcl.ComCtrls, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.Ribbon,
  Vcl.RibbonLunaStyleActnCtrls, System.Actions, Vcl.ActnList, System.ImageList,
  Vcl.ImgList, Vcl.ActnMenus, Vcl.RibbonActnMenus, DateUtils,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ExtCtrls, Vcl.ActnColorMaps, Vcl.Themes,
  Vcl.DBCtrls;

type CTabSheet=class(TTabSheet)
  private
  protected
    FCloseButtonRect: TRect;
    FOnClose: TNotifyEvent;
    procedure DoClose; virtual;
  public
    constructor Create(AOwner:TComponent); override;
    destructor Destroy; override;
property OnClose:TNotifyEvent read FOnClose write FOnClose;
end;

type
  TFPrincipal = class(TForm)
    AmMenuPrincipal16: TActionManager;
    LImage16: TImageList;
    ACliente: TAction;
    AProduto: TAction;
    RMenu: TRibbon;
    RibbonQuickAccessToolbar1: TRibbonQuickAccessToolbar;
    LImage46: TImageList;
    AmMenuPrincipal46: TActionManager;
    ACliente64: TAction;
    ADeposito64: TAction;
    FTituloTela: TFontDialog;
    CStatus: TCoolBar;
    Panel1: TPanel;
    PCPrincipal: TPageControl;
    RibbonPage3: TRibbonPage;
    RibbonGroup2: TRibbonGroup;
    ANovo64: TAction;
    AExcluir64: TAction;
    ACancela64: TAction;
    ASalva: TAction;
    CorFundo: TColorDialog;
    ATBMenuBasic: TActionToolBar;
    AComando32: TAction;
    RibbonApplicationMenuBar1: TRibbonApplicationMenuBar;
    AUsuario: TAction;
    ARegiao: TAction;
    Action1: TAction;
    AProducao64: TAction;
    Action3: TAction;
    Selecionado: TAction;
    procedure MenuGlobal(VpaMenu : TObject);
    procedure RMenuHelpButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CloseTabeProc(Sender: TObject);
    procedure PCPrincipalDrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
    procedure PCPrincipalMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PCPrincipalMouseLeave(Sender: TObject);
    procedure PCPrincipalMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PCPrincipalMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PCPrincipalChange(Sender: TObject);
    procedure PCPrincipalChanging(Sender: TObject; var AllowChange: Boolean);
    procedure SelecionadoExecute(Sender: TObject);
  private
    { Private declarations }
    FTabSheet: CTabSheet;
    FTabSheetShowPushed: Boolean;
  public
    { Public declarations }
    procedure AtualizaClasse(PpTelaCodigo:Integer; PpCriar:Boolean=False);
    function RetornaSequencia(VpaMenu : TObject) : String;
  end;

var
  FPrincipal: TFPrincipal;
  VcUsuario, VcgBanco, FRetornoValorFiltro: String;
  VcClasseTela : TClass;
  FControlaPageControl: integer;
  FRetornoTelaFiltro : TForm;

implementation

uses UGeral, UCarregaTela;

{$R *.dfm}

{ TForm1 }

constructor CTabSheet.Create(AOwner:TComponent);
begin
  inherited Create(AOwner);
  FCloseButtonRect:=Rect(0, 0, 0, 0);
end;

destructor CTabSheet.Destroy;
begin
  inherited Destroy;
end;

procedure CTabSheet.DoClose;
begin
  if Assigned(FOnClose) then FOnClose(Self);
  Free;
end;

procedure TFPrincipal.AtualizaClasse(PpTelaCodigo:Integer; PpCriar:Boolean=False);
begin
  VcClasseTela := VcCarregaTela.CarregaTela(PpTelaCodigo, CStatus, PpCriar);
end;

procedure TFPrincipal.CloseTabeProc(Sender: TObject);
begin
  if Selecionado.Visible then
  begin
    FControlaPageControl := 0;
    Selecionado.Visible := False;
  end;
end;

procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFPrincipal.FormCreate(Sender: TObject);
var
  VpAno, VpMes, VpDia : word;
begin
  FRetornoTelaFiltro := TForm.Create(nil);
  FPrincipal.Color := CorFundo.Color;
  ATBMenuBasic.ColorMap.Color := CorFundo.Color;
  DecodeDate (now, VpAno, VpMes, VpDia);
  CStatus.Bands[0].Text := IntToStr(VpDia) +'/'+ IntToStr(VpMes) +'/'+ IntToStr(VpAno);
  CStatus.Bands[1].Text := VcUsuario;
  CStatus.Bands[2].Text := VcgBanco;
end;

procedure TFPrincipal.MenuGlobal(VpaMenu: TObject);
var
  VpLaco : Integer;
  VpTabSheet :CTabSheet;
  TabSheet :CTabSheet;
  VpNomeTabSheet, VpRetornoProcesso : String;
  VpTagTabSheet : Integer;
  VpCriar : Boolean;
begin
  if TComponent(VpaMenu).Tag > 99 then
  begin

    VpNomeTabSheet := 'TS' + Copy(TComponent(VpaMenu).Name , 2, Length(TComponent(VpaMenu).Name));
    VpTagTabSheet := TComponent(VpaMenu).Tag;
    VpCriar := True;
    VpLaco := 0;
    for VpLaco := 0 to PCPrincipal.PageCount -1 do
    begin
      if PCPrincipal.Pages[VpLaco].Tag = VpTagTabSheet then
      begin
        PCPrincipal.ActivePage := PCPrincipal.Pages[VpLaco];
        PCPrincipal.OnChange(nil);
        VpCriar := False;
        Break;
      end;
    end;

    if VpCriar then
    begin
      AtualizaClasse(TComponent(VpaMenu).Tag, True);
      PCPrincipal.TabWidth  := 150;
      PCPrincipal.OwnerDraw := True;
      VpTabSheet:=CTabSheet.Create(PCPrincipal);
      VpTabSheet.Caption :=  TForm(VcClasseTela).Caption;
      VpTabSheet.PageControl:=PCPrincipal;
      VpTabSheet.OnClose :=CloseTabeProc;
      VpTabSheet.Name   := VpNomeTabSheet;
      VpTabSheet.Color  := CorFundo.Color;
      VpTabSheet.Show;
      VpTabSheet.Tag  := TComponent(VpaMenu).Tag;
      TForm(VcClasseTela).Tag     := VpTabSheet.Tag;
      TForm(VcClasseTela).Color   := CorFundo.Color;
      TForm(VcClasseTela).Parent  := VpTabSheet;
      TForm(VcClasseTela).Show;
      PCPrincipal.OwnerDraw := True;
      FTabSheet := nil;
    end;
  end
  else
    begin
      if TClass(VcClasseTela) <> nil then
      begin
        VpRetornoProcesso := VcCarregaTela.ProcessoCadastro(VcClasseTela, TComponent(VpaMenu).Tag);
        if VpRetornoProcesso <> '' then
          CStatus.Bands[3].Text := VpRetornoProcesso;
      end;
    end;
end;

procedure TFPrincipal.PCPrincipalChange(Sender: TObject);
begin
  AtualizaClasse(PCPrincipal.ActivePage.Tag);
end;

procedure TFPrincipal.PCPrincipalChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  AllowChange := True;
  if (FControlaPageControl <> 0) then
    AllowChange := False;
end;

procedure TFPrincipal.PCPrincipalDrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
var
  CloseBtnSize: Integer;
  PageControl: TPageControl;
  TabSheet:CTabSheet;
  TabCaption: TPoint;
  CloseBtnRect: TRect;
  CloseBtnDrawState: Cardinal;
  CloseBtnDrawDetails: TThemedElementDetails;
begin
  PageControl := Control as TPageControl;
  TabCaption.Y := Rect.Top + 3;

  Control.Canvas.brush.Color := CorFundo.Color;

  if Active then
  begin
    CloseBtnRect.Top := Rect.Top + 4;
    CloseBtnRect.Right := Rect.Right - 5;
    TabCaption.X := Rect.Left + 6;
  end
  else
  begin
    CloseBtnRect.Top := Rect.Top + 3;
    CloseBtnRect.Right := Rect.Right - 5;
    TabCaption.X := Rect.Left + 3;
  end;
  if PageControl.Pages[TabIndex] is CTabSheet then
  begin
    TabSheet:=PageControl.Pages[TabIndex] as CTabSheet;
    CloseBtnSize := 14;

    CloseBtnRect.Bottom := CloseBtnRect.Top + CloseBtnSize;
    CloseBtnRect.Left := CloseBtnRect.Right - CloseBtnSize;
    TabSheet.FCloseButtonRect := CloseBtnRect;

    PageControl.Canvas.FillRect(Rect);
    PageControl.Canvas.TextOut(TabCaption.X, TabCaption.Y,
            PageControl.Pages[TabIndex].Caption);

    if not ThemeServices.ThemesEnabled then
    begin
      if (FTabSheet = TabSheet) and FTabSheetShowPushed then
        CloseBtnDrawState := DFCS_CAPTIONCLOSE + DFCS_PUSHED
      else
        CloseBtnDrawState := DFCS_CAPTIONCLOSE;

      DrawFrameControl(PageControl.Canvas.Handle,
        TabSheet.FCloseButtonRect, DFC_CAPTION, CloseBtnDrawState);
    end
    else
    begin
      Dec(TabSheet.FCloseButtonRect.Left);

      if (FTabSheet = TabSheet) and FTabSheetShowPushed then
        CloseBtnDrawDetails := ThemeServices.GetElementDetails(twCloseButtonPushed)
      else
        CloseBtnDrawDetails := ThemeServices.GetElementDetails(twCloseButtonNormal);

      ThemeServices.DrawElement(PageControl.Canvas.Handle, CloseBtnDrawDetails,
                TabSheet.FCloseButtonRect);
    end;
  end else begin
    PageControl.Canvas.FillRect(Rect);
    PageControl.Canvas.TextOut(TabCaption.X, TabCaption.Y,
                 PageControl.Pages[TabIndex].Caption);
  end;
end;

procedure TFPrincipal.PCPrincipalMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  I: Integer;
  PageControl: TPageControl;
  TabSheet:CTabSheet;
begin
  PageControl := Sender as TPageControl;

  if Button = mbLeft then
  begin
    for I := 0 to PageControl.PageCount - 1 do
    begin
      if not (PageControl.Pages[i] is CTabSheet) then Continue;
      TabSheet:=PageControl.Pages[i] as CTabSheet;
      if PtInRect(TabSheet.FCloseButtonRect, Point(X, Y)) then
      begin
        FTabSheet := TabSheet;
        FTabSheetShowPushed := True;
        PageControl.Repaint;
      end;
    end;
  end;
end;

procedure TFPrincipal.PCPrincipalMouseLeave(Sender: TObject);
var
  PageControl: TPageControl;
begin
  PageControl := Sender as TPageControl;
  FTabSheetShowPushed := False;
  PageControl.Repaint;
end;

procedure TFPrincipal.PCPrincipalMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  PageControl: TPageControl;
  Inside: Boolean;
begin
  PageControl := Sender as TPageControl;

  if (ssLeft in Shift) and Assigned(FTabSheet) then
  begin
    Inside := PtInRect(FTabSheet.FCloseButtonRect, Point(X, Y));

    if FTabSheetShowPushed <> Inside then
    begin
      FTabSheetShowPushed := Inside;
      PageControl.Repaint;
    end;
  end;
end;

procedure TFPrincipal.PCPrincipalMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  PageControl: TPageControl;
begin
  PageControl := Sender as TPageControl;

  if (Button = mbLeft) and Assigned(FTabSheet) then
  begin
    if PtInRect(FTabSheet.FCloseButtonRect, Point(X, Y)) then
    begin
      FTabSheet.DoClose;
      FTabSheet := nil;
      PageControl.Repaint;
    end;
  end;
end;

function TFPrincipal.RetornaSequencia(VpaMenu: TObject): String;
begin
  FRetornoTelaFiltro.Tag := TForm(VcClasseTela).Tag;
  MenuGlobal(VpaMenu);
  FControlaPageControl := TComponent(VpaMenu).Tag;
  Selecionado.Visible := True;
end;
procedure TFPrincipal.RMenuHelpButtonClick(Sender: TObject);
begin
  ShowMessage('Manutenção');
end;

procedure TFPrincipal.SelecionadoExecute(Sender: TObject);
begin
  if TClass(VcClasseTela) <> nil then
  begin
    FRetornoValorFiltro := VcCarregaTela.ProcessoCadastro(VcClasseTela, TComponent(Sender).Tag);
    MenuGlobal(FRetornoTelaFiltro);
    VcCarregaTela.ProcessoCadastro(VcClasseTela, 201);
    FControlaPageControl := 0;
    Selecionado.Visible := False;
  end;
end;
end.

