object FRadioGroup: TFRadioGroup
  Left = 0
  Top = 0
  Caption = 'RadioGroup'
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
  object Label1: TLabel
    Left = 152
    Top = 104
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 16
    Width = 121
    Height = 113
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1087#1077#1095#1072#1090#1080
    Items.Strings = (
      #1042#1089#1105
      #1042#1099#1076#1077#1083#1077#1085#1085#1099#1077
      #1058#1077#1082#1091#1097#1091#1102)
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
  object Button1: TButton
    Left = 152
    Top = 24
    Width = 75
    Height = 25
    Caption = #1053#1072#1078#1084#1080' '#1084#1077#1085#1103
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 152
    Top = 64
    Width = 73
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
end
