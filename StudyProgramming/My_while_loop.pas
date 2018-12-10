unit My_while_loop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TF_while = class(TForm)
    CalculateButton: TButton;
    EndEdit: TEdit;
    Label1: TLabel;
    ResultEdit: TEdit;
    Label2: TLabel;
    procedure CalculateButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_while: TF_while;

implementation

{$R *.dfm}

procedure TF_while.CalculateButtonClick(Sender: TObject);
var
  index: Integer;
  sum: Integer;
  EndCount: Integer;
begin
  sum := 0;
  index := 0;

  EndCount := StrToInt(EndEdit.Text);

  while index < EndCount do
  begin
    sum := sum + index;
    index := index + 1;
  end;

  ResultEdit.Text := IntToStr(sum);
end;

end.
