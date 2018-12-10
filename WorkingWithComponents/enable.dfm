object FEnable: TFEnable
  Left = 0
  Top = 0
  Caption = 'Enable'
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
    Left = 88
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Enabled=true'
    TabOrder = 0
  end
  object Button2: TButton
    Left = 88
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Enabled=false'
    Enabled = False
    TabOrder = 1
  end
end
