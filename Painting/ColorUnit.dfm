object ColorSelectForm: TColorSelectForm
  Left = 0
  Top = 0
  Caption = #1042#1099#1073#1086#1088' '#1094#1074#1077#1090#1072
  ClientHeight = 203
  ClientWidth = 488
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
  object Label1: TLabel
    Left = 288
    Top = 32
    Width = 44
    Height = 13
    Caption = #1050#1088#1072#1089#1085#1099#1081
  end
  object Label2: TLabel
    Left = 288
    Top = 64
    Width = 44
    Height = 13
    Caption = #1047#1077#1083#1105#1085#1099#1081
  end
  object Label3: TLabel
    Left = 288
    Top = 104
    Width = 42
    Height = 13
    Caption = #1043#1086#1083#1091#1073#1086#1081
  end
  object RedEdit: TEdit
    Left = 344
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '0'
    OnChange = RedEditChange
  end
  object GreenEdit: TEdit
    Left = 344
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '0'
    OnChange = RedEditChange
  end
  object BlueEdit: TEdit
    Left = 344
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '0'
    OnChange = RedEditChange
  end
  object Button1: TButton
    Left = 328
    Top = 152
    Width = 105
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1094#1074#1077#1090
    TabOrder = 3
    OnClick = Button1Click
  end
  object ColorDialog1: TColorDialog
    Left = 448
    Top = 152
  end
end
