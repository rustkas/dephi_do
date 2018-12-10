object PenForm: TPenForm
  Left = 0
  Top = 0
  Caption = 'Using Pen'
  ClientHeight = 293
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
  object Button1: TButton
    Left = 0
    Top = 268
    Width = 426
    Height = 25
    Align = alBottom
    Caption = 'Change Color'
    TabOrder = 0
    OnClick = Button1Click
  end
  object UpDown1: TUpDown
    Left = 385
    Top = 72
    Width = 33
    Height = 73
    TabOrder = 1
    OnClick = UpDown1Click
  end
  object ColorDialog1: TColorDialog
    Left = 8
    Top = 224
  end
end
