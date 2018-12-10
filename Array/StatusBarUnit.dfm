object StatusBarForm: TStatusBarForm
  Left = 0
  Top = 0
  Caption = 'Status bar'
  ClientHeight = 90
  ClientWidth = 287
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 16
    Width = 75
    Height = 25
    Hint = #1069#1090#1086' '#1082#1085#1086#1087#1082#1072' '#1074#1099#1093#1086#1076#1072
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 0
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 71
    Width = 287
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Width = 50
      end>
  end
  object ApplicationEvents1: TApplicationEvents
    OnHint = ApplicationEvents1Hint
    Left = 136
    Top = 48
  end
end
