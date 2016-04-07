unit AProduçãoCad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Grids, DBGrids, Buttons, Mask,
  Vcl.Samples.Calendar, Data.DB;

type
  TFProducaoCad = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Button1: TButton;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    LabeledEdit3: TLabeledEdit;
    ComboBox1: TComboBox;
    dtp1: TDateTimePicker;
    lbledt8: TLabeledEdit;
    pnl1: TPanel;
    dbgrd1: TDBGrid;
    lbledt10: TLabeledEdit;
    lbledt13: TLabeledEdit;
    btn5: TButton;
    btn6: TButton;
    btn8: TButton;
    pnl3: TPanel;
    dbgrd3: TDBGrid;
    pnl4: TPanel;
    pnl8: TPanel;
    dbgrd4: TDBGrid;
    drwgrd1: TDrawGrid;
    dtp4: TDateTimePicker;
    lbledt18: TLabeledEdit;
    lbledt19: TLabeledEdit;
    btn11: TBitBtn;
    lbledt20: TLabeledEdit;
    btn13: TButton;
    btn14: TButton;
    btn15: TButton;
    btn20: TButton;
    btn21: TButton;
    btn22: TButton;
    btn23: TButton;
    rg2: TRadioGroup;
    lbledt1: TLabeledEdit;
    cal1: TCalendar;
    rg3: TRadioGroup;
    lbl1: TLabel;
    chk1: TCheckBox;
    lbledt12: TLabeledEdit;
    rg4: TRadioGroup;
    lbledt2: TLabeledEdit;
    lbledt3: TLabeledEdit;
    rg5: TRadioGroup;
    lbledt4: TLabeledEdit;
    lbledt5: TLabeledEdit;
    lbledt6: TLabeledEdit;
    chk2: TCheckBox;
    lbledt7: TLabeledEdit;
    rg6: TRadioGroup;
    rg7: TRadioGroup;
    lbledt9: TLabeledEdit;
    lbledt11: TLabeledEdit;
    rg8: TRadioGroup;
    grp1: TGroupBox;
    lbledt14: TLabeledEdit;
    grp13: TGroupBox;
    dtp2: TDateTimePicker;
    lbl2: TLabel;
    lbledt15: TLabeledEdit;
    lbl3: TLabel;
    edt1: TEdit;
    lbl4: TLabel;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    edt3: TEdit;
    btn4: TButton;
    btn7: TButton;
    btn9: TButton;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    lbl8: TLabel;
    lbl9: TLabel;
    btn10: TButton;
    btn12: TButton;
    btn16: TButton;
    btn17: TButton;
    btn18: TButton;
    btn19: TButton;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    edt11: TEdit;
    edt12: TEdit;
    strngrd1: TStringGrid;
    lbledt16: TLabeledEdit;
    rg1: TRadioGroup;
    lbledt17: TLabeledEdit;
    chk3: TCheckBox;
    lbledt21: TLabeledEdit;
    rg9: TRadioGroup;
    rg10: TRadioGroup;
    lbledt22: TLabeledEdit;
    rg11: TRadioGroup;
    rg12: TRadioGroup;
    strngrd2: TStringGrid;
    lbledt23: TLabeledEdit;
    btn24: TBitBtn;
    lbledt24: TLabeledEdit;
    lbledt25: TLabeledEdit;
    lbledt26: TLabeledEdit;
    btn25: TButton;
    btn26: TButton;
    btn27: TButton;
    lbledt27: TLabeledEdit;
    chk4: TCheckBox;
    lbledt28: TLabeledEdit;
    strngrd3: TStringGrid;
    lbledt29: TLabeledEdit;
    btn28: TBitBtn;
    lbledt30: TLabeledEdit;
    btn29: TButton;
    btn30: TButton;
    btn31: TButton;
    lbledt31: TLabeledEdit;
    edt13: TEdit;
    edt14: TEdit;
    edt15: TEdit;
    btn32: TBitBtn;
    edt16: TEdit;
    lbledt32: TLabeledEdit;
    lbledt33: TLabeledEdit;
    btn33: TBitBtn;
    scrlbr1: TScrollBar;
    pnl2: TPanel;
    lbledt34: TLabeledEdit;
    lbledt35: TLabeledEdit;
    lbledt36: TLabeledEdit;
    edt17: TEdit;
    edt18: TEdit;
    edt19: TEdit;
    lbledt37: TLabeledEdit;
    lbledt38: TLabeledEdit;
    lbledt39: TLabeledEdit;
    lbledt40: TLabeledEdit;
    lbledt41: TLabeledEdit;
    lbledt42: TLabeledEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
//  FProducaoCad: TFProducaoCad;
  VcProducaoCad : TFProducaoCad;
  VcCoolBar : TCoolBar;


implementation

{$R *.dfm}

end.
