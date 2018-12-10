unit My_repeat_do_loop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TF_repeat_do = class(TForm)
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
  F_repeat_do: TF_repeat_do;

implementation

{$R *.dfm}

procedure TF_repeat_do.CalculateButtonClick(Sender: TObject);
var
 index:Integer;
 sum:Integer;
 EndCount:Integer;
begin
 Sum:=0;
 index:=0;

 EndCount:=StrToInt(EndEdit.Text);

 repeat
  Sum:=Sum+index;
  index:=index+1;
 until index>EndCount;

 ResultEdit.Text:=IntToStr(Sum);
end;

end.
