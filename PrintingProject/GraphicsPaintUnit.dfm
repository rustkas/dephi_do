object GraphicsPaintForm: TGraphicsPaintForm
  Left = 288
  Top = 127
  Caption = #1055#1077#1095#1072#1090#1100' '#1075#1088#1072#1092#1080#1082#1080
  ClientHeight = 293
  ClientWidth = 396
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox1: TPaintBox
    Left = 8
    Top = 40
    Width = 369
    Height = 217
    OnPaint = PaintBox1Paint
  end
  object PrintButton: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = #1055#1077#1095#1072#1090#1100
    TabOrder = 0
    OnClick = PrintButtonClick
  end
end
