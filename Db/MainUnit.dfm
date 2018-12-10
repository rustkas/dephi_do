object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Main form'
  ClientHeight = 293
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Connect'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 89
    Top = 8
    Width = 104
    Height = 25
    Caption = 'Manage connection'
    TabOrder = 1
    OnClick = Button2Click
  end
end
