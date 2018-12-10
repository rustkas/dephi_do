unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    DayofWeekEdit: TEdit;
    GetDayButton: TButton;
    DynArrayButton: TButton;
    OpenTextButton: TButton;
    ConvertIntButton: TButton;
    DateTimeButton: TButton;
    Button1: TButton;
    btnDoCast: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    ListCheckBoxButton: TButton;
    SplitterButton: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    ListViewButton: TButton;
    Button18: TButton;
    procedure GetDayButtonClick(Sender: TObject);
    procedure DynArrayButtonClick(Sender: TObject);
    procedure OpenTextButtonClick(Sender: TObject);
    procedure ConvertIntButtonClick(Sender: TObject);
    procedure DateTimeButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnDoCastClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure ListCheckBoxButtonClick(Sender: TObject);
    procedure SplitterButtonClick(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure ListViewButtonClick(Sender: TObject);
    procedure Button18Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

const
  WEEK_CONST: array [1 .. 7] of String = ('Воскресенье', 'Понедельник',
    'Вторник', 'Среда', 'Четверг', 'Пятница', 'Суббота');

implementation

{$R *.dfm}

uses DynUnit, OpenTextFileUnit, ConvertUnit, DateTimeConverterUnit,
  FloatConverterUnit, CastUnit, PointerClose, FindFile2Unit, ButtonUnit,
  MaskUnit, GridUnit, TImageTShapeTBevelUnit, ScrollBoxUnit, ListCheckBoxUnit,
  SplitterUnit, StaticTextUnit, ValueEditUnit, TabControlUnit, PageControlUnit,
  TrackBarUnit, ProgressBarUnit, DateTimePickerUnit, TreeViewUnit,
  TreeViewDataUnit, ListViewUnit, StatusBarUnit;

procedure OpenForm(form: TForm);
begin

  form.Left := (Screen.WorkAreaWidth - form.Width) div 2;
  form.Top := (Screen.WorkAreaHeight - form.Height) div 2;
  form.ShowModal;
  form.Free;
end;

procedure TMainForm.OpenTextButtonClick(Sender: TObject);
begin
  ReadingForm := TReadingForm.Create(Owner);
  OpenForm(ReadingForm);
end;

procedure TMainForm.SplitterButtonClick(Sender: TObject);
begin
  SplitterForm := TSplitterForm.Create(Owner);
  OpenForm(SplitterForm);
end;

procedure TMainForm.ConvertIntButtonClick(Sender: TObject);
begin
  StrToIntForm := TStrToIntForm.Create(Owner);
  OpenForm(StrToIntForm);
end;

procedure TMainForm.DateTimeButtonClick(Sender: TObject);
begin
  DateTimeConverterForm := TDateTimeConverterForm.Create(Owner);
  OpenForm(DateTimeConverterForm);
end;

procedure TMainForm.btnDoCastClick(Sender: TObject);
begin
  CastForm := TCastForm.Create(Owner);
  OpenForm(CastForm);
end;

procedure TMainForm.Button10Click(Sender: TObject);
begin
  ValueEditForm := TValueEditForm.Create(Owner);
  OpenForm(ValueEditForm);
end;

procedure TMainForm.Button11Click(Sender: TObject);
begin
  TabControlForm := TTabControlForm.Create(Owner);
  OpenForm(TabControlForm);
end;

procedure TMainForm.Button12Click(Sender: TObject);
begin
  PageEditForm := TPageEditForm.Create(Owner);
  OpenForm(PageEditForm);
end;

procedure TMainForm.Button13Click(Sender: TObject);
begin
  TrackBarForm := TTrackBarForm.Create(Owner);
  OpenForm(TrackBarForm);
end;

procedure TMainForm.Button14Click(Sender: TObject);
begin
  ProgressBarForm := TProgressBarForm.Create(Owner);
  OpenForm(ProgressBarForm);
end;

procedure TMainForm.Button15Click(Sender: TObject);
begin
  DateTimePickerForm := TDateTimePickerForm.Create(Owner);
  OpenForm(DateTimePickerForm);
end;

procedure TMainForm.Button16Click(Sender: TObject);
begin
  TreeViewForm := TTreeViewForm.Create(Owner);
  OpenForm(TreeViewForm);
end;

procedure TMainForm.Button17Click(Sender: TObject);
begin
  TreeViewDataForm := TTreeViewDataForm.Create(Owner);
  OpenForm(TreeViewDataForm);
end;

procedure TMainForm.Button18Click(Sender: TObject);
begin
  StatusBarForm := TStatusBarForm.Create(Owner);
  OpenForm(StatusBarForm);
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
  FloatConverterForm := TFloatConverterForm.Create(Owner);
  OpenForm(FloatConverterForm);
end;

procedure TMainForm.Button2Click(Sender: TObject);
begin
  PointerForm := TPointerForm.Create(Owner);
  OpenForm(PointerForm);
end;

procedure TMainForm.Button3Click(Sender: TObject);
begin
  FindFileForm2 := TFindFileForm2.Create(Owner);
  OpenForm(FindFileForm2);
end;

procedure TMainForm.Button4Click(Sender: TObject);
begin
  ButtonsForm := TButtonsForm.Create(Owner);
  OpenForm(ButtonsForm);
end;

procedure TMainForm.Button5Click(Sender: TObject);
begin
  MaskStringInputForm := TMaskStringInputForm.Create(Owner);
  OpenForm(MaskStringInputForm);
end;

procedure TMainForm.Button6Click(Sender: TObject);
begin
  GridForm := TGridForm.Create(Owner);
  OpenForm(GridForm);
end;

procedure TMainForm.Button7Click(Sender: TObject);
begin
  ImageTShapeTBevelForm := TImageTShapeTBevelForm.Create(Owner);
  OpenForm(ImageTShapeTBevelForm);
end;

procedure TMainForm.Button8Click(Sender: TObject);
begin
  ScrollBoxForm := TScrollBoxForm.Create(Owner);
  OpenForm(ScrollBoxForm);
end;

procedure TMainForm.Button9Click(Sender: TObject);
begin
  StaticTextForm := TStaticTextForm.Create(Owner);
  OpenForm(StaticTextForm);
end;

procedure TMainForm.DynArrayButtonClick(Sender: TObject);
begin
  DynArrayForm := TDynArrayForm.Create(Owner);
  DynArrayForm.Left := (Screen.WorkAreaWidth - DynArrayForm.Width) div 2;
  DynArrayForm.Top := (Screen.WorkAreaHeight - DynArrayForm.Height) div 2;
  DynArrayForm.ShowModal;
  DynArrayForm.Free;
end;

procedure TMainForm.GetDayButtonClick(Sender: TObject);
const
  week: array [1 .. 7] of String = ('Воскресенье', 'Понедельник', 'Вторник',
    'Среда', 'Четверг', 'Пятница', 'Суббота');
var
  day: Integer;
  // week: array[1..7] of String;
begin
  // week[1]:='Воскресенье';
  // week[2]:='Понедельник';
  // week[3]:='Вторник';
  // week[4]:='Среда';
  // week[5]:='Четверг';
  // week[6]:='Пятница';
  // week[7]:='Суббота';

  day := DayOfWeek(Date);
  DayofWeekEdit.Text := week[day];

end;

procedure TMainForm.ListCheckBoxButtonClick(Sender: TObject);
begin
  CheckListBoxForm := TCheckListBoxForm.Create(Owner);
  OpenForm(CheckListBoxForm);
end;

procedure TMainForm.ListViewButtonClick(Sender: TObject);
begin
  ListViewForm := TListViewForm.Create(Owner);
  OpenForm(ListViewForm);
end;

end.
