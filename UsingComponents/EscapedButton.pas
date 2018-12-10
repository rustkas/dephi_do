unit EscapedButton;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFEscapedButton = class(TForm)
    Button1: TButton;
    procedure Button1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEscapedButton: TFEscapedButton;
  previuos_vaue: Integer;

implementation

{$R *.dfm}

procedure TFEscapedButton.Button1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  index: Integer;
begin
  index := random(4);

  case index of
    0:
      Button1.Left := Button1.Left + Button1.Width;
    1:
      Button1.Left := Button1.Left - Button1.Width;
    2:
      Button1.Top := Button1.Top - Button1.Height;
    3:
      Button1.Top := Button1.Top - Button1.Height;
  end;

  if Button1.Left < 0 then
    Button1.Left := Button1.Width;

  if (Button1.Left + Button1.Width) > Width then
    Button1.Left := Width - Button1.Width;

  if Button1.Top < 0 then
    Button1.Top := Button1.Height;

  if (Button1.Top + Button1.Height) > Height then
    Button1.Top := Height - Button1.Height;
end;

end.
