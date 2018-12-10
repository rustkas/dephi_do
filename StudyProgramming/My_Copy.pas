unit My_Copy;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TC_copy = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  C_copy: TC_copy;

implementation

{$R *.dfm}

procedure TC_copy.Button1Click(Sender: TObject);
begin
if Memo1.SelLength >0 then
  Memo2.Text := Copy(Memo1.Text, Memo1.SelStart+1, Memo1.SelLength);
end;

procedure TC_copy.Button2Click(Sender: TObject);
begin
if Memo2.SelLength >0 then

  Memo1.Text := Copy(Memo2.Text, Memo2.SelStart+1, Memo2.SelLength);
end;

end.
