unit DynUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TDynArrayForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DynArrayForm: TDynArrayForm;

implementation

{$R *.dfm}

procedure TDynArrayForm.Button1Click(Sender: TObject);
var
  r: array of Integer;
  i: Integer;
begin
  ListBox1.Items.Clear;
  SetLength(r, 10);

  for i := 0 to High(r) do
  begin
    r[i] := i * i;
    ListBox1.Items.Add(IntToStr(i) + ' в квадрате = ' + IntToStr(r[i]));
  end;
end;

procedure TDynArrayForm.Button2Click(Sender: TObject);
type
  TDynArr = array of Integer;
var
  r: TDynArr;
  i: Integer;
begin
  ListBox1.Items.Clear;
  SetLength(r, 10);
  for i := 0 to High(r) do
    r[i] := i * i;

  SetLength(r, 20);
  for i := 10 to High(r) do
    r[i] := i * i;

  for i := 0 to High(r) do
    ListBox1.Items.Add(IntToStr(i) + ' в квадрате = ' + IntToStr(r[i]));
end;

end.
