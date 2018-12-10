object ConnectForm: TConnectForm
  Left = 0
  Top = 0
  Caption = 'Do connection'
  ClientHeight = 293
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 426
    Height = 153
    Align = alTop
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=db.mdb;Persist Secu' +
      'rity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 8
    Top = 248
  end
  object BookTable: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082
    Left = 80
    Top = 248
  end
  object DataSource1: TDataSource
    DataSet = BookTable
    Left = 144
    Top = 248
  end
end
