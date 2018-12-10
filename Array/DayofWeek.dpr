program DayofWeek;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  DynUnit in 'DynUnit.pas' {DynArrayForm},
  ConvertUnit in 'ConvertUnit.pas' {StrToIntForm},
  DateTimeConverterUnit in 'DateTimeConverterUnit.pas' {DateTimeConverterForm},
  FloatConverterUnit in 'FloatConverterUnit.pas' {FloatConverterForm},
  CastUnit in 'CastUnit.pas' {CastForm},
  PointerClose in 'PointerClose.pas' {PointerForm},
  FindFile1Unit in 'FindFile1Unit.pas' {FindFileForm},
  FindFile2Unit in 'FindFile2Unit.pas' {FindFileForm2},
  ButtonUnit in 'ButtonUnit.pas' {ButtonsForm},
  SelectAnyButtonUnit in 'SelectAnyButtonUnit.pas' {SelectAnyButtonForm},
  MaskUnit in 'MaskUnit.pas' {MaskStringInputForm},
  GridUnit in 'GridUnit.pas' {GridForm},
  TImageTShapeTBevelUnit in 'TImageTShapeTBevelUnit.pas' {ImageTShapeTBevelForm},
  ScrollBoxUnit in 'ScrollBoxUnit.pas' {ScrollBoxForm},
  ListCheckBoxUnit in 'ListCheckBoxUnit.pas' {CheckListBoxForm},
  SplitterUnit in 'SplitterUnit.pas' {SplitterForm},
  StaticTextUnit in 'StaticTextUnit.pas' {StaticTextForm},
  ValueEditUnit in 'ValueEditUnit.pas' {ValueEditForm},
  TabControlUnit in 'TabControlUnit.pas' {TabControlForm},
  PageControlUnit in 'PageControlUnit.pas' {PageEditForm},
  TrackBarUnit in 'TrackBarUnit.pas' {TrackBarForm},
  ProgressBarUnit in 'ProgressBarUnit.pas' {ProgressBarForm},
  DateTimePickerUnit in 'DateTimePickerUnit.pas' {DateTimePickerForm},
  TreeViewUnit in 'TreeViewUnit.pas' {TreeViewForm},
  TreeViewDataUnit in 'TreeViewDataUnit.pas' {TreeViewDataForm},
  ListViewUnit in 'ListViewUnit.pas' {ListViewForm},
  StatusBarUnit in 'StatusBarUnit.pas' {StatusBarForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;

end.
