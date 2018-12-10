unit OpenTextFileUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TReadingForm = class(TForm)
    TextReadButton: TButton;
    ViewTestListBox: TListBox;
    Button1: TButton;
    Button2: TButton;
    procedure TextReadButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReadingForm: TReadingForm;

const
  FILE_NAME =
    'E:\Users\tol_pc\Documents\Embarcadero\Studio\Projects\Array\filetext.txt';

implementation

{$R *.dfm}

procedure TReadingForm.Button1Click(Sender: TObject);
var
  f: TFileStream;
  buf: array [0 .. 10] of char;
begin
  f := TFileStream.Create(FILE_NAME, fmOpenRead);
  f.Seek(15, soFromBeginning);

  f.Read(buf, 10);
  // move(str[1], buf[1], 10);
  f.Free;
  //
  // ViewTestListBox.Clear;
  // ViewTestListBox.Items.Add(str);
end;

procedure TReadingForm.Button2Click(Sender: TObject);
var
  f: TStrings;
begin
  f := TStringList.Create;
  f.LoadFromFile(FILE_NAME);

  f.Strings[f.Count - 1] := 'Прощай, станция Мир!';
  f.Add('Прощай!');

  f.SaveToFile(FILE_NAME);
  f.Free;
end;

procedure TReadingForm.TextReadButtonClick(Sender: TObject);
var
  f: TStrings;
  i: Integer;

begin
  f := TStringList.Create;
  f.LoadFromFile(FILE_NAME);
  ViewTestListBox.Clear;
  for i := 0 to f.Count - 1 do
  begin

    ViewTestListBox.Items.Add(f.Strings[i]);

    if f.Strings[i] = 'Привет, Вася' then
      Application.MessageBox('Строка найдена', 'Поиск закончен', MB_OKCANCEL);

  end;

  f.Free;
end;

end.
