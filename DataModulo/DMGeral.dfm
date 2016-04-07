object FDmGeral: TFDmGeral
  OldCreateOrder = False
  Height = 284
  Width = 288
  object FdConexao: TFDConnection
    Params.Strings = (
      'Database=XE'
      'User_Name=ERPSISTEMAS'
      'Password=1245'
      'DriverID=Ora')
    LoginPrompt = False
    Left = 48
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 136
    Top = 134
  end
  object FDPhysOracleDriverLink1: TFDPhysOracleDriverLink
    Left = 128
    Top = 16
  end
  object FDCommand1: TFDCommand
    Connection = FdConexao
    Left = 40
    Top = 128
  end
end
