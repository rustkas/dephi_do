object CheckListBoxForm: TCheckListBoxForm
  Left = 211
  Top = 106
  Caption = #1055#1088#1080#1084#1077#1088' '#1088#1072#1073#1086#1090#1099' '#1089' '#1058'CheckListBox'
  ClientHeight = 145
  ClientWidth = 298
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 209
    Height = 13
    Caption = #1063#1090#1086' '#1074#1072#1089' '#1073#1086#1083#1100#1096#1077' '#1074#1089#1077#1075#1086' '#1080#1085#1090#1077#1088#1077#1089#1091#1077#1090':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CheckListBox1: TCheckListBox
    Left = 8
    Top = 32
    Width = 273
    Height = 65
    Columns = 2
    DoubleBuffered = True
    ItemHeight = 13
    Items.Strings = (
      #1046#1077#1085#1097#1080#1085#1099
      #1050#1080#1085#1086
      #1050#1086#1084#1087#1100#1102#1090#1077#1088#1099
      #1055#1088#1086#1075#1088#1072#1084#1084#1080#1088#1086#1074#1072#1085#1080#1077
      #1057#1087#1086#1088#1090
      #1060#1091#1090#1073#1086#1083)
    ParentDoubleBuffered = False
    Sorted = True
    TabOrder = 0
  end
  object OKButton: TButton
    Left = 104
    Top = 104
    Width = 75
    Height = 25
    Caption = #1054#1050
    TabOrder = 1
    OnClick = OKButtonClick
  end
end
