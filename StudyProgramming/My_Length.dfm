object F_Length: TF_Length
  Left = 0
  Top = 0
  Caption = 'Form1'
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
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 79
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1090#1077#1082#1089#1090':'
  end
  object Label2: TLabel
    Left = 223
    Top = 239
    Width = 114
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1080#1084#1074#1086#1083#1086#1074':'
  end
  object symbol_count: TLabel
    Left = 343
    Top = 239
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 8
    Top = 35
    Width = 329
    Height = 198
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 239
    Width = 75
    Height = 25
    Caption = #1055#1086#1089#1095#1080#1090#1072#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
end
