unit CastUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TCastForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CastForm: TCastForm;

implementation

{$R *.dfm}

procedure TCastForm.Button1Click(Sender: TObject);
var
  NewString: String;
  NewPChar: PChar;
  i: Integer;
  j: byte;
begin
  NewString := 'New String';
  NewPChar := PChar(NewString);

  i := 0;
  j := byte(i);

  if Sender is TControl then
    (Sender as TControl).Top := i;
  (Sender as TControl).Left := j;

  // trick
  TLabel(Sender).Caption := String(NewPChar);
  TLabel(Sender).Caption := 'Ok';
end;

end.
