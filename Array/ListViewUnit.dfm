object ListViewForm: TListViewForm
  Left = 212
  Top = 107
  Caption = #1060#1072#1081#1083#1086#1074#1099#1081' '#1084#1077#1085#1077#1076#1078#1077#1088
  ClientHeight = 293
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ListView1: TListView
    Left = 0
    Top = 41
    Width = 426
    Height = 252
    Align = alClient
    Columns = <>
    TabOrder = 0
    OnDblClick = ListView1DblClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 426
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 96
      Top = 16
      Width = 62
      Height = 13
      Caption = #1044#1080#1088#1077#1082#1090#1086#1088#1080#1103
    end
    object DirUpButton: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = #1053#1072#1079#1072#1076
      TabOrder = 0
    end
    object DirectoryEdit: TEdit
      Left = 168
      Top = 14
      Width = 249
      Height = 21
      TabOrder = 1
      Text = 'c:\'
    end
  end
end
