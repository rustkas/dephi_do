object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MDI '#1086#1082#1085#1086
  ClientHeight = 296
  ClientWidth = 394
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 105
    Height = 296
    Align = alLeft
    TabOrder = 0
    object CreateButton: TButton
      Left = 8
      Top = 8
      Width = 89
      Height = 25
      Caption = #1057#1086#1079#1076#1072#1090#1100
      TabOrder = 0
      OnClick = CreateButtonClick
    end
    object Button1: TButton
      Left = 8
      Top = 39
      Width = 89
      Height = 25
      Caption = #1047#1072#1075#1086#1083#1086#1074#1086#1082
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 8
      Top = 70
      Width = 89
      Height = 25
      Caption = #1042#1099#1089#1090#1088#1086#1080#1090#1100' '#1086#1082#1085#1072
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 288
      Top = 8
      Width = 75
      Height = 25
      Caption = #1057#1083#1077#1076#1091#1102#1097#1077#1077
      TabOrder = 3
      OnClick = Button3Click
    end
  end
end
