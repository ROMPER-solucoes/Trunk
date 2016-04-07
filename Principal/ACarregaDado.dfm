object FCarregaDado: TFCarregaDado
  Left = 0
  Top = 0
  Caption = 'ERP'
  ClientHeight = 242
  ClientWidth = 427
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object HTela: THeaderControl
    Left = 0
    Top = 0
    Width = 427
    Height = 41
    Sections = <
      item
        BiDiMode = bdLeftToRight
        ImageIndex = 138
        ParentBiDiMode = False
        Text = 'Carregando informa'#231#245'es'
        Width = 10000
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 427
    Height = 173
    Align = alClient
    TabOrder = 1
    object MCarregaDado: TMemo
      Left = 1
      Top = 1
      Width = 425
      Height = 171
      Align = alClient
      Lines.Strings = (
        'MCarregaDado')
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 214
    Width = 427
    Height = 28
    Align = alBottom
    TabOrder = 2
    object PCarregaStatus: TProgressBar
      Left = 1
      Top = 1
      Width = 425
      Height = 26
      Align = alClient
      TabOrder = 0
    end
  end
end
