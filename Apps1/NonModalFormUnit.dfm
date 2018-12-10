object NonModalForm: TNonModalForm
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 114
  ClientWidth = 188
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
    Left = 8
    Top = 8
    Width = 113
    Height = 19
    Caption = #1047#1072#1082#1088#1086#1081#1090#1077' '#1086#1082#1085#1086'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object bntClose: TButton
    Left = 8
    Top = 81
    Width = 75
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    ModalResult = 1
    TabOrder = 0
    OnClick = bntCloseClick
  end
  object btnCancel: TButton
    Left = 96
    Top = 80
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 8
    Top = 33
    Width = 163
    Height = 21
    TabOrder = 2
    Text = '---'
  end
end
