unit My_Length;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TF_Length = class(TForm)
    Label1: TLabel;
    Memo1: TMemo;
    Label2: TLabel;
    Button1: TButton;
    symbol_count: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Length: TF_Length;

implementation

{$R *.dfm}

procedure TF_Length.Button1Click(Sender: TObject);
var
  i: Integer;
var
  count: Integer;
begin
  count := 0;

  for i := 0 to Memo1.Lines.count do
  begin
    count := count + Memo1.Lines[i].Length;
  end;
  symbol_count.Caption := count.ToString();
  //Beep;
end;

end.
