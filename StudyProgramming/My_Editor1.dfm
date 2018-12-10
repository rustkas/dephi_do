object F_delete_pos: TF_delete_pos
  Left = 0
  Top = 0
  Caption = 'Delete Pos'
  ClientHeight = 243
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
    Top = 176
    Width = 137
    Height = 13
    Caption = #1058#1077#1082#1091#1097#1072#1103' '#1087#1086#1079#1080#1094#1080#1103' '#1082#1091#1088#1089#1086#1088#1072':'
  end
  object lbl_position: TLabel
    Left = 159
    Top = 176
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 56
    Top = -7
    Width = 345
    Height = 153
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 104
    Top = 210
    Width = 75
    Height = 25
    Caption = 'Position'
    TabOrder = 2
  end
end
