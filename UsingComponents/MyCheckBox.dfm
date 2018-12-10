object FCheckBox: TFCheckBox
  Left = 0
  Top = 0
  Caption = 'CheckBox'
  ClientHeight = 126
  ClientWidth = 240
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MyFirstButton: TButton
    Left = 16
    Top = 80
    Width = 75
    Height = 25
    Caption = #1053#1072#1078#1084#1080
    TabOrder = 0
    OnClick = MyFirstButtonClick
  end
  object AllowCloseCheckBox: TCheckBox
    Left = 16
    Top = 17
    Width = 201
    Height = 17
    Caption = #1056#1072#1079#1088#1077#1096#1080#1090#1100' '#1079#1072#1082#1088#1099#1090#1080#1077' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
    TabOrder = 1
  end
  object EnableButtonCheckbox: TCheckBox
    Left = 16
    Top = 40
    Width = 129
    Height = 17
    Caption = #1054#1090#1082#1083#1102#1095#1080#1090#1100' '#1082#1085#1086#1087#1082#1091
    TabOrder = 2
    OnClick = EnableButtonCheckboxClick
  end
end
