unit My_Exeptions2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TF_exeption2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_exeption2: TF_exeption2;

type
  MyException = class(Exception)
  public
    function GetSomeStr(): String;
  end;

implementation

{$R *.dfm}

procedure TF_exeption2.Button1Click(Sender: TObject);
begin
  try
    raise MyException.Create('Тест');
  except
    on e: MyException do
    begin
      ShowMessage(e.GetSomeStr);
    end;
  end;
end;

{ MyException }

function MyException.GetSomeStr: String;
begin
  Result := 'Это моя строка';
end;

end.
