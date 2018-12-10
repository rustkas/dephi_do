object ReadingForm: TReadingForm
  Left = 0
  Top = 0
  Caption = 'Reading'
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
  object TextReadButton: TButton
    Left = 8
    Top = 8
    Width = 97
    Height = 25
    Caption = #1055#1088#1086#1095#1080#1090#1072#1090#1100' '#1090#1077#1082#1089#1090
    TabOrder = 0
    OnClick = TextReadButtonClick
  end
  object ViewTestListBox: TListBox
    Left = 0
    Top = 48
    Width = 426
    Height = 245
    Align = alBottom
    ItemHeight = 13
    TabOrder = 1
  end
  object Button1: TButton
    Left = 111
    Top = 8
    Width = 106
    Height = 25
    Caption = #1055#1088#1086#1095#1080#1090#1072#1090#1100' '#1076#1072#1085#1085#1099#1077
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 223
    Top = 8
    Width = 98
    Height = 25
    Caption = #1047#1072#1087#1080#1089#1072#1090#1100' '#1074' '#1092#1072#1081#1083
    TabOrder = 3
    OnClick = Button2Click
  end
end
