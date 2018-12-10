unit My_if;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TF_if = class(TForm)
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
  F_if: TF_if;

implementation

{$R *.dfm}

procedure TF_if.CalculateButtonClick(Sender: TObject);
begin
  if StrToInt(EndEdit.Text) < 10 then
    ResultEdit.Text := 'ламер ушастый';
  if (StrToInt(EndEdit.Text) > 10) and (StrToInt(EndEdit.Text) < 20) then
    ResultEdit.Text := 'ёзер продвинутый';
  if StrToInt(EndEdit.Text) > 20 then
    ResultEdit.Text := 'хакер распальцованный';
end;

end.
