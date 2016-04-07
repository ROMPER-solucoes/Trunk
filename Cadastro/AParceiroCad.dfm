object FParceiroCad: TFParceiroCad
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Cadastro Parceiro'
  ClientHeight = 571
  ClientWidth = 893
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 893
    Height = 571
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object PCGeral: TPageControl
      Left = 1
      Top = 1
      Width = 891
      Height = 569
      ActivePage = TsParceiro
      Align = alClient
      TabOrder = 0
      OnChange = PCGeralChange
      OnChanging = PCGeralChanging
      object TsParceiro: TTabSheet
        Caption = 'Parceiro'
        object Splitter1: TSplitter
          Left = 0
          Top = 371
          Width = 883
          Height = 5
          Cursor = crVSplit
          Align = alBottom
          ExplicitLeft = -40
          ExplicitTop = 318
          ExplicitWidth = 823
        end
        object Panel2: TPanel
          Left = 0
          Top = 376
          Width = 883
          Height = 165
          Align = alBottom
          TabOrder = 0
          object GParceiro: TStringGrid
            Left = 1
            Top = 1
            Width = 881
            Height = 163
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
            OnDrawCell = GParceiroDrawCell
            OnKeyPress = GParceiroKeyPress
            OnMouseUp = GParceiroMouseUp
            OnSelectCell = GParceiroSelectCell
          end
        end
        object Panel: TPanel
          Left = 0
          Top = 0
          Width = 883
          Height = 371
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object GBParceiro: TGroupBox
            Left = 1
            Top = 51
            Width = 881
            Height = 319
            Align = alClient
            Caption = 'Parceiro'
            TabOrder = 0
            object SpeedButton1: TSpeedButton
              Left = 239
              Top = 80
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
            end
            object Label2: TLabel
              Left = 11
              Top = 63
              Width = 48
              Height = 13
              Caption = 'CPF/CNPJ'
            end
            object Label3: TLabel
              Left = 268
              Top = 63
              Width = 90
              Height = 13
              Caption = 'R.G./INSC.ESTAD.'
            end
            object Label4: TLabel
              Left = 11
              Top = 107
              Width = 27
              Height = 13
              Caption = 'Nome'
            end
            object Label5: TLabel
              Left = 11
              Top = 148
              Width = 71
              Height = 13
              Caption = 'Nome Fantasia'
            end
            object TLabel
              Left = 11
              Top = 193
              Width = 225
              Height = 13
              Caption = 'C'#243'digo Descri'#231#227'o Atividade Econ'#244'mica Principal'
            end
            object Label6: TLabel
              Left = 268
              Top = 193
              Width = 168
              Height = 13
              Caption = 'C'#243'digo Descri'#231#227'o Natureza Jur'#237'dica'
            end
            object Label7: TLabel
              Left = 568
              Top = 63
              Width = 69
              Height = 13
              Caption = 'Data Abertura'
            end
            object Label8: TLabel
              Left = 568
              Top = 107
              Width = 33
              Height = 13
              Caption = 'Regi'#227'o'
            end
            object Label9: TLabel
              Left = 570
              Top = 150
              Width = 61
              Height = 13
              Caption = 'Classifica'#231#227'o'
            end
            object Label10: TLabel
              Left = 11
              Top = 239
              Width = 63
              Height = 13
              Caption = 'Observa'#231#245'es'
            end
            object DBRadioGroup1: TDBRadioGroup
              Left = 11
              Top = 16
              Width = 222
              Height = 41
              Caption = 'Tipo Parceiro'
              Columns = 2
              DataField = 'TIPO'
              Items.Strings = (
                'Pessoa F'#237'sica'
                'Pessoa Juridica')
              TabOrder = 0
              Values.Strings = (
                '0'
                '1')
            end
            object DBEdit1: TDBEdit
              Left = 11
              Top = 80
              Width = 222
              Height = 21
              DataField = 'CPFCNPJ'
              TabOrder = 1
            end
            object DBEdit2: TDBEdit
              Left = 268
              Top = 80
              Width = 197
              Height = 21
              DataField = 'REGISTRO'
              TabOrder = 2
            end
            object DBEdit3: TDBEdit
              Left = 11
              Top = 123
              Width = 454
              Height = 21
              DataField = 'NOME'
              TabOrder = 3
            end
            object DBEdit4: TDBEdit
              Left = 11
              Top = 166
              Width = 454
              Height = 21
              DataField = 'NOMEFANTASIA'
              TabOrder = 4
            end
            object DBEdit5: TDBEdit
              Left = 11
              Top = 212
              Width = 222
              Height = 21
              DataField = 'ATIVIDADEECONOMICA'
              TabOrder = 5
            end
            object DBEdit6: TDBEdit
              Left = 268
              Top = 212
              Width = 197
              Height = 21
              DataField = 'NATUREZAJURIDICA'
              TabOrder = 6
            end
            object DBMemo1: TDBMemo
              Left = 11
              Top = 258
              Width = 454
              Height = 55
              DataField = 'OBSERVACAO'
              TabOrder = 7
            end
            object DBCheckBox1: TDBCheckBox
              Left = 392
              Top = 16
              Width = 73
              Height = 17
              Caption = 'Cliente'
              TabOrder = 8
            end
            object DBCheckBox2: TDBCheckBox
              Left = 392
              Top = 40
              Width = 73
              Height = 17
              Caption = 'Fornecedor'
              TabOrder = 9
            end
            object PDATAABERTURA: TDateTimePicker
              Left = 568
              Top = 80
              Width = 145
              Height = 21
              Date = 42416.778017060190000000
              Time = 42416.778017060190000000
              TabOrder = 10
              OnChange = PDATAABERTURAChange
            end
            object RegiaoSeq: TDBEdit
              Tag = 112
              Left = 568
              Top = 123
              Width = 121
              Height = 21
              DataField = 'REGIAOSEQ'
              TabOrder = 11
              OnChange = REGIAOSEQChange
              OnKeyPress = FiltroBuscaSequencia
            end
            object ClassificacaoSeq: TDBEdit
              Tag = 113
              Left = 568
              Top = 166
              Width = 121
              Height = 21
              DataField = 'CLASSIFICACAOSEQ'
              TabOrder = 12
              OnExit = ClassificacaoSeqExit
              OnKeyPress = FiltroBuscaSequencia
            end
            object DsRegiao: TEdit
              Left = 695
              Top = 123
              Width = 183
              Height = 21
              Enabled = False
              TabOrder = 13
            end
            object DsClassificacao: TEdit
              Left = 695
              Top = 166
              Width = 183
              Height = 21
              Enabled = False
              TabOrder = 14
            end
          end
          object PParceiro: TPanel
            Left = 1
            Top = 1
            Width = 881
            Height = 50
            Align = alTop
            TabOrder = 1
            object BPesquisa: TSpeedButton
              Left = 131
              Top = 23
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
            object Label1: TLabel
              Left = 4
              Top = 4
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
            end
            object Label21: TLabel
              Left = 568
              Top = 4
              Width = 70
              Height = 13
              Caption = 'Data Cadastro'
            end
            object ECodigoParceiro: TDBEdit
              Left = 4
              Top = 23
              Width = 121
              Height = 21
              DataField = 'SEQUENCIA'
              TabOrder = 0
              OnEnter = ECodigoParceiroEnter
            end
            object PDATACADASTRO: TDateTimePicker
              Left = 568
              Top = 23
              Width = 145
              Height = 21
              BiDiMode = bdLeftToRight
              Date = 42416.819279560190000000
              Time = 42416.819279560190000000
              ParentBiDiMode = False
              TabOrder = 1
              OnChange = PDATACADASTROChange
            end
          end
        end
      end
      object TsCliente: TTabSheet
        Tag = 1
        Caption = 'Cliente'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Splitter2: TSplitter
          Left = 0
          Top = 415
          Width = 883
          Height = 5
          Cursor = crVSplit
          Align = alBottom
          ExplicitTop = 376
        end
        object Panel3: TPanel
          Left = 0
          Top = 420
          Width = 883
          Height = 121
          Align = alBottom
          TabOrder = 0
          object GCliente: TStringGrid
            Left = 1
            Top = 1
            Width = 881
            Height = 119
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
            OnDrawCell = GClienteDrawCell
            OnKeyPress = GClienteKeyPress
            OnMouseUp = GClienteMouseUp
            OnSelectCell = GClienteSelectCell
          end
        end
        object TPanel
          Left = 0
          Top = 0
          Width = 883
          Height = 415
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object GBCliente: TGroupBox
            Left = 1
            Top = 96
            Width = 881
            Height = 318
            Align = alClient
            Caption = 'Parceiro'
            TabOrder = 0
            object SpeedButton3: TSpeedButton
              Left = 239
              Top = 80
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
            end
            object Label12: TLabel
              Left = 11
              Top = 63
              Width = 48
              Height = 13
              Caption = 'CPF/CNPJ'
            end
            object Label13: TLabel
              Left = 268
              Top = 63
              Width = 90
              Height = 13
              Caption = 'R.G./INSC.ESTAD.'
            end
            object Label14: TLabel
              Left = 11
              Top = 107
              Width = 27
              Height = 13
              Caption = 'Nome'
            end
            object Label15: TLabel
              Left = 11
              Top = 148
              Width = 71
              Height = 13
              Caption = 'Nome Fantasia'
            end
            object TLabel
              Left = 11
              Top = 193
              Width = 225
              Height = 13
              Caption = 'C'#243'digo Descri'#231#227'o Atividade Econ'#244'mica Principal'
            end
            object Label16: TLabel
              Left = 268
              Top = 193
              Width = 168
              Height = 13
              Caption = 'C'#243'digo Descri'#231#227'o Natureza Jur'#237'dica'
            end
            object Label17: TLabel
              Left = 568
              Top = 63
              Width = 69
              Height = 13
              Caption = 'Data Abertura'
            end
            object Label18: TLabel
              Left = 568
              Top = 107
              Width = 33
              Height = 13
              Caption = 'Regi'#227'o'
            end
            object Label19: TLabel
              Left = 570
              Top = 150
              Width = 61
              Height = 13
              Caption = 'Classifica'#231#227'o'
            end
            object Label20: TLabel
              Left = 11
              Top = 239
              Width = 63
              Height = 13
              Caption = 'Observa'#231#245'es'
            end
            object DBRadioGroup2: TDBRadioGroup
              Left = 11
              Top = 16
              Width = 222
              Height = 41
              Caption = 'Tipo Parceiro'
              Columns = 2
              DataField = 'TIPO'
              Items.Strings = (
                'Pessoa F'#237'sica'
                'Pessoa Juridica')
              TabOrder = 0
              Values.Strings = (
                '0'
                '1')
            end
            object DBEdit8: TDBEdit
              Left = 11
              Top = 80
              Width = 222
              Height = 21
              DataField = 'CPFCNPJ'
              TabOrder = 1
            end
            object DBEdit9: TDBEdit
              Left = 268
              Top = 80
              Width = 197
              Height = 21
              DataField = 'REGISTRO'
              TabOrder = 2
            end
            object DBEdit10: TDBEdit
              Left = 11
              Top = 123
              Width = 454
              Height = 21
              DataField = 'NOME'
              TabOrder = 3
            end
            object DBEdit11: TDBEdit
              Left = 11
              Top = 166
              Width = 454
              Height = 21
              DataField = 'NOMEFANTASIA'
              TabOrder = 4
            end
            object DBEdit12: TDBEdit
              Left = 11
              Top = 212
              Width = 222
              Height = 21
              DataField = 'ATIVIDADEECONOMICA'
              TabOrder = 5
            end
            object DBEdit13: TDBEdit
              Left = 268
              Top = 212
              Width = 197
              Height = 21
              DataField = 'NATUREZAJURIDICA'
              TabOrder = 6
            end
            object DBMemo2: TDBMemo
              Left = 11
              Top = 258
              Width = 454
              Height = 45
              DataField = 'OBSERVACAO'
              TabOrder = 7
            end
            object DBLookupComboBox5: TDBLookupComboBox
              Left = 568
              Top = 123
              Width = 145
              Height = 21
              DataField = 'REGIAOSEQ'
              TabOrder = 8
            end
            object DBLookupComboBox6: TDBLookupComboBox
              Left = 568
              Top = 166
              Width = 310
              Height = 21
              DataField = 'CLASSIFICACAOSEQ'
              TabOrder = 9
            end
            object CDATAABERTURA: TDateTimePicker
              Left = 568
              Top = 80
              Width = 145
              Height = 21
              Date = 42416.852359016200000000
              Time = 42416.852359016200000000
              TabOrder = 10
              OnChange = CDATAABERTURAChange
            end
          end
          object PCliente: TPanel
            Left = 1
            Top = 1
            Width = 881
            Height = 95
            Align = alTop
            TabOrder = 1
            object SpeedButton2: TSpeedButton
              Left = 138
              Top = 23
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
              OnClick = SpeedButton2Click
            end
            object Label11: TLabel
              Left = 11
              Top = 5
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
            end
            object Label22: TLabel
              Left = 570
              Top = 7
              Width = 70
              Height = 13
              Caption = 'Data Cadastro'
            end
            object Label23: TLabel
              Left = 570
              Top = 48
              Width = 119
              Height = 13
              Caption = 'Data Cadastro Suspenso'
            end
            object ECodigoCliente: TDBEdit
              Left = 11
              Top = 24
              Width = 121
              Height = 21
              DataField = 'SEQUENCIA'
              TabOrder = 0
              OnEnter = ECodigoClienteEnter
            end
            object CDATACADASTRO: TDateTimePicker
              Left = 570
              Top = 23
              Width = 145
              Height = 21
              Date = 42416.852184386570000000
              Time = 42416.852184386570000000
              TabOrder = 1
              OnChange = CDATACADASTROChange
            end
            object CDATASUSPENSO: TDateTimePicker
              Left = 570
              Top = 65
              Width = 145
              Height = 21
              Date = 42416.852296041660000000
              Time = 42416.852296041660000000
              TabOrder = 2
              OnChange = CDATASUSPENSOChange
            end
          end
        end
      end
      object TsFornecedor: TTabSheet
        Tag = 2
        Caption = 'Fornecedor'
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Splitter3: TSplitter
          Left = 0
          Top = 415
          Width = 883
          Height = 5
          Cursor = crVSplit
          Align = alBottom
          ExplicitTop = 408
        end
        object Panel5: TPanel
          Left = 0
          Top = 420
          Width = 883
          Height = 121
          Align = alBottom
          TabOrder = 0
          object GFornecedor: TStringGrid
            Left = 1
            Top = 1
            Width = 881
            Height = 119
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
            OnDrawCell = GFornecedorDrawCell
            OnKeyPress = GFornecedorKeyPress
            OnMouseUp = GFornecedorMouseUp
            OnSelectCell = GFornecedorSelectCell
          end
        end
        object TPanel
          Left = 0
          Top = 0
          Width = 883
          Height = 415
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object Label26: TLabel
            Left = 569
            Top = 49
            Width = 119
            Height = 13
            Caption = 'Data Cadastro Suspenso'
          end
          object GBFornecedor: TGroupBox
            Left = 1
            Top = 96
            Width = 881
            Height = 318
            Align = alClient
            Caption = 'Fornecedor'
            TabOrder = 0
            object SpeedButton5: TSpeedButton
              Left = 239
              Top = 80
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
            end
            object Label27: TLabel
              Left = 11
              Top = 63
              Width = 48
              Height = 13
              Caption = 'CPF/CNPJ'
            end
            object Label28: TLabel
              Left = 268
              Top = 63
              Width = 90
              Height = 13
              Caption = 'R.G./INSC.ESTAD.'
            end
            object Label29: TLabel
              Left = 11
              Top = 107
              Width = 27
              Height = 13
              Caption = 'Nome'
            end
            object Label30: TLabel
              Left = 11
              Top = 148
              Width = 71
              Height = 13
              Caption = 'Nome Fantasia'
            end
            object TLabel
              Left = 11
              Top = 193
              Width = 225
              Height = 13
              Caption = 'C'#243'digo Descri'#231#227'o Atividade Econ'#244'mica Principal'
            end
            object Label31: TLabel
              Left = 268
              Top = 193
              Width = 168
              Height = 13
              Caption = 'C'#243'digo Descri'#231#227'o Natureza Jur'#237'dica'
            end
            object Label32: TLabel
              Left = 568
              Top = 63
              Width = 69
              Height = 13
              Caption = 'Data Abertura'
            end
            object Label33: TLabel
              Left = 568
              Top = 107
              Width = 33
              Height = 13
              Caption = 'Regi'#227'o'
            end
            object Label34: TLabel
              Left = 570
              Top = 150
              Width = 61
              Height = 13
              Caption = 'Classifica'#231#227'o'
            end
            object Label35: TLabel
              Left = 11
              Top = 239
              Width = 63
              Height = 13
              Caption = 'Observa'#231#245'es'
            end
            object DBRadioGroup3: TDBRadioGroup
              Left = 11
              Top = 16
              Width = 222
              Height = 41
              Caption = 'Tipo Fornecedor'
              Columns = 2
              DataField = 'TIPO'
              Items.Strings = (
                'Pessoa F'#237'sica'
                'Pessoa Juridica')
              TabOrder = 0
              Values.Strings = (
                '0'
                '1')
            end
            object DBEdit15: TDBEdit
              Left = 11
              Top = 80
              Width = 222
              Height = 21
              DataField = 'CPFCNPJ'
              TabOrder = 1
            end
            object DBEdit16: TDBEdit
              Left = 268
              Top = 80
              Width = 197
              Height = 21
              DataField = 'REGISTRO'
              TabOrder = 2
            end
            object DBEdit17: TDBEdit
              Left = 11
              Top = 123
              Width = 454
              Height = 21
              DataField = 'NOME'
              TabOrder = 3
            end
            object DBEdit18: TDBEdit
              Left = 11
              Top = 166
              Width = 454
              Height = 21
              DataField = 'NOMEFANTASIA'
              TabOrder = 4
            end
            object DBEdit19: TDBEdit
              Left = 11
              Top = 212
              Width = 222
              Height = 21
              DataField = 'ATIVIDADEECONOMICA'
              TabOrder = 5
            end
            object DBEdit20: TDBEdit
              Left = 268
              Top = 212
              Width = 197
              Height = 21
              DataField = 'NATUREZAJURIDICA'
              TabOrder = 6
            end
            object DBMemo3: TDBMemo
              Left = 11
              Top = 258
              Width = 454
              Height = 55
              DataField = 'OBSERVACAO'
              TabOrder = 7
            end
            object DBLookupComboBox11: TDBLookupComboBox
              Left = 568
              Top = 123
              Width = 145
              Height = 21
              DataField = 'REGIAOSEQ'
              TabOrder = 8
            end
            object DBLookupComboBox12: TDBLookupComboBox
              Left = 568
              Top = 166
              Width = 310
              Height = 21
              DataField = 'CLASSIFICACAOSEQ'
              TabOrder = 9
            end
            object FDATAABERTURA: TDateTimePicker
              Left = 568
              Top = 80
              Width = 145
              Height = 21
              Date = 42416.852359016200000000
              Time = 42416.852359016200000000
              TabOrder = 10
              OnChange = FDATAABERTURAChange
            end
          end
          object PFornecedor: TPanel
            Left = 1
            Top = 1
            Width = 881
            Height = 95
            Align = alTop
            TabOrder = 1
            object SpeedButton4: TSpeedButton
              Left = 131
              Top = 24
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
              OnClick = SpeedButton4Click
            end
            object Label25: TLabel
              Left = 569
              Top = 8
              Width = 70
              Height = 13
              Caption = 'Data Cadastro'
            end
            object Label24: TLabel
              Left = 4
              Top = 6
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
            end
            object ECodigoFornecedor: TDBEdit
              Left = 4
              Top = 25
              Width = 121
              Height = 21
              DataField = 'SEQUENCIA'
              TabOrder = 0
              OnEnter = ECodigoFornecedorEnter
            end
            object FDATACADASTRO: TDateTimePicker
              Left = 569
              Top = 24
              Width = 145
              Height = 21
              Date = 42416.852184386570000000
              Time = 42416.852184386570000000
              TabOrder = 1
              OnChange = FDATACADASTROChange
            end
            object FDATASUSPENSO: TDateTimePicker
              Left = 569
              Top = 66
              Width = 145
              Height = 21
              Date = 42416.852296041660000000
              Time = 42416.852296041660000000
              TabOrder = 2
              OnChange = FDATASUSPENSOChange
            end
          end
        end
      end
      object TsEndereco: TTabSheet
        Tag = 3
        Caption = 'Endere'#231'o'
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Splitter4: TSplitter
          Left = 0
          Top = 323
          Width = 883
          Height = 5
          Cursor = crVSplit
          Align = alBottom
          ExplicitTop = 417
        end
        object Panel7: TPanel
          Left = 0
          Top = 328
          Width = 883
          Height = 213
          Align = alBottom
          TabOrder = 0
          object GEndereço: TStringGrid
            Left = 1
            Top = 1
            Width = 881
            Height = 211
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
          end
        end
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 883
          Height = 323
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object Label36: TLabel
            Left = 1
            Top = 62
            Width = 19
            Height = 13
            Caption = 'CEP'
          end
          object SpeedButton6: TSpeedButton
            Left = 128
            Top = 80
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
          end
          object Label37: TLabel
            Left = 561
            Top = 110
            Width = 62
            Height = 13
            Caption = 'N'#250'mero/Lote'
          end
          object Label38: TLabel
            Left = 1
            Top = 155
            Width = 28
            Height = 13
            Caption = 'Bairro'
          end
          object Label39: TLabel
            Left = 1
            Top = 14
            Width = 68
            Height = 13
            Caption = 'Tipo Endere'#231'o'
          end
          object Label40: TLabel
            Left = 236
            Top = 155
            Width = 43
            Height = 13
            Caption = 'Munic'#237'pio'
          end
          object Label41: TLabel
            Left = 0
            Top = 110
            Width = 78
            Height = 13
            Caption = 'Tipo Logradouro'
          end
          object Label42: TLabel
            Left = 169
            Top = 110
            Width = 55
            Height = 13
            Caption = 'Logradouro'
          end
          object Label43: TLabel
            Left = 561
            Top = 155
            Width = 13
            Height = 13
            Caption = 'UF'
          end
          object DBEdit21: TDBEdit
            Left = 1
            Top = 81
            Width = 121
            Height = 21
            DataField = 'SEQUENCIA'
            TabOrder = 0
          end
          object DBLookupComboBox15: TDBLookupComboBox
            Left = 1
            Top = 33
            Width = 150
            Height = 21
            TabOrder = 1
          end
          object DBEdit22: TDBEdit
            Left = 1
            Top = 174
            Width = 223
            Height = 21
            DataField = 'SEQUENCIA'
            TabOrder = 2
          end
          object DBEdit24: TDBEdit
            Left = 169
            Top = 129
            Width = 376
            Height = 21
            DataField = 'SEQUENCIA'
            TabOrder = 3
          end
          object DBEdit25: TDBEdit
            Left = 236
            Top = 174
            Width = 309
            Height = 21
            DataField = 'SEQUENCIA'
            TabOrder = 4
          end
          object DBEdit26: TDBEdit
            Left = 561
            Top = 174
            Width = 64
            Height = 21
            DataField = 'SEQUENCIA'
            TabOrder = 5
          end
          object DBEdit27: TDBEdit
            Left = 561
            Top = 129
            Width = 64
            Height = 21
            DataField = 'SEQUENCIA'
            TabOrder = 6
          end
          object DBLookupComboBox16: TDBLookupComboBox
            Left = 1
            Top = 129
            Width = 150
            Height = 21
            TabOrder = 7
          end
        end
      end
      object TsContato: TTabSheet
        Tag = 4
        Caption = 'Contato'
        ImageIndex = 4
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Splitter5: TSplitter
          Left = 0
          Top = 363
          Width = 883
          Height = 5
          Cursor = crVSplit
          Align = alBottom
          ExplicitTop = 0
        end
        object Panel9: TPanel
          Left = 0
          Top = 368
          Width = 883
          Height = 173
          Align = alBottom
          TabOrder = 0
          object GContato: TStringGrid
            Left = 1
            Top = 1
            Width = 881
            Height = 171
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
            OnDrawCell = GContatoDrawCell
            OnKeyPress = GContatoKeyPress
            OnMouseUp = GContatoMouseUp
            OnSelectCell = GContatoSelectCell
          end
        end
        object PContato: TPanel
          Left = 0
          Top = 0
          Width = 883
          Height = 363
          Align = alClient
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object Label44: TLabel
            Left = 191
            Top = 14
            Width = 42
            Height = 13
            Caption = 'Telefone'
          end
          object Label45: TLabel
            Left = 575
            Top = 14
            Width = 35
            Height = 13
            Caption = 'Fun'#231#227'o'
          end
          object Label47: TLabel
            Left = 1
            Top = 14
            Width = 39
            Height = 13
            Caption = 'Contato'
          end
          object Label49: TLabel
            Left = 344
            Top = 14
            Width = 24
            Height = 13
            Caption = 'Email'
          end
          object Label50: TLabel
            Left = 701
            Top = 14
            Width = 69
            Height = 13
            Caption = 'Departamento'
          end
          object Label46: TLabel
            Left = 1
            Top = 62
            Width = 18
            Height = 13
            Caption = 'Site'
          end
          object Label48: TLabel
            Left = 344
            Top = 62
            Width = 29
            Height = 13
            Caption = 'Skype'
          end
          object Label51: TLabel
            Left = 344
            Top = 110
            Width = 49
            Height = 13
            Caption = 'Instagram'
          end
          object Label52: TLabel
            Left = 344
            Top = 158
            Width = 46
            Height = 13
            Caption = 'Facebook'
          end
          object Label53: TLabel
            Left = 344
            Top = 206
            Width = 34
            Height = 13
            Caption = 'Twitter'
          end
          object Label54: TLabel
            Left = 344
            Top = 254
            Width = 50
            Height = 13
            Caption = 'WhatsApp'
          end
          object Label55: TLabel
            Left = 344
            Top = 302
            Width = 43
            Height = 13
            Caption = 'HabgOut'
          end
          object DBEdit23: TDBEdit
            Left = 1
            Top = 33
            Width = 184
            Height = 21
            DataField = 'DESCRICAO'
            TabOrder = 0
          end
          object DBEdit28: TDBEdit
            Left = 701
            Top = 33
            Width = 172
            Height = 21
            DataField = 'DEPARTAMENTO'
            TabOrder = 1
          end
          object DBEdit29: TDBEdit
            Left = 191
            Top = 33
            Width = 149
            Height = 21
            DataField = 'TELEFONE'
            TabOrder = 2
          end
          object DBEdit30: TDBEdit
            Left = 344
            Top = 33
            Width = 225
            Height = 21
            DataField = 'EMAIL'
            TabOrder = 3
          end
          object DBEdit32: TDBEdit
            Left = 575
            Top = 33
            Width = 120
            Height = 21
            DataField = 'FUNCAO'
            TabOrder = 4
          end
          object DBEdit31: TDBEdit
            Left = 1
            Top = 81
            Width = 184
            Height = 21
            DataField = 'SITE'
            TabOrder = 5
          end
          object DBEdit33: TDBEdit
            Left = 344
            Top = 81
            Width = 225
            Height = 21
            DataField = 'SKYPE'
            TabOrder = 6
          end
          object DBEdit34: TDBEdit
            Left = 344
            Top = 129
            Width = 225
            Height = 21
            DataField = 'INSTAGRAM'
            TabOrder = 7
          end
          object DBEdit35: TDBEdit
            Left = 344
            Top = 177
            Width = 225
            Height = 21
            DataField = 'FACEBOOK'
            TabOrder = 8
          end
          object DBEdit36: TDBEdit
            Left = 344
            Top = 225
            Width = 225
            Height = 21
            DataField = 'TWITTER'
            TabOrder = 9
          end
          object DBEdit37: TDBEdit
            Left = 344
            Top = 273
            Width = 225
            Height = 21
            DataField = 'WHATSAPP'
            TabOrder = 10
          end
          object DBEdit38: TDBEdit
            Left = 344
            Top = 321
            Width = 225
            Height = 21
            DataField = 'HABGOUT'
            TabOrder = 11
          end
        end
      end
    end
  end
end
