object FPanelExample1: TFPanelExample1
  Left = 0
  Top = 0
  Caption = 'Study Panel'
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
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 185
    Height = 41
    Caption = 'Button1'
    TabOrder = 0
    OnMouseDown = Panel1MouseDown
    OnMouseUp = Panel1MouseUp
  end
  object Panel2: TPanel
    Left = 216
    Top = 8
    Width = 185
    Height = 41
    BevelInner = bvLowered
    Caption = 'Close'
    TabOrder = 1
    OnMouseDown = Panel2MouseDown
    OnMouseUp = Panel2MouseUp
  end
end
