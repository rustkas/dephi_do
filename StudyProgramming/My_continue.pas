unit My_continue;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TF_continue = class(TForm)
    Button1: TButton;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_continue: TF_continue;

implementation

{$R *.dfm}

procedure TF_continue.Button1Click(Sender: TObject);
var
  i, r: Integer;
begin
  for i := -3 to 3 do
  begin // ��� ������ ��� ��������� for

    if i = 0 then
    begin // ��� ������ ��� ��������� if
      ListBox1.Items.Add('�� ���� ������ ������');
      Continue;
    end; // ���� end ��� ��������� if

    r := round(10 / i);
    ListBox1.Items.Add('10/' + IntToStr(i) + ' = ' + IntToStr(r));
  end; // ���� end ��� ��������� for
end;

end.
