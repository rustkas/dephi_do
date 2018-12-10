object F_For: TF_For
  Left = 0
  Top = 0
  Caption = 'for to do'
  ClientHeight = 114
  ClientWidth = 304
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
    Left = 16
    Top = 16
    Width = 149
    Height = 13
    Caption = #1050#1086#1085#1077#1095#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1089#1095#1105#1090#1095#1080#1082#1072
  end
  object Label2: TLabel
    Left = 121
    Top = 48
    Width = 53
    Height = 13
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
  end
  object CalculateButton: TButton
    Left = 88
    Top = 80
    Width = 75
    Height = 25
    Caption = #1055#1086#1076#1089#1095#1080#1090#1072#1090#1100
    ModalResult = 1
    TabOrder = 0
    OnClick = CalculateButtonClick
  end
  object EndEdit: TEdit
    Left = 183
    Top = 12
    Width = 102
    Height = 21
    TabOrder = 1
  end
  object ResultEdit: TEdit
    Left = 183
    Top = 44
    Width = 102
    Height = 21
    TabOrder = 2
  end
end
