object C_copy: TC_copy
  Left = 0
  Top = 0
  Caption = 'Copy'
  ClientHeight = 293
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 8
    Width = 185
    Height = 241
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 233
    Top = 8
    Width = 185
    Height = 241
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Button1: TButton
    Left = 110
    Top = 255
    Width = 75
    Height = 25
    Caption = '>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 233
    Top = 255
    Width = 75
    Height = 25
    Caption = '<'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
end
