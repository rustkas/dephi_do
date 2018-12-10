object FEscapedButton: TFEscapedButton
  Left = 0
  Top = 0
  Width = 434
  Height = 320
  AutoScroll = True
  Caption = 'Escaped button'
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
    Left = 160
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Click me!'
    TabOrder = 0
    OnMouseMove = Button1MouseMove
  end
end
