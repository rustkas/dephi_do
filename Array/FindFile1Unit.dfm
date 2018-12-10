object FindFileForm: TFindFileForm
  Left = 0
  Top = 0
  Caption = 'Find a file'
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
    Top = 8
    Width = 107
    Height = 13
    Caption = #1048#1084#1103' '#1080#1089#1082#1086#1084#1086#1075#1086' '#1092#1072#1081#1083#1072':'
  end
  object Label2: TLabel
    Left = 76
    Top = 35
    Width = 39
    Height = 13
    Caption = #1056#1072#1079#1084#1077#1088':'
  end
  object Edit1: TEdit
    Left = 121
    Top = 5
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 121
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 121
    Top = 59
    Width = 75
    Height = 25
    Caption = #1053#1072#1081#1090#1080
    TabOrder = 2
    OnClick = Button1Click
  end
end
