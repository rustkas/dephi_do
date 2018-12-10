object ImageLoadForm: TImageLoadForm
  Left = 0
  Top = 0
  Caption = 'Load image'
  ClientHeight = 252
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
  object Image1: TImage
    Left = 16
    Top = 16
    Width = 145
    Height = 185
  end
  object Button1: TButton
    Left = 120
    Top = 216
    Width = 129
    Height = 25
    Caption = #1054#1090#1082#1088#1099#1090#1100' '#1082#1072#1088#1090#1080#1085#1082#1091
    TabOrder = 0
    OnClick = Button1Click
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'Bitmaps (*.bmp)|*.bmp|Icons (*.ico)|*.ico|Metafiles (*.wmf)|*.wm' +
      'f|JPEG Files|*.jpg'
    Left = 392
    Top = 208
  end
end
