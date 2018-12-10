object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Main Form'
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
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Rectangle'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 89
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Pen'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 170
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Brush'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 251
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Text'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 332
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Text Angle'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 8
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Color Select'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 89
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Status bar'
    TabOrder = 6
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 170
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Copy Mode1'
    TabOrder = 7
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 251
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Copy Mode2'
    TabOrder = 8
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 332
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Load Image'
    TabOrder = 9
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 8
    Top = 70
    Width = 75
    Height = 25
    Caption = 'ListBoxDraw'
    TabOrder = 10
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 89
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Scan'
    TabOrder = 11
    OnClick = Button12Click
  end
end
