object PrintListViewForm: TPrintListViewForm
  Left = 0
  Top = 0
  Caption = 'Print List View'
  ClientHeight = 293
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ListView1: TListView
    Left = 0
    Top = 41
    Width = 426
    Height = 252
    Align = alClient
    Columns = <
      item
        Caption = #1060#1072#1084#1080#1083#1080#1103
        Width = 100
      end
      item
        Caption = #1048#1084#1103
        Width = 100
      end
      item
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        Width = 100
      end
      item
        Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        Width = 100
      end>
    TabOrder = 0
    ViewStyle = vsReport
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 426
    Height = 41
    Align = alTop
    TabOrder = 1
    object Button1: TButton
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
  end
end
