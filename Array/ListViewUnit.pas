unit ListViewUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, ShellAPI;

type
  TListViewForm = class(TForm)
    ListView1: TListView;
    Panel1: TPanel;
    DirUpButton: TButton;
    Label1: TLabel;
    DirectoryEdit: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListView1DblClick(Sender: TObject);
  private
    { Private declarations }
    function AddFile(FileMask: string; FFileAttr:DWORD): Boolean;
  public
    { Public declarations }
  end;

var
  ListViewForm: TListViewForm;
  function SlashSep(Path, FName: string): string;
  function FileTimeToDateTimeStr(FileTime: TFileTime): string;

implementation

{$R *.dfm}

function FileTimeToDateTimeStr(FileTime: TFileTime): string;
var
 LocFTime: TFileTime;
 SysFTime: TSystemTime;
 Dt, Tm: TDateTime;
begin
 FileTimeToLocalFileTime(FileTime, LocFTime);
 FileTimeToSystemTime(LocFTime, SysFTime);
 try
  with SysFTime do
   begin
    Dt := EncodeDate(wYear, wMonth, wDay);
    Tm := EncodeTime(wHour, wMinute, wSecond, wMilliseconds);
   end;
  Result := DateTimeToStr(Dt+Tm);
 except
  Result := '';
 end;
end;

function SlashSep(Path, FName: string): string;
begin
 if Path[Length(Path)] <> '\' then
  Result := Path + '\' + FName
 else Result := Path + FName;
end;

function TListViewForm.AddFile(FileMask: string; FFileAttr: DWORD): Boolean;
var
 ShInfo: TSHFileInfo;
 attributes: string;
 FileName: string;
 hFindFile: THandle;
 SearchRec: TSearchRec;

 function AttrStr(Attr: integer): string;
  begin
   Result := '';
   if (FILE_ATTRIBUTE_DIRECTORY and Attr) > 0 then Result := Result + '';
   if (FILE_ATTRIBUTE_ARCHIVE and Attr) > 0 then Result := Result + 'A';
   if (FILE_ATTRIBUTE_READONLY and Attr) > 0 then Result := Result + 'R';
   if (FILE_ATTRIBUTE_HIDDEN and Attr) > 0 then Result := Result + 'H';
   if (FILE_ATTRIBUTE_SYSTEM and Attr) > 0 then Result := Result + 'S';
  end;

begin
 ListView1.Items.BeginUpdate;
 ListView1.Items.Clear;

 Result := False;
 hFindFile := FindFirst(FileMask, FFileAttr, SearchRec);
 if hFindFile <> INVALID_HANDLE_VALUE then
  try
   repeat
    with SearchRec.FindData do
     begin

      if (SearchRec.Name = '.') or (SearchRec.Name = '..') or
      (SearchRec.Name = '') then continue;

      FileName := SlashSep(DirectoryEdit.Text, SearchRec.Name);
      SHGetFileInfo(PChar(FileName), 0, ShInfo, SizeOf(ShInfo),
                      SHGFI_TYPENAME or SHGFI_SYSICONINDEX);
      Attributes := AttrStr(dwFileAttributes);
      //Добавляю новый элемент
      with ListView1.Items.Add do
       begin
        //Присваиваю его имя
        Caption := SearchRec.Name;
        //Присваиваю индекс из системного списка изображений
        ImageIndex := ShInfo.iIcon;
        //Присваиваю размер
        SubItems.Add(IntToStr(SearchRec.Size));
        SubItems.Add((ShInfo.szTypeName));
        SubItems.Add(FileTimeToDateTimeStr(ftLastWriteTime));
        SubItems.Add(attributes);
        SubItems.Add(DirectoryEdit.Text + cFileName);
        if (FILE_ATTRIBUTE_DIRECTORY and dwFileAttributes) > 0 then
         SubItems.Add('dir')
        else
         SubItems.Add('file');
       end;
      Result := True;
     end;
    until (FindNext(SearchRec) <> 0);
   finally
    FindClose(SearchRec);
   end;
 ListView1.Items.EndUpdate;
end;

procedure TListViewForm.FormCreate(Sender: TObject);
var
 SysImageList: uint;
 SFI: TSHFileInfo;
begin
//Создаем списки маленьких и больших иконок.
 ListView1.LargeImages:=TImageList.Create(self);
 ListView1.SmallImages:=TImageList.Create(self);

//Запрашиваем большие иконки
 SysImageList := SHGetFileInfo('', 0, SFI,
 SizeOf(TSHFileInfo), SHGFI_SYSICONINDEX or SHGFI_LARGEICON);
 if SysImageList <> 0 then
  begin
//Присваиваем системные иконки в ListView1
   ListView1.Largeimages.Handle := SysImageList;
   ListView1.Largeimages.ShareImages := TRUE;
  end;
//Запрашиваем маленькие иконки
 SysImageList := SHGetFileInfo('', 0, SFI, SizeOf(TSHFileInfo),
    SHGFI_SYSICONINDEX or SHGFI_SMALLICON);
 if SysImageList <> 0 then
  begin
   //Присваиваем маленькие системные иконки в ListView1
   ListView1.Smallimages.Handle := SysImageList;
   ListView1.Smallimages.ShareImages := TRUE;
  end;
end;

procedure TListViewForm.FormShow(Sender: TObject);
begin
 AddFile('C:/*.*',faAnyFile);
end;

procedure TListViewForm.ListView1DblClick(Sender: TObject);
begin
//Это директория?
 if (ListView1.Selected.SubItems[5] = 'dir') then
  begin
//Если да, то прибавить имя выделенной директории к пути
//и перечитать файлы из неё.
   DirectoryEdit.Text:=DirectoryEdit.Text+ListView1.Selected.Caption+'\';
   AddFile(DirectoryEdit.Text+'*.*',faAnyFile)
  end
 else
//Если нет, то это файл и я его запускаю.
  ShellExecute(Application.MainForm.Handle, nil,
      PChar(DirectoryEdit.Text+ListView1.Selected.Caption), '',
      PChar(DirectoryEdit.Text), SW_SHOW);
end;

end.

