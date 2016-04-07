object FDepisitoCad: TFDepisitoCad
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Cadastro Deposito'
  ClientHeight = 559
  ClientWidth = 833
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 833
    Height = 559
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object PCGeral: TPageControl
      Left = 1
      Top = 1
      Width = 831
      Height = 557
      ActivePage = TsMovimentoEstoque
      Align = alClient
      TabOrder = 0
      object TsMovimentoEstoque: TTabSheet
        Caption = 'Movimento Estoque'
        object Splitter1: TSplitter
          Left = 0
          Top = 251
          Width = 823
          Height = 5
          Cursor = crVSplit
          Align = alBottom
          ExplicitLeft = -40
          ExplicitTop = 318
        end
        object Panel2: TPanel
          Left = 0
          Top = 256
          Width = 823
          Height = 273
          Align = alBottom
          TabOrder = 0
          object GDeposito: TStringGrid
            Left = 1
            Top = 1
            Width = 821
            Height = 271
            Align = alClient
            ColCount = 1
            DefaultColWidth = 70
            DoubleBuffered = False
            FixedCols = 0
            RowCount = 2
            FixedRows = 0
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
            ParentDoubleBuffered = False
            TabOrder = 0
            OnDrawCell = GDepositoDrawCell
            OnKeyPress = GDepositoKeyPress
            OnMouseUp = GDepositoMouseUp
            OnSelectCell = GDepositoSelectCell
          end
        end
        object PCampo: TPanel
          Left = 0
          Top = 0
          Width = 823
          Height = 251
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object Label1: TLabel
            Left = 4
            Top = 22
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
          end
          object Label2: TLabel
            Left = 6
            Top = 73
            Width = 90
            Height = 13
            Caption = 'Descri'#231#227'o deposito'
          end
          object BPesquisa: TSpeedButton
            Left = 131
            Top = 40
            Width = 23
            Height = 21
            Glyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              0800000000000001000000000000000000000001000000010000FF00FF006E55
              55007350500053626D0051627E005B667E005F697E006C6A6E00706C7D007F7B
              7A00986D63009A6C6700986C6B00847876009E7F7A00987D7D00BB8A7200BD96
              7D00EFAD6A00F0B875000766920005669500086B9A000274A9000479AF00767F
              83004579AB001165C1000F6FD700106CD3000484BF00708E98004392AB000791
              C5001CAAD3002CA7D30032AFD8002DB6DD0031B5D3003C9AF0003C9CF300359D
              F800309FFF0035A3FF004093D30012CBFE0030C9E90022CBFA0020CEFE003FE3
              FE005BC7E10054DEFF0074DEF70055F6FE005FFEFF0074E0F80068F6FF0073FA
              FE007FFAFB0078FBFE008F878200A3898700B08F8100B6998A0088B5B600C4A5
              8A00C6A98C00DCBD9600EEBB8100CCB4A100F6C28300F4C48300E7C49700E9C5
              9600F3CF9600F6D89E00F2D6A000FEE3A600FFEEAB00FFF6B500FBF0BF0083FA
              FB0092FFFF009FFBFE0098FFFF00A7E9F300A3F3FF00A0FFFF00B6F2FF00B7FF
              FF00E5D4C000E1D3CA00F4EECB00FBF4C500FFFAC700F7F3CA00FFFFC900FEFB
              CF00FFFFCD00FFF4D700FFFFD200FCFBD700FFFFD400FFFFDA00FFFFDC00C6FF
              FF00DCFFFF00F7F3EE00FFFFEE00EDFAFC00F0FFFF00FBFFFF00000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000040300001515151515150000000000051C2C00172E2D3033
              372315000000061D2B271739312D303334241E1500081B2A27001739312D3032
              0E3E3F0A021A2B2A00001739312D250E5A61685C410A2A000000175356583D5B
              6C61615E4E1000000000175522210D656161655046490C0000001726312D3C68
              6161654A124C0C0000001739312D095F615E4B444D430C0000001739312D2042
              4F4613636B0C000000001739312D301F11494C450C0C00000000173B3835363B
              40190701000000000000176F6E6957535352351500000000000000186D6A5953
              523B160000000000000000001717171717170000000000000000}
            OnClick = BPesquisaClick
          end
          object ECodigo: TDBEdit
            Left = 4
            Top = 41
            Width = 121
            Height = 21
            DataField = 'SEQUENCIA'
            TabOrder = 0
            OnEnter = ECodigoEnter
          end
          object EDescricao: TDBEdit
            Left = 4
            Top = 92
            Width = 400
            Height = 21
            DataField = 'DESCRICAO'
            TabOrder = 1
          end
        end
      end
    end
  end
end
