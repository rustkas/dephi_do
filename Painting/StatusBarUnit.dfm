object StatusBarForm: TStatusBarForm
  Left = 0
  Top = 0
  Caption = #1062#1074#1077#1090#1085#1086#1081' '#1089#1090#1072#1090#1091#1089
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
  object Label2: TLabel
    Left = 32
    Top = 16
    Width = 134
    Height = 22
    Caption = #1053#1072#1074#1077#1076#1080' '#1085#1072' '#1084#1077#1085#1103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 33
    Top = 17
    Width = 134
    Height = 22
    Hint = #1071' '#1093#1086#1088#1086#1096#1080#1081' '#1084#1072#1083#1100#1095#1080#1082'. '#1052#1085#1077' '#1087#1086#1088#1072' '#1089#1087#1072#1090#1100
    Caption = #1053#1072#1074#1077#1076#1080' '#1085#1072' '#1084#1077#1085#1103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Transparent = True
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 274
    Width = 426
    Height = 19
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clGrayText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    Panels = <
      item
        Width = 50
      end>
    UseSystemFont = False
  end
  object RadioButton1: TRadioButton
    Left = 40
    Top = 56
    Width = 113
    Height = 17
    Hint = #1042#1099#1087#1091#1082#1083#1072#1103
    Caption = #1042#1099#1087#1091#1082#1083#1072#1103
    Checked = True
    TabOrder = 1
    TabStop = True
  end
  object RadioButton2: TRadioButton
    Left = 40
    Top = 88
    Width = 113
    Height = 17
    Hint = #1042#1086#1075#1085#1091#1090#1072#1103
    Caption = #1042#1086#1075#1085#1091#1090#1072#1103
    TabOrder = 2
  end
  object ApplicationEvents1: TApplicationEvents
    OnHint = ApplicationEvents1Hint
    Left = 368
    Top = 224
  end
end
