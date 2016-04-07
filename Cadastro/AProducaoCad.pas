unit AProducaoCad;

interface

  uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, ComCtrls, ExtCtrls, StdCtrls, Grids, DBGrids, Buttons, Mask,
    Vcl.Samples.Calendar, Data.DB, uProducaoCad, uTools;

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
      cbCal: TComboBox;
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
      lbCal: TListBox;

      Function RegistroNovo: String;
      Function RegistroCancela: String;
      Function RegistroSalva: String;
      Function RegistroExclui: String;

      procedure cbCalChange(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure lbCalExit(Sender: TObject);
    private
      procedure ControlaPageControl(PpAtiva: Boolean);
      procedure AtualizaDiasUteis(Sender: TObject);
      { Private declarations }
    public
      constructor Create(PpCoolBar: TCoolBar);
      { Public declarations }
    end;

  var
    // FProducaoCad: TFProducaoCad;
    VcProducaoCad: TFProducaoCad;
    VcCoolBar: TCoolBar;
    FCalendarioOpoOrdem, FRecursosOrdem, FOperacoesOrdem, FFLuxosOrdem,
      FFichaTecOrdem: String;
    FControlaPageControl: Boolean;

implementation

  {$R *.dfm}

  procedure TFProducaoCad.cbCalChange(Sender: TObject);
    begin
      cal1.Month := cbCal.ItemIndex + 1;
    end;

  procedure TFProducaoCad.ControlaPageControl(PpAtiva: Boolean);
    begin
      FControlaPageControl := PpAtiva;
    end;

  constructor TFProducaoCad.Create(PpCoolBar: TCoolBar);
    begin
      inherited Create(nil);
      VcCoolBar := PpCoolBar;
    end;

  procedure TFProducaoCad.FormCreate(Sender: TObject);
    var
      _year, _month, _day: word;
      x: Integer;

    begin
      DecodeDate(now, _year, _month, _day); // desmosnta data
      cbCal.ItemIndex := _month - 1;
      cal1.Month := _month; // Mês atual

      lbCal.Items.Clear;
      for x := 2010 to 2026 do
        lbCal.Items.Add(IntToStr(x));
      lbCal.ItemIndex := 6;

      AtualizaDiasUteis(Sender);

    end;

  procedure TFProducaoCad.lbCalExit(Sender: TObject);
    begin
      AtualizaDiasUteis(Sender);
    end;

  function TFProducaoCad.RegistroCancela: String;
    begin
      ShowMessage('c');
    end;

  function TFProducaoCad.RegistroExclui: String;
    begin
      ShowMessage('excluir');
    end;

  function TFProducaoCad.RegistroNovo: String;
    begin
      ShowMessage('n');
    end;

  function TFProducaoCad.RegistroSalva: String;
    begin
      ShowMessage('s');
    end;

  procedure TFProducaoCad.AtualizaDiasUteis(Sender: TObject);
    var
      _year, _m: word;
      _duteis: Integer;

    begin

      _year := StrToInt(lbCal.Items.Strings[lbCal.ItemIndex]);
      edt1.Text := IntToStr(DiasUteisMes(EncodeDate(_year, 1, 1)));
      edt2.Text := IntToStr(DiasUteisMes(EncodeDate(_year, 2, 1)));
      edt3.Text := IntToStr(DiasUteisMes(EncodeDate(_year, 3, 1)));
      edt4.Text := IntToStr(DiasUteisMes(EncodeDate(_year, 4, 1)));
      edt5.Text := IntToStr(DiasUteisMes(EncodeDate(_year, 5, 1)));
      edt6.Text := IntToStr(DiasUteisMes(EncodeDate(_year, 6, 1)));
      edt7.Text := IntToStr(DiasUteisMes(EncodeDate(_year, 7, 1)));
      edt8.Text := IntToStr(DiasUteisMes(EncodeDate(_year, 8, 1)));
      edt9.Text := IntToStr(DiasUteisMes(EncodeDate(_year, 9, 1)));
      edt10.Text := IntToStr(DiasUteisMes(EncodeDate(_year, 10, 1)));
      edt11.Text := IntToStr(DiasUteisMes(EncodeDate(_year, 11, 1)));
      edt12.Text := IntToStr(DiasUteisMes(EncodeDate(_year, 12, 1)));

      _duteis := 0;
      for _m := 1 to 12 do
        _duteis := _duteis + (DiasUteisMes(EncodeDate(_year, _m, 1)));

      lbledt15.Text := IntToStr(_duteis);

    end;

end.
