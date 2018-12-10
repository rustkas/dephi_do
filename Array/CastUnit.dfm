object CastForm: TCastForm
  Left = 0
  Top = 0
  Caption = 'Do cast'
  ClientHeight = 94
  ClientWidth = 305
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
    Caption = 'Do cast'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 200
    Top = 32
    Width = 97
    Height = 54
    Caption = 'Second Button'
    TabOrder = 1
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 61
    Width = 169
    Height = 25
    Caption = 'Bit Button'
    TabOrder = 2
    OnClick = Button1Click
  end
end
