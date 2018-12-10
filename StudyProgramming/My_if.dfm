object F_if: TF_if
  Left = 0
  Top = 0
  Caption = 'if then else'
  ClientHeight = 125
  ClientWidth = 333
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
    Width = 111
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1083#1102#1073#1086#1077' '#1095#1080#1089#1083#1086
  end
  object Label2: TLabel
    Left = 72
    Top = 48
    Width = 53
    Height = 13
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
  end
  object CalculateButton: TButton
    Left = 112
    Top = 88
    Width = 75
    Height = 25
    Caption = #1055#1086#1076#1089#1095#1080#1090#1072#1090#1100
    ModalResult = 1
    TabOrder = 0
    OnClick = CalculateButtonClick
  end
  object EndEdit: TEdit
    Left = 128
    Top = 12
    Width = 129
    Height = 21
    TabOrder = 1
  end
  object ResultEdit: TEdit
    Left = 128
    Top = 44
    Width = 129
    Height = 21
    Enabled = False
    TabOrder = 2
  end
end
