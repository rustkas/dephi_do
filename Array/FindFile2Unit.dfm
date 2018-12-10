object FindFileForm2: TFindFileForm2
  Left = 0
  Top = 0
  Caption = 'Find File'
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
    Left = 16
    Top = 16
    Width = 57
    Height = 13
    Caption = #1063#1090#1086' '#1080#1089#1082#1072#1090#1100
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 57
    Height = 13
    Caption = #1043#1076#1077' '#1080#1089#1082#1072#1090#1100
  end
  object lblSearching: TLabel
    Left = 8
    Top = 224
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object lblFoundFilesCount: TLabel
    Left = 8
    Top = 243
    Width = 3
    Height = 13
  end
  object edLookFor: TEdit
    Left = 80
    Top = 16
    Width = 269
    Height = 21
    TabOrder = 0
    Text = 'Project1.exe'
  end
  object edLookIn: TEdit
    Left = 79
    Top = 53
    Width = 270
    Height = 21
    TabOrder = 1
    Text = 
      'H:\books\delphi\'#1073#1080#1073#1083#1080#1103' Delphi3ed\'#1060#1083#1105#1085#1086#1074' '#1052'.'#1045'. - '#1041#1080#1073#1083#1080#1103' Delphi (3-' +
      #1077' '#1080#1079#1076#1072#1085#1080#1077') - 2011\CD '#1041#1080#1073#1083#1080#1103' Delphi (3-'#1077' '#1080#1079#1076#1072#1085#1080#1077')\'#1055#1088#1080#1084#1077#1088#1099'\'#1043#1083#1072#1074#1072' 1' +
      '0\FindFile2'
  end
  object Button1: TButton
    Left = 274
    Top = 215
    Width = 75
    Height = 25
    Caption = #1048#1089#1082#1072#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 80
    Width = 337
    Height = 129
    Lines.Strings = (
      '')
    ScrollBars = ssBoth
    TabOrder = 3
  end
end
