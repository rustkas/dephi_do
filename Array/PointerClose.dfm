object PointerForm: TPointerForm
  Left = 0
  Top = 0
  Caption = 'Pointer Form'
  ClientHeight = 125
  ClientWidth = 196
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 39
    Width = 161
    Height = 21
    TabOrder = 1
  end
end
