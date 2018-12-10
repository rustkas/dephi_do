object ScanForm: TScanForm
  Left = 0
  Top = 0
  Caption = 'Scan'
  ClientHeight = 293
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 56
    Width = 393
    Height = 233
  end
  object TrackBar1: TTrackBar
    Left = 8
    Top = 16
    Width = 377
    Height = 33
    TabOrder = 0
    OnChange = TrackBar1Change
  end
  object Button1: TButton
    Left = 8
    Top = 300
    Width = 145
    Height = 25
    Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1082#1072#1088#1090#1080#1085#1082#1091
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 328
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Grayscale'
    TabOrder = 2
    OnClick = Button2Click
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 344
    Top = 208
  end
end
