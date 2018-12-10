object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1079#1072#1087#1091#1089#1082#1072' '#1087#1086#1076#1087#1088#1086#1075#1088#1072#1084#1084
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
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Memo'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 89
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Form print'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 170
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Print Image'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 251
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Graphics'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 332
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Print ListView'
    TabOrder = 4
    OnClick = Button5Click
  end
end
