object TestFrame: TTestFrame
  Left = 0
  Top = 0
  Width = 420
  Height = 210
  TabOrder = 0
  object Memo1: TMemo
    Left = 3
    Top = 32
    Width = 410
    Height = 168
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 3
    Top = 5
    Width = 337
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 338
    Top = 3
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
end
