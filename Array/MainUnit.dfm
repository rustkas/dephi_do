object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #1044#1077#1085#1100' '#1085#1077#1076#1077#1083#1080
  ClientHeight = 282
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DayofWeekEdit: TEdit
    Left = 0
    Top = 0
    Width = 416
    Height = 21
    Align = alTop
    TabOrder = 0
  end
  object GetDayButton: TButton
    Left = 104
    Top = 37
    Width = 201
    Height = 52
    Align = alCustom
    Caption = #1059#1079#1085#1072#1090#1100' '#1076#1077#1085#1100' '#1085#1077#1076#1077#1083#1080
    TabOrder = 1
    OnClick = GetDayButtonClick
  end
  object DynArrayButton: TButton
    Left = 0
    Top = 95
    Width = 75
    Height = 25
    Caption = 'Dyn array'
    TabOrder = 2
    OnClick = DynArrayButtonClick
  end
  object OpenTextButton: TButton
    Left = 81
    Top = 95
    Width = 75
    Height = 25
    Caption = 'Open text'
    TabOrder = 3
    OnClick = OpenTextButtonClick
  end
  object ConvertIntButton: TButton
    Left = 162
    Top = 95
    Width = 75
    Height = 25
    Caption = 'Convert'
    TabOrder = 4
    OnClick = ConvertIntButtonClick
  end
  object DateTimeButton: TButton
    Left = 243
    Top = 95
    Width = 75
    Height = 25
    Caption = 'Date and Time'
    TabOrder = 5
    OnClick = DateTimeButtonClick
  end
  object Button1: TButton
    Left = 324
    Top = 95
    Width = 75
    Height = 25
    Caption = 'Float'
    TabOrder = 6
    OnClick = Button1Click
  end
  object btnDoCast: TButton
    Left = 8
    Top = 129
    Width = 75
    Height = 25
    Caption = 'Do cast'
    TabOrder = 7
    OnClick = btnDoCastClick
  end
  object Button2: TButton
    Left = 89
    Top = 129
    Width = 75
    Height = 25
    Caption = 'Pointer'
    TabOrder = 8
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 170
    Top = 129
    Width = 75
    Height = 25
    Caption = 'Find file'
    TabOrder = 9
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 251
    Top = 129
    Width = 75
    Height = 25
    Caption = 'SpeedButton'
    TabOrder = 10
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 332
    Top = 129
    Width = 75
    Height = 25
    Caption = 'Mask'
    TabOrder = 11
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 8
    Top = 164
    Width = 75
    Height = 25
    Caption = 'Grid'
    TabOrder = 12
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 89
    Top = 164
    Width = 75
    Height = 25
    Caption = 'Image1'
    TabOrder = 13
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 170
    Top = 164
    Width = 75
    Height = 25
    Caption = 'ScrollBox'
    TabOrder = 14
    OnClick = Button8Click
  end
  object ListCheckBoxButton: TButton
    Left = 251
    Top = 164
    Width = 75
    Height = 25
    Caption = 'ListCheckBox'
    TabOrder = 15
    OnClick = ListCheckBoxButtonClick
  end
  object SplitterButton: TButton
    Left = 332
    Top = 164
    Width = 75
    Height = 25
    Caption = 'Splitter'
    TabOrder = 16
    OnClick = SplitterButtonClick
  end
  object Button9: TButton
    Left = 8
    Top = 195
    Width = 75
    Height = 25
    Caption = 'StaticText'
    TabOrder = 17
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 89
    Top = 195
    Width = 75
    Height = 25
    Caption = 'ValueEdit'
    TabOrder = 18
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 170
    Top = 195
    Width = 75
    Height = 25
    Caption = 'TabControl'
    TabOrder = 19
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 251
    Top = 195
    Width = 75
    Height = 25
    Caption = 'PageControl'
    TabOrder = 20
    OnClick = Button12Click
  end
  object Button13: TButton
    Left = 333
    Top = 195
    Width = 75
    Height = 25
    Caption = 'TrackBar'
    TabOrder = 21
    OnClick = Button13Click
  end
  object Button14: TButton
    Left = 8
    Top = 226
    Width = 75
    Height = 25
    Caption = 'ProgressBar'
    TabOrder = 22
    OnClick = Button14Click
  end
  object Button15: TButton
    Left = 81
    Top = 226
    Width = 88
    Height = 25
    Caption = 'DateTimePicker'
    TabOrder = 23
    OnClick = Button15Click
  end
  object Button16: TButton
    Left = 175
    Top = 226
    Width = 75
    Height = 25
    Caption = 'Tree View'
    TabOrder = 24
    OnClick = Button16Click
  end
  object Button17: TButton
    Left = 251
    Top = 226
    Width = 76
    Height = 25
    Caption = 'Tree View Data'
    TabOrder = 25
    OnClick = Button17Click
  end
  object ListViewButton: TButton
    Left = 333
    Top = 226
    Width = 75
    Height = 25
    Caption = 'ListView'
    TabOrder = 26
    OnClick = ListViewButtonClick
  end
  object Button18: TButton
    Left = 8
    Top = 257
    Width = 75
    Height = 25
    Caption = 'Status bar'
    TabOrder = 27
    OnClick = Button18Click
  end
end
