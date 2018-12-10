object FListBoxMultiSelect: TFListBoxMultiSelect
  Left = 0
  Top = 0
  Caption = 'ListBox multiselect'
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
  object MultiListBox: TListBox
    Left = 8
    Top = 8
    Width = 177
    Height = 161
    ItemHeight = 13
    Items.Strings = (
      #1055#1077#1090#1088#1086#1074
      #1048#1074#1072#1085#1086#1074
      #1057#1080#1076#1086#1088#1086#1074
      #1057#1084#1080#1088#1085#1086#1074
      #1050#1086#1074#1072#1083#1105#1074
      #1050#1080#1088#1082#1086#1088#1086#1074)
    MultiSelect = True
    TabOrder = 0
  end
  object ResultMemo: TMemo
    Left = 216
    Top = 8
    Width = 185
    Height = 161
    Lines.Strings = (
      'ResultMemo')
    TabOrder = 1
  end
  object CheckButton: TButton
    Left = 152
    Top = 184
    Width = 75
    Height = 25
    Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100
    TabOrder = 2
    OnClick = CheckButtonClick
  end
end
