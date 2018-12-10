object ProgressBarForm: TProgressBarForm
  Left = 0
  Top = 0
  Caption = #1055#1088#1080#1084#1077#1088' '#1088#1072#1073#1086#1090#1099' ProgressBar'
  ClientHeight = 711
  ClientWidth = 600
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
  object ProgressBar1: TProgressBar
    Left = 89
    Top = 8
    Width = 289
    Height = 25
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = #1047#1072#1087#1091#1089#1082
    TabOrder = 1
    OnClick = Button1Click
  end
  object Animate1: TAnimate
    Left = 16
    Top = 312
    Width = 165
    Height = 97
    Active = True
    FileName = 
      'E:\Users\tol_pc\Documents\Embarcadero\Studio\Projects\Array\vide' +
      'o\boxed-join.avi'
    StopFrame = 80
  end
  object Animate2: TAnimate
    Left = 16
    Top = 200
    Width = 165
    Height = 97
    Active = True
    FileName = 
      'E:\Users\tol_pc\Documents\Embarcadero\Studio\Projects\Array\vide' +
      'o\boxed-delete.avi'
    StopFrame = 98
  end
  object Animate3: TAnimate
    Left = 16
    Top = 86
    Width = 165
    Height = 97
    Active = True
    FileName = 
      'E:\Users\tol_pc\Documents\Embarcadero\Studio\Projects\Array\vide' +
      'o\boxed-correct.avi'
    StopFrame = 173
  end
  object Animate4: TAnimate
    Left = 16
    Top = 535
    Width = 165
    Height = 97
    Active = True
    FileName = 
      'E:\Users\tol_pc\Documents\Embarcadero\Studio\Projects\Array\vide' +
      'o\boxed-split.avi'
    StopFrame = 155
  end
  object Animate5: TAnimate
    Left = 200
    Top = 86
    Width = 165
    Height = 97
    Active = True
    FileName = 
      'E:\Users\tol_pc\Documents\Embarcadero\Studio\Projects\Array\vide' +
      'o\delete.avi'
    StopFrame = 320
  end
  object Animate6: TAnimate
    Left = 200
    Top = 575
    Width = 165
    Height = 97
    Active = True
    FileName = 
      'E:\Users\tol_pc\Documents\Embarcadero\Studio\Projects\Array\vide' +
      'o\split.avi'
    StopFrame = 343
  end
  object Animate7: TAnimate
    Left = 16
    Top = 424
    Width = 165
    Height = 97
    Active = True
    FileName = 
      'E:\Users\tol_pc\Documents\Embarcadero\Studio\Projects\Array\vide' +
      'o\boxed-split.avi'
    StopFrame = 155
  end
  object Animate8: TAnimate
    Left = 200
    Top = 200
    Width = 300
    Height = 250
    Active = True
    FileName = 
      'E:\Users\tol_pc\Documents\Embarcadero\Studio\Projects\Array\vide' +
      'o\FlickAnimation.avi'
    StopFrame = 59
  end
  object Animate9: TAnimate
    Left = 200
    Top = 472
    Width = 165
    Height = 97
    Active = True
    FileName = 
      'E:\Users\tol_pc\Documents\Embarcadero\Studio\Projects\Array\vide' +
      'o\join.avi'
    StopFrame = 356
  end
end
