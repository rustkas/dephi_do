unit My_Exeptions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TF_Exeption1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Exeption1: TF_Exeption1;

implementation

{$R *.dfm}

procedure TF_Exeption1.Button1Click(Sender: TObject);
var
  t, r: Double;
begin
  try
    r := 0;
    t := 10 / r;
    if t > 0 then
      exit;

    raise EInOutError.Create('Ошибка ввода вывода');

  except
    on EInOutError do
    begin
      ShowMessage('Ошибочка ввода вывода');
    end;
    on e: EZeroDivide do
    begin
      ShowMessage('Ну нельзя делить на ноль :: ' + e.Message);
    end;
    else
      ShowMessage('Не понял в чем дело, но что-то произошло');
  end;
end;

end.
