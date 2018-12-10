object FComboBox: TFComboBox
  Left = 267
  Top = 206
  Caption = #1055#1088#1080#1084#1077#1088' '#1088#1072#1073#1086#1090#1099' '#1089' ComboBox'
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
  object Edit1: TEdit
    Left = 8
    Top = 40
    Width = 241
    Height = 21
    TabOrder = 0
  end
  object AddButton: TButton
    Left = 8
    Top = 72
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = AddButtonClick
  end
  object DelButton: TButton
    Left = 176
    Top = 72
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 2
    OnClick = DelButtonClick
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 8
    Width = 241
    Height = 21
    TabOrder = 3
    Text = 'ComboBox1'
    OnChange = ComboBox1Change
    Items.Strings = (
      #1041#1077#1083#1099#1081
      #1050#1088#1072#1089#1085#1099#1081
      #1046#1105#1083#1090#1099#1081
      #1047#1077#1083#1105#1085#1099#1081
      #1063#1105#1088#1085#1099#1081
      #1054#1088#1072#1085#1078#1077#1074#1099#1081
      #1060#1080#1086#1083#1077#1090#1086#1074#1099#1081
      #1041#1080#1088#1102#1079#1086#1074#1099#1081
      #1057#1072#1083#1072#1090#1085#1077#1074#1099#1081
      #1043#1086#1083#1091#1073#1086#1081
      #1042#1080#1073#1080#1088#1072#1081' '#1089#1077#1073#1077' '#1083#1102#1073#1086#1081' :)')
  end
end
