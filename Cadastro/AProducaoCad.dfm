object FProducaoCad: TFProducaoCad
  Left = 195
  Top = 55
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Cadastro Produ'#231#227'o'
  ClientHeight = 657
  ClientWidth = 1142
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1142
    Height = 361
    Align = alTop
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 1023
      Height = 359
      ActivePage = TabSheet1
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Calend'#225'rio Operacional'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        object Label1: TLabel
          Left = 808
          Top = 5
          Width = 65
          Height = 13
          Caption = 'Data Emiss'#227'o'
        end
        object lbl1: TLabel
          Left = 474
          Top = 176
          Width = 20
          Height = 13
          Caption = 'M'#234's'
        end
        object lbl2: TLabel
          Left = 808
          Top = 51
          Width = 67
          Height = 13
          Caption = 'Data Validade'
        end
        object lbl3: TLabel
          Left = 16
          Top = 149
          Width = 31
          Height = 13
          Caption = 'Meses'
        end
        object lbl4: TLabel
          Left = 16
          Top = 199
          Width = 48
          Height = 13
          Caption = 'Dias '#218'teis'
        end
        object lbl8: TLabel
          Left = 16
          Top = 245
          Width = 31
          Height = 13
          Caption = 'Meses'
        end
        object lbl9: TLabel
          Left = 16
          Top = 287
          Width = 48
          Height = 13
          Caption = 'Dias '#218'teis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object grp1: TGroupBox
          Left = 3
          Top = 118
          Width = 455
          Height = 212
          Caption = 'Calend'#225'rio Padr'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object grp13: TGroupBox
          Left = 464
          Top = 160
          Width = 532
          Height = 170
          Caption = 'Calend'#225'rio Personalizado'
          TabOrder = 10
          object lbCal: TListBox
            Left = 209
            Top = 32
            Width = 121
            Height = 19
            ItemHeight = 13
            Items.Strings = (
              '1999'
              '2000'
              '2001')
            TabOrder = 0
            OnClick = lbCalExit
            OnEnter = lbCalExit
            OnExit = lbCalExit
          end
        end
        object CheckBox1: TCheckBox
          Left = 136
          Top = 24
          Width = 97
          Height = 17
          Caption = 'Gera Autom'#225'tico'
          TabOrder = 0
        end
        object LabeledEdit3: TLabeledEdit
          Left = 8
          Top = 24
          Width = 121
          Height = 21
          EditLabel.Width = 86
          EditLabel.Height = 13
          EditLabel.Caption = 'C'#243'digo Calend'#225'rio'
          TabOrder = 1
        end
        object cbCal: TComboBox
          Left = 474
          Top = 193
          Width = 145
          Height = 19
          Style = csOwnerDrawFixed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentFont = False
          TabOrder = 2
          OnChange = cbCalChange
          Items.Strings = (
            'Janeiro'
            'Fevereiro'
            'Mar'#231'o'
            'Abril'
            'Maio'
            'Junho'
            'Julho'
            'Agosto'
            'Setembro'
            'Outubro'
            'Novembro'
            'Dezembro')
        end
        object dtp1: TDateTimePicker
          Left = 808
          Top = 24
          Width = 105
          Height = 21
          Date = 41946.005011597220000000
          Time = 41946.005011597220000000
          TabOrder = 3
        end
        object rg2: TRadioGroup
          Left = 617
          Top = 23
          Width = 145
          Height = 65
          Caption = 'Calend'#225'rio'
          Items.Strings = (
            'Calend'#225'rio Padr'#227'o'
            'Calend'#225'rio Personalizado')
          TabOrder = 4
        end
        object lbledt1: TLabeledEdit
          Left = 239
          Top = 24
          Width = 372
          Height = 21
          EditLabel.Width = 101
          EditLabel.Height = 13
          EditLabel.Caption = 'Descri'#231#227'o Calend'#225'rio'
          TabOrder = 5
        end
        object cal1: TCalendar
          Left = 474
          Top = 218
          Width = 320
          Height = 105
          StartOfWeek = 0
          TabOrder = 6
        end
        object rg3: TRadioGroup
          Left = 800
          Top = 218
          Width = 185
          Height = 105
          Caption = 'Dia'
          Items.Strings = (
            'Dia '#218'til'
            'Dia Feriado'
            'Dia Final de Semana')
          TabOrder = 7
        end
        object lbledt14: TLabeledEdit
          Left = 903
          Top = 191
          Width = 82
          Height = 21
          EditLabel.Width = 75
          EditLabel.Height = 13
          EditLabel.Caption = 'Total Dias '#218'teis'
          TabOrder = 9
        end
        object dtp2: TDateTimePicker
          Left = 808
          Top = 67
          Width = 105
          Height = 21
          Date = 41946.005011597220000000
          Time = 41946.005011597220000000
          TabOrder = 11
        end
        object lbledt15: TLabeledEdit
          Left = 342
          Top = 155
          Width = 82
          Height = 21
          EditLabel.Width = 75
          EditLabel.Height = 13
          EditLabel.Caption = 'Total Dias '#218'teis'
          TabOrder = 12
        end
        object edt1: TEdit
          Left = 70
          Top = 191
          Width = 43
          Height = 21
          TabOrder = 13
          Text = 'edt1'
        end
        object edt2: TEdit
          Left = 110
          Top = 191
          Width = 43
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          Text = 'edt1'
        end
        object btn1: TButton
          Left = 70
          Top = 144
          Width = 43
          Height = 25
          Caption = 'Janeiro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object btn2: TButton
          Left = 110
          Top = 144
          Width = 43
          Height = 25
          Caption = 'Fevereiro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
        end
        object btn3: TButton
          Left = 150
          Top = 144
          Width = 43
          Height = 25
          Caption = 'Mar'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
        end
        object edt3: TEdit
          Left = 150
          Top = 191
          Width = 43
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
          Text = 'edt1'
        end
        object btn4: TButton
          Left = 190
          Top = 144
          Width = 43
          Height = 25
          Caption = 'Abril'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 19
        end
        object btn7: TButton
          Left = 230
          Top = 144
          Width = 43
          Height = 25
          Caption = 'Maio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 20
        end
        object btn9: TButton
          Left = 270
          Top = 144
          Width = 43
          Height = 25
          Caption = 'Junho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 21
        end
        object edt4: TEdit
          Left = 190
          Top = 191
          Width = 43
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 22
          Text = 'edt1'
        end
        object edt5: TEdit
          Left = 230
          Top = 191
          Width = 43
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 23
          Text = 'edt1'
        end
        object edt6: TEdit
          Left = 270
          Top = 191
          Width = 43
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 24
          Text = 'edt1'
        end
        object btn10: TButton
          Left = 70
          Top = 240
          Width = 43
          Height = 25
          Caption = 'Julho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 25
        end
        object btn12: TButton
          Left = 110
          Top = 240
          Width = 43
          Height = 25
          Caption = 'Agosto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 26
        end
        object btn16: TButton
          Left = 150
          Top = 240
          Width = 43
          Height = 25
          Caption = 'Setembro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 27
        end
        object btn17: TButton
          Left = 190
          Top = 240
          Width = 43
          Height = 25
          Caption = 'Outubro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 28
        end
        object btn18: TButton
          Left = 230
          Top = 240
          Width = 43
          Height = 25
          Caption = 'Novembro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 29
        end
        object btn19: TButton
          Left = 270
          Top = 240
          Width = 43
          Height = 25
          Caption = 'Dezembro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 30
        end
        object edt7: TEdit
          Left = 70
          Top = 284
          Width = 43
          Height = 21
          TabOrder = 31
          Text = 'edt1'
        end
        object edt8: TEdit
          Left = 110
          Top = 284
          Width = 43
          Height = 21
          TabOrder = 32
          Text = 'edt1'
        end
        object edt9: TEdit
          Left = 150
          Top = 284
          Width = 43
          Height = 21
          TabOrder = 33
          Text = 'edt1'
        end
        object edt10: TEdit
          Left = 190
          Top = 284
          Width = 43
          Height = 21
          TabOrder = 34
          Text = 'edt1'
        end
        object edt11: TEdit
          Left = 230
          Top = 284
          Width = 43
          Height = 21
          TabOrder = 35
          Text = 'edt1'
        end
        object edt12: TEdit
          Left = 270
          Top = 284
          Width = 43
          Height = 21
          TabOrder = 36
          Text = 'edt1'
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Recursos '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 1
        ParentFont = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object lbledt8: TLabeledEdit
          Left = 16
          Top = 18
          Width = 73
          Height = 21
          EditLabel.Width = 76
          EditLabel.Height = 13
          EditLabel.Caption = 'C'#243'digo Recurso'
          TabOrder = 0
        end
        object lbledt10: TLabeledEdit
          Left = 198
          Top = 18
          Width = 251
          Height = 21
          EditLabel.Width = 91
          EditLabel.Height = 13
          EditLabel.Caption = 'Descri'#231#227'o Recurso'
          TabOrder = 1
        end
        object lbledt13: TLabeledEdit
          Left = 16
          Top = 170
          Width = 89
          Height = 21
          EditLabel.Width = 91
          EditLabel.Height = 13
          EditLabel.Caption = 'Valor Custo Padr'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object btn5: TButton
          Left = 656
          Top = 303
          Width = 75
          Height = 25
          Caption = 'Adicionar'
          TabOrder = 3
        end
        object btn6: TButton
          Left = 737
          Top = 303
          Width = 75
          Height = 25
          Caption = 'Alterar'
          TabOrder = 4
        end
        object btn8: TButton
          Left = 818
          Top = 303
          Width = 75
          Height = 25
          Caption = 'Remover'
          TabOrder = 5
        end
        object dtp4: TDateTimePicker
          Left = 697
          Top = 22
          Width = 103
          Height = 21
          Date = 41946.005089571760000000
          Time = 41946.005089571760000000
          TabOrder = 6
        end
        object chk1: TCheckBox
          Left = 95
          Top = 22
          Width = 97
          Height = 17
          Caption = 'Gera Autom'#225'tico'
          TabOrder = 7
        end
        object lbledt12: TLabeledEdit
          Left = 465
          Top = 111
          Width = 89
          Height = 21
          EditLabel.Width = 140
          EditLabel.Height = 13
          EditLabel.Caption = 'Total Horas Trabalhadas M'#234's'
          TabOrder = 8
        end
        object rg4: TRadioGroup
          Left = 465
          Top = 18
          Width = 145
          Height = 65
          Caption = 'Recurso'
          Items.Strings = (
            'Recurso Pessoa'
            'Recurso M'#225'quina')
          TabOrder = 9
        end
        object lbledt2: TLabeledEdit
          Left = 16
          Top = 108
          Width = 89
          Height = 21
          EditLabel.Width = 111
          EditLabel.Height = 13
          EditLabel.Caption = 'Horas Trabalhadas/Dia'
          TabOrder = 10
        end
        object lbledt3: TLabeledEdit
          Left = 160
          Top = 108
          Width = 89
          Height = 21
          EditLabel.Width = 88
          EditLabel.Height = 13
          EditLabel.Caption = 'Capacidade Carga'
          TabOrder = 11
        end
        object rg5: TRadioGroup
          Left = 127
          Top = 170
          Width = 145
          Height = 65
          Caption = 'Custo Padr'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            'Por Hora'
            'Por Dia')
          ParentFont = False
          TabOrder = 12
        end
        object lbledt4: TLabeledEdit
          Left = 465
          Top = 170
          Width = 89
          Height = 21
          EditLabel.Width = 138
          EditLabel.Height = 13
          EditLabel.Caption = 'Total Capacidade Carga M'#234's'
          TabOrder = 13
        end
        object lbledt5: TLabeledEdit
          Left = 465
          Top = 234
          Width = 89
          Height = 21
          EditLabel.Width = 104
          EditLabel.Height = 13
          EditLabel.Caption = 'Valor Total Custo M'#234's'
          TabOrder = 14
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Opera'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 2
        ParentFont = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object pnl1: TPanel
          Left = 0
          Top = 0
          Width = 1015
          Height = 361
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object lbledt18: TLabeledEdit
            Left = 200
            Top = 214
            Width = 362
            Height = 21
            EditLabel.Width = 91
            EditLabel.Height = 13
            EditLabel.Caption = 'Descri'#231#227'o Recurso'
            TabOrder = 0
          end
          object lbledt19: TLabeledEdit
            Left = 24
            Top = 215
            Width = 89
            Height = 21
            EditLabel.Width = 76
            EditLabel.Height = 13
            EditLabel.Caption = 'C'#243'digo Recurso'
            TabOrder = 1
          end
          object btn11: TBitBtn
            Left = 119
            Top = 211
            Width = 75
            Height = 25
            Caption = 'BitBtn1'
            TabOrder = 2
          end
          object lbledt20: TLabeledEdit
            Left = 568
            Top = 215
            Width = 89
            Height = 21
            EditLabel.Width = 55
            EditLabel.Height = 13
            EditLabel.Caption = 'Quantidade'
            TabOrder = 3
          end
          object btn13: TButton
            Left = 656
            Top = 302
            Width = 75
            Height = 25
            Caption = 'Adicionar'
            TabOrder = 4
          end
          object btn14: TButton
            Left = 737
            Top = 302
            Width = 75
            Height = 25
            Caption = 'Alterar'
            TabOrder = 5
          end
          object btn15: TButton
            Left = 818
            Top = 302
            Width = 75
            Height = 25
            Caption = 'Remover'
            TabOrder = 6
          end
          object lbledt6: TLabeledEdit
            Left = 24
            Top = 19
            Width = 73
            Height = 21
            EditLabel.Width = 83
            EditLabel.Height = 13
            EditLabel.Caption = 'C'#243'digo Opera'#231#227'o'
            TabOrder = 7
          end
          object chk2: TCheckBox
            Left = 103
            Top = 23
            Width = 97
            Height = 17
            Caption = 'Gera Autom'#225'tico'
            TabOrder = 8
          end
          object lbledt7: TLabeledEdit
            Left = 206
            Top = 19
            Width = 251
            Height = 21
            EditLabel.Width = 98
            EditLabel.Height = 13
            EditLabel.Caption = 'Descri'#231#227'o Opera'#231#227'o'
            TabOrder = 9
          end
          object rg6: TRadioGroup
            Left = 206
            Top = 53
            Width = 184
            Height = 53
            Caption = 'Opera'#231#227'o'
            Items.Strings = (
              'Atividade Interna - Pr'#243'pria'
              'Atividade Externa - Terceiriza'#231#227'o')
            TabOrder = 10
          end
          object rg7: TRadioGroup
            Left = 396
            Top = 45
            Width = 184
            Height = 65
            Caption = 'Tempo'
            Items.Strings = (
              'Tempo Padr'#227'o-Fixo'
              'Tempo Cronoan'#225'lise'
              'Tempo M'#233'dio')
            TabOrder = 11
          end
          object lbledt9: TLabeledEdit
            Left = 580
            Top = 19
            Width = 89
            Height = 21
            EditLabel.Width = 91
            EditLabel.Height = 13
            EditLabel.Caption = 'Quantidade Tempo'
            TabOrder = 12
          end
          object lbledt11: TLabeledEdit
            Left = 24
            Top = 268
            Width = 105
            Height = 21
            EditLabel.Width = 104
            EditLabel.Height = 13
            EditLabel.Caption = 'Valor Custo Opera'#231#227'o'
            TabOrder = 13
          end
          object rg8: TRadioGroup
            Left = 859
            Top = 19
            Width = 120
            Height = 46
            Caption = 'Recebe Apontamento'
            Items.Strings = (
              'SIM'
              'N'#195'O')
            TabOrder = 14
          end
          object strngrd1: TStringGrid
            Left = 24
            Top = 116
            Width = 955
            Height = 74
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
            RowHeights = (
              24
              24
              24
              20
              24)
          end
          object lbledt16: TLabeledEdit
            Left = 24
            Top = 309
            Width = 105
            Height = 21
            EditLabel.Width = 141
            EditLabel.Height = 13
            EditLabel.Caption = 'Valor Padr'#227'o Custo Opera'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
          end
          object rg1: TRadioGroup
            Left = 675
            Top = 19
            Width = 81
            Height = 65
            Caption = 'Tempo'
            Items.Strings = (
              'Segundos'
              'Minutos'
              'Horas')
            TabOrder = 17
          end
        end
        object dbgrd1: TDBGrid
          Left = 0
          Top = 361
          Width = 1015
          Height = 257
          Align = alClient
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Processos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 3
        ParentFont = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object pnl3: TPanel
          Left = 0
          Top = 0
          Width = 1015
          Height = 361
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object lbledt17: TLabeledEdit
            Left = 32
            Top = 25
            Width = 73
            Height = 21
            EditLabel.Width = 80
            EditLabel.Height = 13
            EditLabel.Caption = 'C'#243'digo Processo'
            TabOrder = 0
          end
          object chk3: TCheckBox
            Left = 111
            Top = 31
            Width = 97
            Height = 17
            Caption = 'Gera Autom'#225'tico'
            TabOrder = 1
          end
          object lbledt21: TLabeledEdit
            Left = 214
            Top = 27
            Width = 251
            Height = 21
            EditLabel.Width = 95
            EditLabel.Height = 13
            EditLabel.Caption = 'Descri'#231#227'o Processo'
            TabOrder = 2
          end
          object rg9: TRadioGroup
            Left = 214
            Top = 54
            Width = 184
            Height = 53
            Caption = 'Processo'
            Items.Strings = (
              'Atividade Interna - Pr'#243'pria'
              'Atividade Externa - Terceiriza'#231#227'o')
            TabOrder = 3
          end
          object rg10: TRadioGroup
            Left = 404
            Top = 54
            Width = 184
            Height = 65
            Caption = 'Tempo'
            Items.Strings = (
              'Tempo Padr'#227'o-Fixo'
              'Tempo Cronoan'#225'lise'
              'Tempo M'#233'dio')
            TabOrder = 4
          end
          object lbledt22: TLabeledEdit
            Left = 588
            Top = 27
            Width = 89
            Height = 21
            EditLabel.Width = 91
            EditLabel.Height = 13
            EditLabel.Caption = 'Quantidade Tempo'
            TabOrder = 5
          end
          object rg11: TRadioGroup
            Left = 683
            Top = 27
            Width = 81
            Height = 65
            Caption = 'Tempo'
            Items.Strings = (
              'Segundos'
              'Minutos'
              'Horas')
            TabOrder = 6
          end
          object rg12: TRadioGroup
            Left = 867
            Top = 27
            Width = 120
            Height = 46
            Caption = 'Recebe Apontamento'
            Items.Strings = (
              'SIM'
              'N'#195'O')
            TabOrder = 7
          end
          object strngrd2: TStringGrid
            Left = 32
            Top = 124
            Width = 955
            Height = 74
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object lbledt23: TLabeledEdit
            Left = 32
            Top = 223
            Width = 89
            Height = 21
            EditLabel.Width = 83
            EditLabel.Height = 13
            EditLabel.Caption = 'C'#243'digo Opera'#231#227'o'
            TabOrder = 9
          end
          object btn24: TBitBtn
            Left = 127
            Top = 219
            Width = 75
            Height = 25
            Caption = 'btn24'
            TabOrder = 10
          end
          object lbledt24: TLabeledEdit
            Left = 208
            Top = 222
            Width = 362
            Height = 21
            EditLabel.Width = 98
            EditLabel.Height = 13
            EditLabel.Caption = 'Descri'#231#227'o Opera'#231#227'o'
            TabOrder = 11
          end
          object lbledt25: TLabeledEdit
            Left = 32
            Top = 264
            Width = 105
            Height = 21
            EditLabel.Width = 101
            EditLabel.Height = 13
            EditLabel.Caption = 'Valor Custo Processo'
            TabOrder = 12
          end
          object lbledt26: TLabeledEdit
            Left = 32
            Top = 305
            Width = 105
            Height = 21
            EditLabel.Width = 138
            EditLabel.Height = 13
            EditLabel.Caption = 'Valor Padr'#227'o Custo Processo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
          end
          object btn25: TButton
            Left = 664
            Top = 301
            Width = 75
            Height = 25
            Caption = 'Adicionar'
            TabOrder = 14
          end
          object btn26: TButton
            Left = 745
            Top = 301
            Width = 75
            Height = 25
            Caption = 'Alterar'
            TabOrder = 15
          end
          object btn27: TButton
            Left = 826
            Top = 301
            Width = 75
            Height = 25
            Caption = 'Remover'
            TabOrder = 16
          end
        end
        object dbgrd3: TDBGrid
          Left = 0
          Top = 361
          Width = 1015
          Height = 257
          Align = alClient
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Fluxos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 4
        ParentFont = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object lbledt27: TLabeledEdit
          Left = 40
          Top = 33
          Width = 73
          Height = 21
          EditLabel.Width = 61
          EditLabel.Height = 13
          EditLabel.Caption = 'C'#243'digo Fluxo'
          TabOrder = 0
        end
        object chk4: TCheckBox
          Left = 119
          Top = 39
          Width = 97
          Height = 17
          Caption = 'Gera Autom'#225'tico'
          TabOrder = 1
        end
        object lbledt28: TLabeledEdit
          Left = 222
          Top = 35
          Width = 251
          Height = 21
          EditLabel.Width = 76
          EditLabel.Height = 13
          EditLabel.Caption = 'Descri'#231#227'o Fluxo'
          TabOrder = 2
        end
        object strngrd3: TStringGrid
          Left = 40
          Top = 132
          Width = 955
          Height = 74
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object lbledt29: TLabeledEdit
          Left = 40
          Top = 231
          Width = 89
          Height = 21
          EditLabel.Width = 80
          EditLabel.Height = 13
          EditLabel.Caption = 'C'#243'digo Processo'
          TabOrder = 4
        end
        object btn28: TBitBtn
          Left = 135
          Top = 227
          Width = 75
          Height = 25
          Caption = 'btn24'
          TabOrder = 5
        end
        object lbledt30: TLabeledEdit
          Left = 216
          Top = 230
          Width = 362
          Height = 21
          EditLabel.Width = 95
          EditLabel.Height = 13
          EditLabel.Caption = 'Descri'#231#227'o Processo'
          TabOrder = 6
        end
        object btn29: TButton
          Left = 672
          Top = 306
          Width = 75
          Height = 25
          Caption = 'Adicionar'
          TabOrder = 7
        end
        object btn30: TButton
          Left = 753
          Top = 306
          Width = 75
          Height = 25
          Caption = 'Alterar'
          TabOrder = 8
        end
        object btn31: TButton
          Left = 834
          Top = 306
          Width = 75
          Height = 25
          Caption = 'Remover'
          TabOrder = 9
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Ficha T'#233'cnica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 5
        ParentFont = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object pnl2: TPanel
          Left = 20
          Top = 139
          Width = 917
          Height = 174
          Caption = 'pnl2'
          TabOrder = 10
          object lbledt34: TLabeledEdit
            Left = 20
            Top = 17
            Width = 73
            Height = 21
            EditLabel.Width = 53
            EditLabel.Height = 13
            EditLabel.Caption = 'Processo 1'
            TabOrder = 0
          end
          object edt17: TEdit
            Left = 92
            Top = 57
            Width = 57
            Height = 21
            TabOrder = 1
            Text = 'edt3'
          end
          object edt18: TEdit
            Left = 140
            Top = 57
            Width = 57
            Height = 21
            TabOrder = 2
            Text = 'edt3'
          end
          object edt19: TEdit
            Left = 196
            Top = 57
            Width = 57
            Height = 21
            TabOrder = 3
            Text = 'edt3'
          end
        end
        object lbledt31: TLabeledEdit
          Left = 20
          Top = 20
          Width = 73
          Height = 21
          EditLabel.Width = 37
          EditLabel.Height = 13
          EditLabel.Caption = 'Produto'
          TabOrder = 0
        end
        object edt13: TEdit
          Left = 88
          Top = 20
          Width = 57
          Height = 21
          TabOrder = 1
          Text = 'edt3'
        end
        object edt14: TEdit
          Left = 144
          Top = 20
          Width = 57
          Height = 21
          TabOrder = 2
          Text = 'edt3'
        end
        object edt15: TEdit
          Left = 200
          Top = 20
          Width = 57
          Height = 21
          TabOrder = 3
          Text = 'edt3'
        end
        object btn32: TBitBtn
          Left = 252
          Top = 18
          Width = 75
          Height = 25
          Caption = 'btn32'
          TabOrder = 4
        end
        object edt16: TEdit
          Left = 325
          Top = 20
          Width = 324
          Height = 21
          TabOrder = 5
          Text = 'edt1'
        end
        object lbledt32: TLabeledEdit
          Left = 20
          Top = 65
          Width = 73
          Height = 21
          EditLabel.Width = 61
          EditLabel.Height = 13
          EditLabel.Caption = 'C'#243'digo Fluxo'
          TabOrder = 6
        end
        object lbledt33: TLabeledEdit
          Left = 160
          Top = 65
          Width = 251
          Height = 21
          EditLabel.Width = 76
          EditLabel.Height = 13
          EditLabel.Caption = 'Descri'#231#227'o Fluxo'
          TabOrder = 7
        end
        object btn33: TBitBtn
          Left = 88
          Top = 61
          Width = 75
          Height = 25
          Caption = 'btn32'
          TabOrder = 8
        end
        object scrlbr1: TScrollBar
          Left = 20
          Top = 116
          Width = 121
          Height = 17
          PageSize = 0
          TabOrder = 9
        end
        object lbledt35: TLabeledEdit
          Left = 112
          Top = 156
          Width = 251
          Height = 21
          EditLabel.Width = 95
          EditLabel.Height = 13
          EditLabel.Caption = 'Descri'#231#227'o Processo'
          TabOrder = 11
        end
        object lbledt36: TLabeledEdit
          Left = 40
          Top = 196
          Width = 73
          Height = 21
          EditLabel.Width = 37
          EditLabel.Height = 13
          EditLabel.Caption = 'Produto'
          TabOrder = 12
        end
        object lbledt37: TLabeledEdit
          Left = 290
          Top = 196
          Width = 73
          Height = 21
          EditLabel.Width = 55
          EditLabel.Height = 13
          EditLabel.Caption = 'Quantidade'
          TabOrder = 13
        end
        object lbledt38: TLabeledEdit
          Left = 369
          Top = 196
          Width = 73
          Height = 21
          EditLabel.Width = 78
          EditLabel.Height = 13
          EditLabel.Caption = 'Unidade Medida'
          TabOrder = 14
        end
        object lbledt39: TLabeledEdit
          Left = 448
          Top = 196
          Width = 73
          Height = 21
          EditLabel.Width = 39
          EditLabel.Height = 13
          EditLabel.Caption = '% Perda'
          TabOrder = 15
        end
        object lbledt40: TLabeledEdit
          Left = 40
          Top = 252
          Width = 73
          Height = 21
          EditLabel.Width = 36
          EditLabel.Height = 13
          EditLabel.Caption = 'Servi'#231'o'
          TabOrder = 16
        end
        object lbledt41: TLabeledEdit
          Left = 119
          Top = 252
          Width = 73
          Height = 21
          EditLabel.Width = 55
          EditLabel.Height = 13
          EditLabel.Caption = 'Quantidade'
          TabOrder = 17
        end
        object lbledt42: TLabeledEdit
          Left = 198
          Top = 252
          Width = 73
          Height = 21
          EditLabel.Width = 78
          EditLabel.Height = 13
          EditLabel.Caption = 'Unidade Medida'
          TabOrder = 18
        end
      end
    end
    object Panel2: TPanel
      Left = 1024
      Top = 1
      Width = 117
      Height = 359
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Button1: TButton
        Left = 16
        Top = 16
        Width = 75
        Height = 25
        Caption = 'Imprimir'
        TabOrder = 0
      end
      object btn20: TButton
        Left = 16
        Top = 47
        Width = 75
        Height = 25
        Caption = 'E-mail'
        TabOrder = 1
      end
      object btn21: TButton
        Left = 16
        Top = 78
        Width = 75
        Height = 25
        Caption = 'OK'
        TabOrder = 2
      end
      object btn22: TButton
        Left = 16
        Top = 109
        Width = 75
        Height = 25
        Caption = 'EXCLUIR'
        TabOrder = 3
      end
      object btn23: TButton
        Left = 16
        Top = 140
        Width = 75
        Height = 25
        Caption = 'Chat'
        TabOrder = 4
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 722
    Width = 1142
    Height = 257
    Align = alClient
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object pnl4: TPanel
    Left = 0
    Top = 361
    Width = 1142
    Height = 361
    Align = alTop
    TabOrder = 2
    object pnl8: TPanel
      Left = 1024
      Top = 1
      Width = 117
      Height = 359
      Align = alRight
      TabOrder = 0
    end
    object drwgrd1: TDrawGrid
      Left = -6
      Top = 0
      Width = 1008
      Height = 257
      TabOrder = 1
    end
  end
  object dbgrd4: TDBGrid
    Left = 0
    Top = 722
    Width = 1142
    Height = 257
    Align = alClient
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
