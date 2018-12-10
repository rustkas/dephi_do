unit FindFile1Unit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFindFileForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FindFileForm: TFindFileForm;

implementation

{$R *.dfm}

procedure TFindFileForm.Button1Click(Sender: TObject);
var
  SearchRec: TSearchRec;
begin
  // Ищем файл
  if FindFirst(Edit1.Text, faAnyFile, SearchRec) = 0 then
    // Забираем размер
    Edit2.Text := IntToStr(SearchRec.Size) + 'байт';
  // Закрываем поиск
  FindClose(SearchRec);
end;

end.
