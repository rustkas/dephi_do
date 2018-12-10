object TrackBarForm: TTrackBarForm
  Left = 276
  Top = 148
  Caption = #1055#1088#1080#1084#1077#1088' '#1088#1072#1073#1086#1090#1099' '#1089' TrackBar'
  ClientHeight = 233
  ClientWidth = 301
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 16
    Width = 225
    Height = 97
  end
  object Label10: TLabel
    Left = 16
    Top = 24
    Width = 130
    Height = 13
    Caption = #1043#1086#1088#1080#1079#1086#1085#1090#1072#1083#1100#1085#1099#1081' TrackBar'
  end
  object Label1: TLabel
    Left = 104
    Top = 91
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Bevel2: TBevel
    Left = 8
    Top = 120
    Width = 225
    Height = 81
  end
  object Label20: TLabel
    Left = 16
    Top = 128
    Width = 130
    Height = 13
    Caption = #1043#1086#1088#1080#1079#1086#1085#1090#1072#1083#1100#1085#1099#1081' TrackBar'
  end
  object Label2: TLabel
    Left = 96
    Top = 184
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Label3: TLabel
    Left = 248
    Top = 8
    Width = 6
    Height = 13
    Caption = '0'
  end
  object TrackBar3: TTrackBar
    Left = 248
    Top = 32
    Width = 45
    Height = 169
    Orientation = trVertical
    TabOrder = 0
    OnChange = TrackBar3Change
  end
  object TrackBar1: TTrackBar
    Left = 16
    Top = 40
    Width = 209
    Height = 45
    LineSize = 0
    TabOrder = 1
    TickMarks = tmTopLeft
    OnChange = TrackBar1Change
  end
  object TrackBar2: TTrackBar
    Left = 16
    Top = 144
    Width = 209
    Height = 33
    Max = 100
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
    TickMarks = tmBoth
    TickStyle = tsManual
    OnChange = TrackBar2Change
  end
end
