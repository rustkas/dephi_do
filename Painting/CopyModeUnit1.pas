unit CopyModeUnit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TCopyModeForm1 = class(TForm)
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    StartX, StartY: Integer;
    dragging: Boolean;
  public
    { Public declarations }
  end;

var
  CopyModeForm1: TCopyModeForm1;

implementation

{$R *.dfm}

procedure TCopyModeForm1.FormCreate(Sender: TObject);
begin
  dragging := false;
end;

procedure TCopyModeForm1.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  StartX := X;
  StartY := Y;

  dragging := true;
end;

procedure TCopyModeForm1.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if dragging = false then
    exit;

  Canvas.Rectangle(StartX, StartY, X, Y);
end;

procedure TCopyModeForm1.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  dragging := false;
end;

end.
