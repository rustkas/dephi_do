object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #1043#1083#1072#1074#1085#1072#1103' '#1092#1086#1088#1084#1072
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
  inline TestFrame1: TTestFrame
    Left = 0
    Top = 0
    Width = 420
    Height = 210
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Child form'
    TabOrder = 1
    OnClick = Button1Click
  end
end
