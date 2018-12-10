object FActionList: TFActionList
  Left = 0
  Top = 0
  Caption = 'ActionList study'
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
    Width = 113
    Height = 25
    Action = Action1
    TabOrder = 0
  end
  object ActionList1: TActionList
    Top = 264
    object Action1: TAction
      Category = 'Active'
      Caption = #1042#1099#1093#1086#1076' '#1080#1079' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
      ShortCut = 27
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Category = 'InactiveActions'
      Caption = 'Action2'
    end
    object Action3: TAction
      Category = 'InactiveActions'
      Caption = 'Action3'
    end
    object Action4: TAction
      Category = 'InactiveActions'
      Caption = 'Action4'
    end
    object Action5: TAction
      Category = 'InactiveActions'
      Caption = 'Action5'
    end
    object Action6: TAction
      Category = 'InactiveActions'
      Caption = 'Action6'
    end
    object Action7: TAction
      Category = 'InactiveActions'
      Caption = 'Action7'
    end
    object Action8: TAction
      Category = 'InactiveActions'
      Caption = 'Action8'
    end
  end
end
