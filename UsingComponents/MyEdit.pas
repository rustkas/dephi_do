unit MyEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFTEdit = class(TForm)
    Edit1: TEdit;
    MyFirstButton: TButton;
    Edit2: TEdit;
    procedure MyFirstButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTEdit: TFTEdit;

implementation

{$R *.dfm}

procedure TFTEdit.MyFirstButtonClick(Sender: TObject);
begin
  if Edit1.Text = '12345' then
    Edit2.Text := 'Пароль верный'
  else
    Edit2.Text := 'Пароль не верный'
end;

end.
