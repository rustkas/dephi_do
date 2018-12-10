object DateTimeConverterForm: TDateTimeConverterForm
  Left = 0
  Top = 0
  Caption = 'Date and Time Converter'
  ClientHeight = 411
  ClientWidth = 429
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
    Left = 135
    Top = 13
    Width = 75
    Height = 13
    Caption = 'Current date:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 135
    Top = 296
    Width = 80
    Height = 13
    Caption = 'Format string:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 135
    Top = 40
    Width = 75
    Height = 13
    Caption = 'Current time:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object AddDateButton: TButton
    Left = 8
    Top = 8
    Width = 121
    Height = 25
    Caption = 'Add date and time'
    TabOrder = 0
    OnClick = AddDateButtonClick
  end
  object ListBox1: TListBox
    Left = 8
    Top = 72
    Width = 121
    Height = 311
    Cursor = crNoDrop
    ItemHeight = 13
    TabOrder = 1
  end
  object CurrentDateEdit: TEdit
    Left = 216
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object FormatEdit: TEdit
    Left = 135
    Top = 315
    Width = 154
    Height = 21
    TabOrder = 3
    Text = 'hh:nn - ss'
  end
  object CreateDateTimeButton: TButton
    Left = 135
    Top = 357
    Width = 154
    Height = 25
    Caption = 'Create date time string'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = CreateDateTimeButtonClick
  end
  object CurrentTimeEdit: TEdit
    Left = 216
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object AddTimeButton: TButton
    Left = 8
    Top = 41
    Width = 121
    Height = 25
    Caption = 'Add date and time'
    TabOrder = 6
    OnClick = AddTimeButtonClick
  end
  object DateGroupBox: TGroupBox
    Left = 135
    Top = 72
    Width = 170
    Height = 201
    Caption = 'Date'
    TabOrder = 7
    object Button2: TButton
      Left = 3
      Top = 13
      Width = 75
      Height = 25
      Caption = 'd'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button8: TButton
      Left = 84
      Top = 13
      Width = 75
      Height = 25
      Caption = 'm'
      TabOrder = 1
      OnClick = Button8Click
    end
    object Button3: TButton
      Left = 3
      Top = 44
      Width = 75
      Height = 25
      Caption = 'dd'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 3
      Top = 75
      Width = 75
      Height = 25
      Caption = 'ddd'
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 3
      Top = 106
      Width = 75
      Height = 25
      Caption = 'dddd'
      TabOrder = 4
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 3
      Top = 137
      Width = 75
      Height = 25
      Caption = 'ddddd'
      TabOrder = 5
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 3
      Top = 168
      Width = 75
      Height = 25
      Caption = 'dddddd'
      TabOrder = 6
      OnClick = Button7Click
    end
    object Button9: TButton
      Left = 84
      Top = 44
      Width = 75
      Height = 25
      Caption = 'mm'
      TabOrder = 7
      OnClick = Button9Click
    end
    object Button10: TButton
      Left = 84
      Top = 75
      Width = 75
      Height = 25
      Caption = 'mmm'
      TabOrder = 8
      OnClick = Button10Click
    end
    object Button11: TButton
      Left = 84
      Top = 106
      Width = 75
      Height = 25
      Caption = 'mmmm'
      TabOrder = 9
      OnClick = Button11Click
    end
    object Button12: TButton
      Left = 84
      Top = 137
      Width = 75
      Height = 25
      Caption = 'yy'
      TabOrder = 10
      OnClick = Button12Click
    end
    object Button13: TButton
      Left = 84
      Top = 168
      Width = 75
      Height = 25
      Caption = 'yyyy'
      TabOrder = 11
      OnClick = Button13Click
    end
  end
  object TimeGroupBox: TGroupBox
    Left = 320
    Top = 72
    Width = 89
    Height = 264
    Caption = 'Time'
    TabOrder = 8
    object Button14: TButton
      Left = 3
      Top = 13
      Width = 75
      Height = 25
      Caption = 'n'
      TabOrder = 0
      OnClick = Button14Click
    end
    object Button15: TButton
      Left = 3
      Top = 44
      Width = 75
      Height = 25
      Caption = 'nn'
      TabOrder = 1
      OnClick = Button15Click
    end
    object Button16: TButton
      Left = 3
      Top = 75
      Width = 75
      Height = 25
      Caption = 's'
      TabOrder = 2
      OnClick = Button16Click
    end
    object Button17: TButton
      Left = 3
      Top = 106
      Width = 75
      Height = 25
      Caption = 'ss'
      TabOrder = 3
      OnClick = Button17Click
    end
    object Button18: TButton
      Left = 3
      Top = 137
      Width = 75
      Height = 25
      Caption = 'z'
      TabOrder = 4
      OnClick = Button18Click
    end
    object Button19: TButton
      Left = 3
      Top = 168
      Width = 75
      Height = 25
      Caption = 'zz'
      TabOrder = 5
      OnClick = Button19Click
    end
    object Button20: TButton
      Left = 3
      Top = 199
      Width = 75
      Height = 25
      Caption = 'am'
      TabOrder = 6
      OnClick = Button20Click
    end
    object Button21: TButton
      Left = 3
      Top = 230
      Width = 75
      Height = 25
      Caption = 'pm'
      TabOrder = 7
      OnClick = Button21Click
    end
  end
end
