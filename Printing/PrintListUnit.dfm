object PrintListInfoForm: TPrintListInfoForm
  Left = 248
  Top = 145
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1088#1080#1085#1090#1077#1088#1077
  ClientHeight = 346
  ClientWidth = 434
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 152
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1087#1088#1080#1085#1090#1077#1088#1072
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 182
    Height = 13
    Caption = #1057#1087#1080#1089#1086#1082' '#1074#1089#1077#1093' '#1076#1086#1089#1090#1091#1087#1085#1099#1093' '#1087#1088#1080#1085#1090#1077#1088#1086#1074':'
  end
  object Edit1: TEdit
    Left = 176
    Top = 16
    Width = 233
    Height = 21
    ReadOnly = True
    TabOrder = 0
    Text = 'Edit1'
  end
  object ListBox1: TListBox
    Left = 16
    Top = 72
    Width = 393
    Height = 193
    ItemHeight = 13
    TabOrder = 1
  end
  object Button1: TButton
    Left = 16
    Top = 280
    Width = 75
    Height = 25
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 296
    Top = 280
    Width = 107
    Height = 25
    Caption = #1057#1084#1077#1085#1080#1090#1100' '#1087#1088#1080#1085#1090#1077#1088
    TabOrder = 3
    OnClick = Button2Click
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 168
    Top = 280
  end
end
