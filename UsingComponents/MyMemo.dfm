object FMemo: TFMemo
  Left = 0
  Top = 0
  Caption = 'Multiline input'
  ClientHeight = 293
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ClearButton: TButton
    Left = 8
    Top = 260
    Width = 75
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 0
    OnClick = ClearButtonClick
  end
  object MainMemo: TMemo
    Left = 8
    Top = 5
    Width = 410
    Height = 249
    Lines.Strings = (
      'This is multiline input field.')
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object AddButton: TButton
    Left = 104
    Top = 260
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = AddButtonClick
  end
  object DeleteButton: TButton
    Left = 200
    Top = 260
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = DeleteButtonClick
  end
  object EditButton: TButton
    Left = 296
    Top = 260
    Width = 75
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 4
    OnClick = EditButtonClick
  end
end
