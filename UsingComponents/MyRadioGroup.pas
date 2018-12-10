unit MyRadioGroup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFRadioGroup = class(TForm)
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRadioGroup: TFRadioGroup;

implementation

{$R *.dfm}

procedure TFRadioGroup.RadioGroup1Click(Sender: TObject);
begin
 Label1.Caption:=IntToStr(RadioGroup1.ItemIndex);
end;

procedure TFRadioGroup.Button1Click(Sender: TObject);
begin
 Edit1.Text:=IntToStr(RadioGroup1.ItemIndex);
end;

end.



