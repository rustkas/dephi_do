object TextForm: TTextForm
  Left = 0
  Top = 0
  Caption = 'Text'
  ClientHeight = 157
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object ChangeColorButton: TButton
    Left = 8
    Top = 16
    Width = 121
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1094#1074#1077#1090
    TabOrder = 0
    OnClick = ChangeColorButtonClick
  end
  object ChangeFontButton: TButton
    Left = 8
    Top = 47
    Width = 121
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1096#1088#1080#1092#1090
    TabOrder = 1
    OnClick = ChangeFontButtonClick
  end
  object ColorDialog1: TColorDialog
    Left = 392
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 392
    Top = 48
  end
end
