unit My_break;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TF_break = class(TForm)
    Button1: TButton;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_break: TF_break;

implementation

{$R *.dfm}

function Exampl(index: Integer): Integer;
begin
  Exampl := index * 2; // ¬озвращ€ю переданное значение index
  // умноженное на 2
end;

procedure TF_break.Button1Click(Sender: TObject);
var
  i, r: Integer;
begin
  for i := -3 to 3 do
  begin // Ёто начало дл€ оператора for

    if i = 0 then
    begin // Ёто начало дл€ оператора if
      ListBox1.Items.Add('Ќа ноль делить нельз€');
      break;
    end; // Ётот end дл€ оператора if

    r := round(10 / i);
    ListBox1.Items.Add('10/' + IntToStr(i) + ' = ' + IntToStr(r));
  end; // Ётот end дл€ оператора for
  ListBox1.Items.Add('–асчЄт окончен');
end;

end.
