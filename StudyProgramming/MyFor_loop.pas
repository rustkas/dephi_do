unit MyFor_loop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Vcl.StdCtrls;

type
  TF_For = class(TForm)
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
  F_For: TF_For;

implementation

{$R *.dfm}

procedure TF_For.CalculateButtonClick(Sender: TObject);
var
  index:Integer;
  sum:Integer;
  EndCount:Integer;
begin
 Sum:=0;

 EndCount:=StrToInt(EndEdit.Text);

 for index:=0 to EndCount do
  Sum:=Sum+index;

 ResultEdit.Text:=IntToStr(Sum);
end;

end.
