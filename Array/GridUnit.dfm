object GridForm: TGridForm
  Left = 0
  Top = 0
  Caption = #1055#1088#1080#1084#1077#1088' '#1088#1072#1073#1086#1090#1099' '#1089' '#1089#1077#1090#1082#1086#1081' Grid'
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
  object StringGrid1: TStringGrid
    Left = 0
    Top = 0
    Width = 426
    Height = 293
    Align = alClient
    DefaultRowHeight = 16
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs]
    ScrollBars = ssNone
    TabOrder = 0
    OnDrawCell = StringGrid1DrawCell
    ExplicitWidth = 385
    ExplicitHeight = 129
    ColWidths = (
      64
      64
      64
      64
      114)
  end
  object DateEdit: TMaskEdit
    Left = 8
    Top = 135
    Width = 116
    Height = 21
    EditMask = '!00/00/0000;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '  .  .    '
    Visible = False
    OnChange = DateEditChange
  end
  object CheckBox1: TCheckBox
    Left = 132
    Top = 137
    Width = 97
    Height = 17
    TabOrder = 2
    Visible = False
    OnClick = CheckBox1Click
  end
end
