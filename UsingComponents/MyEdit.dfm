object FTEdit: TFTEdit
  Left = 0
  Top = 0
  Caption = 'Edit'
  ClientHeight = 117
  ClientWidth = 143
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 8
    Top = 16
    Width = 121
    Height = 21
    PasswordChar = #10084
    TabOrder = 0
  end
  object MyFirstButton: TButton
    Left = 32
    Top = 70
    Width = 75
    Height = 25
    Caption = ' '#1053#1072#1078#1084#1080' '#1084#1077#1085#1103'!'
    TabOrder = 1
    OnClick = MyFirstButtonClick
  end
  object Edit2: TEdit
    Left = 8
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 2
  end
end
