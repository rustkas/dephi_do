unit PrintMemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Printers, Vcl.StdCtrls;

type
  TPrintMemoForm = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Label1: TLabel;
    Button3: TButton;
    FileOpenDialog1: TFileOpenDialog;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrintMemoForm: TPrintMemoForm;

implementation

{$R *.dfm}

procedure TPrintMemoForm.Button1Click(Sender: TObject);
var
  f: TextFile;
  i: Integer;
begin
  AssignPrn(f);
  try
    Rewrite(f);
    for i := 0 to Memo1.Lines.Count - 1 do
      Writeln(f, Memo1.Lines.Strings[i]);
  finally
    CloseFile(f);
  end;

end;

procedure TPrintMemoForm.Button2Click(Sender: TObject);
var
  ffile: TextFile;
begin

  // assignFile(ffile, Label1.Caption);

  AssignPrn(ffile);
  try
    Rewrite(ffile);
    Writeln(ffile, 'Hello, World!');
  finally
    CloseFile(ffile);
  end;

end;

procedure TPrintMemoForm.Button3Click(Sender: TObject);
begin
  if FileOpenDialog1.execute then
    Label1.Caption := FileOpenDialog1.FileName;

end;

end.
