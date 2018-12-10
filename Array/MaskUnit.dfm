object MaskStringInputForm: TMaskStringInputForm
  Left = 0
  Top = 0
  Caption = 'Mask string input'
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
    Left = 16
    Top = 28
    Width = 71
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1076#1072#1090#1091
  end
  object Label2: TLabel
    Left = 16
    Top = 55
    Width = 71
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1076#1072#1090#1091
  end
  object MaskEdit1: TMaskEdit
    Left = 96
    Top = 24
    Width = 120
    Height = 21
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 0
    Text = '  .  .  '
  end
  object MaskEdit2: TMaskEdit
    Left = 96
    Top = 51
    Width = 118
    Height = 21
    EditMask = '99/99/00;1;_'
    MaxLength = 8
    TabOrder = 1
    Text = '  .  .  '
  end
end
