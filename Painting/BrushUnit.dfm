object BrushForm: TBrushForm
  Left = 0
  Top = 0
  Caption = 'Brush'
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
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1094#1074#1077#1090
    TabOrder = 0
    OnClick = Button1Click
    ExplicitLeft = 224
    ExplicitTop = 200
    ExplicitWidth = 105
  end
  object ColorDialog1: TColorDialog
    Left = 392
    Top = 232
  end
end
