object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 313
  Width = 215
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=db.mdb;Persist Secu' +
      'rity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 16
  end
  object BookTable: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082
    Left = 72
    Top = 72
    object BookTableKey1: TAutoIncField
      FieldName = 'Key1'
      ReadOnly = True
      Visible = False
    end
    object BookTableФамилия: TWideStringField
      FieldName = #1060#1072#1084#1080#1083#1080#1103
      Size = 50
    end
    object BookTableИмя: TWideStringField
      FieldName = #1048#1084#1103
      Size = 50
    end
    object BookTableТелефон: TWideStringField
      DisplayWidth = 20
      FieldName = #1058#1077#1083#1077#1092#1086#1085
      EditMask = '+7000-000-00-00;1;_'
    end
    object BookTableemail: TWideStringField
      FieldName = 'e-mail'
    end
    object BookTableTown: TStringField
      DisplayLabel = #1043#1086#1088#1086#1076
      FieldKind = fkLookup
      FieldName = 'Town'
      LookupDataSet = TownTable
      LookupKeyFields = 'Key1'
      LookupResultField = #1053#1072#1079#1074#1072#1085#1080#1077' '#1075#1086#1088#1086#1076#1072
      KeyFields = #1043#1086#1088#1086#1076
      Lookup = True
    end
    object BookTableГород: TIntegerField
      FieldName = #1043#1086#1088#1086#1076
      Visible = False
    end
    object BookTableДата: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      FieldName = #1044#1072#1090#1072
      DisplayFormat = 'dddddd'
      EditMask = '99/99/9999'
    end
    object BookTableМобильник: TBooleanField
      FieldName = #1052#1086#1073#1080#1083#1100#1085#1080#1082
      DisplayValues = #1044#1072';'#1053#1077#1090
    end
  end
  object BookSource: TDataSource
    DataSet = BookTable
    Left = 16
    Top = 72
  end
  object TownSource: TDataSource
    DataSet = TownTable
    Left = 16
    Top = 120
  end
  object TownTable: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1075#1086#1088#1086#1076#1086#1074
    Left = 72
    Top = 120
    object TownTableKey1: TAutoIncField
      FieldName = 'Key1'
      ReadOnly = True
      Visible = False
    end
    object TownTableНазваниегорода: TWideStringField
      FieldName = #1053#1072#1079#1074#1072#1085#1080#1077' '#1075#1086#1088#1086#1076#1072
      Size = 30
    end
  end
end
