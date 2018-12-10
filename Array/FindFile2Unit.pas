unit FindFile2Unit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFindFileForm2 = class(TForm)
    Label1: TLabel;
    edLookFor: TEdit;
    Label2: TLabel;
    edLookIn: TEdit;
    Button1: TButton;
    lblSearching: TLabel;
    Memo1: TMemo;
    lblFoundFilesCount: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ScanFolder(Folder: String);
  public
    { Public declarations }
  end;

  // TSetOfChar = set of WideChar;
  TClockTypeEnum = (Digital, Analog);
  TClockType = set of TClockTypeEnum;
  TDaysOfWeek = (Понедельник, Вторник, Среда, Четверг, Пятница, Суббота,
    Воскресенье);
  TFullMoonDays = set of TDaysOfWeek;

var
  FindFileForm2: TFindFileForm2;
  foundFilesCount: Integer;

implementation

{$R *.dfm}

function SlashSep(Path, FName: string): string;
begin
  if Path[Length(Path)] <> '\' then
    Result := Path + '\' + FName
  else
    Result := Path + FName;
end;

procedure TFindFileForm2.Button1Click(Sender: TObject);
var
  MoonDays: TFullMoonDays;
begin
  MoonDays := [Понедельник, Вторник];
  if Понедельник in MoonDays then
  begin
    MoonDays := MoonDays + [Среда];
    MoonDays := MoonDays - [Вторник, Среда];
    MoonDays := [Понедельник, Вторник];
    Include(MoonDays, Воскресенье);
    Exclude(MoonDays, Воскресенье);
  end;

  Memo1.Lines.Clear;
  foundFilesCount := 0;
  lblSearching.Caption := 'Serching start';

  ScanFolder(edLookIn.Text);
  lblSearching.Caption := 'Serching end';
  lblSearching.Width := lblSearching.Width + 10;
end;

procedure TFindFileForm2.ScanFolder(Folder: String);
var
  sr: TSearchRec;
  FileName: String;
begin
  if FindFirst(Folder + '\*.*', faAnyFile, sr) = 0 then
  begin
    repeat
      if (sr.Name = '.') or (sr.Name = '..') then
        continue;

      FileName := SlashSep(Folder, sr.Name);

      // Это директория?
      if (sr.Attr and faDirectory) = faDirectory then
      begin
        ScanFolder(FileName);
        continue;
      end;

      // Найден файл
      if AnsiUpperCase(edLookFor.Text) = AnsiUpperCase(sr.Name) then
      begin
        Memo1.Lines.Add(FileName);
        foundFilesCount := foundFilesCount + 1;
        lblFoundFilesCount.Caption := 'Found files: ' +
          IntToStr(foundFilesCount);
      end;

    until FindNext(sr) <> 0;
    FindClose(sr);
  end;
end;

end.
