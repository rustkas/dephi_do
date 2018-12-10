object StrToIntForm: TStrToIntForm
  Left = 0
  Top = 0
  Caption = 'String to Integer converter'
  ClientHeight = 103
  ClientWidth = 306
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
    Left = 8
    Top = 19
    Width = 32
    Height = 13
    Caption = 'String:'
  end
  object Label2: TLabel
    Left = 8
    Top = 46
    Width = 40
    Height = 13
    Caption = 'Integer:'
  end
  object StringEdit: TEdit
    Left = 56
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object IntToStrEdit: TEdit
    Left = 56
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object StrToIntButton: TButton
    Left = 183
    Top = 14
    Width = 75
    Height = 25
    Caption = #9660
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 2
    OnClick = StrToIntButtonClick
  end
  object IntToStrButton: TButton
    Left = 183
    Top = 43
    Width = 75
    Height = 25
    Caption = #9650
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 3
    OnClick = IntToStrButtonClick
  end
end
