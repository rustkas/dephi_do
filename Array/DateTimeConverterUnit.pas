unit DateTimeConverterUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TDateTimeConverterForm = class(TForm)
    AddDateButton: TButton;
    ListBox1: TListBox;
    Label1: TLabel;
    CurrentDateEdit: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    FormatEdit: TEdit;
    Label2: TLabel;
    CreateDateTimeButton: TButton;
    Label3: TLabel;
    CurrentTimeEdit: TEdit;
    AddTimeButton: TButton;
    DateGroupBox: TGroupBox;
    TimeGroupBox: TGroupBox;
    procedure AddDateButtonClick(Sender: TObject);
    procedure AddTimeButtonClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CreateDateTimeButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DateTimeConverterForm: TDateTimeConverterForm;
  CurrentDateTime: TDateTime;

implementation

{$R *.dfm}

procedure TDateTimeConverterForm.AddDateButtonClick(Sender: TObject);
var
  date_value: TDate;
begin
  CurrentDateTime := Date();
  CurrentDateEdit.Text := DateToStr(CurrentDateTime);

  date_value := StrToDate(CurrentDateEdit.Text);
  ListBox1.Items.Add(DateToStr(date_value));

end;

procedure TDateTimeConverterForm.AddTimeButtonClick(Sender: TObject);
var
  time_value: TTime;
begin
  CurrentDateTime := Time();
  CurrentTimeEdit.Text := TimeToStr(CurrentDateTime);
  time_value := StrToTime(CurrentTimeEdit.Text);
  ListBox1.Items.Add(TimeToStr(time_value));
end;

procedure checkStateCreateDateTimeButton();
var
  dateTimeButton: TButton;
begin
  dateTimeButton := DateTimeConverterForm.CreateDateTimeButton;
  if dateTimeButton.Enabled = false then
    dateTimeButton.Enabled := true;
end;

procedure addTextToListBox(Sender: TObject);
var
  str: String;
  button: TButton;
begin

  checkStateCreateDateTimeButton();
  button := Sender as TButton;
  str := DateTimeConverterForm.FormatEdit.Text;
  str := str + button.Caption;
  DateTimeConverterForm.FormatEdit.Text := str;

end;

procedure TDateTimeConverterForm.CreateDateTimeButtonClick(Sender: TObject);
begin
  CurrentDateTime := Now();
  DateTimeConverterForm.ListBox1.Items.Add(FormatDateTime(FormatEdit.Text,
    CurrentDateTime));
end;

procedure TDateTimeConverterForm.FormCreate(Sender: TObject);
begin
  CurrentDateTime := Now();
end;



procedure TDateTimeConverterForm.Button10Click(Sender: TObject);
begin
  addTextToListBox(Sender);
end;

procedure TDateTimeConverterForm.Button11Click(Sender: TObject);
begin
  addTextToListBox(Sender);
end;

procedure TDateTimeConverterForm.Button12Click(Sender: TObject);
begin
  addTextToListBox(Sender);
end;

procedure TDateTimeConverterForm.Button13Click(Sender: TObject);
begin
  addTextToListBox(Sender);
end;

procedure TDateTimeConverterForm.Button14Click(Sender: TObject);
begin
addTextToListBox(Sender);
end;

procedure TDateTimeConverterForm.Button15Click(Sender: TObject);
begin
  addTextToListBox(Sender);
end;

procedure TDateTimeConverterForm.Button16Click(Sender: TObject);
begin
  addTextToListBox(Sender);
end;

procedure TDateTimeConverterForm.Button17Click(Sender: TObject);
begin
  addTextToListBox(Sender);
end;

procedure TDateTimeConverterForm.Button18Click(Sender: TObject);
begin
  addTextToListBox(Sender);
end;

procedure TDateTimeConverterForm.Button19Click(Sender: TObject);
begin
  addTextToListBox(Sender);
end;

procedure TDateTimeConverterForm.Button20Click(Sender: TObject);
begin
  addTextToListBox(Sender);
end;

procedure TDateTimeConverterForm.Button21Click(Sender: TObject);
begin
  addTextToListBox(Sender);
end;

procedure TDateTimeConverterForm.Button2Click(Sender: TObject);
begin
  addTextToListBox(Sender);
end;

procedure TDateTimeConverterForm.Button3Click(Sender: TObject);
begin
  addTextToListBox(Sender);
end;

procedure TDateTimeConverterForm.Button4Click(Sender: TObject);
begin
  addTextToListBox(Sender);
end;

procedure TDateTimeConverterForm.Button5Click(Sender: TObject);
begin
  addTextToListBox(Sender);
end;

procedure TDateTimeConverterForm.Button6Click(Sender: TObject);
begin
  addTextToListBox(Sender);
end;

procedure TDateTimeConverterForm.Button7Click(Sender: TObject);
begin
  addTextToListBox(Sender);
end;

procedure TDateTimeConverterForm.Button8Click(Sender: TObject);
begin
  addTextToListBox(Sender);
end;

procedure TDateTimeConverterForm.Button9Click(Sender: TObject);
begin
  addTextToListBox(Sender);
end;

end.
