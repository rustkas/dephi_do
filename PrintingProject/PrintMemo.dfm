object PrintMemoForm: TPrintMemoForm
  Left = 0
  Top = 0
  Caption = 'Memo print'
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
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 41
    Height = 13
    Caption = 'File path'
  end
  object Button1: TButton
    Left = 343
    Top = 57
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 0
    Top = 88
    Width = 426
    Height = 205
    Align = alBottom
    Lines.Strings = (
      
        'Kitto allows to create Rich Internet Applications based on a dat' +
        'a model that can be '
      
        'mapped onto any database. The client-side part uses ExtJS (throu' +
        'gh the ExtPascal '
      
        'library) to create a fully AJAX application, allowing you to bui' +
        'ld standard and '
      'advanced data-manipulating forms in a fraction of the time.'
      ''
      
        'Kitto is aimed at Delphi developers that need to create web appl' +
        'ication without delving '
      
        'into the intricacies of HTML, CSS, Javascript or learning to use' +
        ' a particular library such '
      'as ExtJS, yet it allows access to the bare metal if required.'
      ''
      
        'Kitto includes a database-agnostic data-access layer, allowing t' +
        'o create applications '
      
        'that work on any database engine and port applications between d' +
        'atabase engines.'
      ''
      
        'A Kitto application is described as a set of easily maintained Y' +
        'AML files, keeping '
      
        'definitions abstract and declarative and allowing for future ext' +
        'ensions. Business rules '
      
        'are enforced either declaratively or through small javascript fr' +
        'agments on the client, '
      'or in Delphi code on the server.'
      ''
      
        'Kitto was designed by Nando Dessena and its development is spons' +
        'ored by Ethea, '
      
        'which uses Kitto for internal development projects and client wo' +
        'rk and provides Kitto-'
      'related tools, support and development services.'
      ''
      'Start here for further information.'
      ''
      'Visit this site for online demos.'
      ''
      
        'If you feel like discussing Kitto, you can join the discussion g' +
        'roup or follow the blog.'
      ''
      'Happy Kittoing!')
    TabOrder = 1
  end
  object Button2: TButton
    Left = 89
    Top = 27
    Width = 75
    Height = 25
    Caption = 'Print text file'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 27
    Width = 75
    Height = 25
    Caption = 'Select a file'
    TabOrder = 3
    OnClick = Button3Click
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 384
    Top = 8
  end
end
