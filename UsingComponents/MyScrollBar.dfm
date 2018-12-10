object FScrollBar: TFScrollBar
  Left = 180
  Top = 105
  Caption = 'ScrollBar'
  ClientHeight = 164
  ClientWidth = 280
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
    Left = 128
    Top = 56
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Label2: TLabel
    Left = 227
    Top = 88
    Width = 10
    Height = 17
    Caption = '0'
  end
  object ScrollBar1: TScrollBar
    Left = 16
    Top = 24
    Width = 233
    Height = 17
    PageSize = 0
    TabOrder = 0
    OnChange = ScrollBar1Change
  end
  object ScrollBar2: TScrollBar
    Left = 255
    Top = 24
    Width = 16
    Height = 121
    Kind = sbVertical
    PageSize = 0
    TabOrder = 1
    OnChange = ScrollBar2Change
  end
end
