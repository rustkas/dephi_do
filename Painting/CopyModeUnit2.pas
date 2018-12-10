unit CopyModeUnit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TCopyModeForm2 = class(TForm)
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    OldPenMode: TPenMode;
    StartX, StartY, OldX, OldY: Integer;
    dragging: Boolean;
  public
    { Public declarations }
  end;

var
  CopyModeForm2: TCopyModeForm2;

implementation

{$R *.dfm}

procedure TCopyModeForm2.FormCreate(Sender: TObject);
begin
  dragging := false;
end;

procedure TCopyModeForm2.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Canvas.Brush.Color := clWhite;
  OldPenMode := Canvas.Pen.Mode;
  Canvas.Pen.Mode := pmNotXor;

  StartX := X;
  StartY := Y;
  OldX := X;
  OldY := Y;

  dragging := true;
end;

procedure TCopyModeForm2.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if dragging = false then
    exit;

  Canvas.Rectangle(StartX, StartY, OldX, OldY);
  Canvas.Rectangle(StartX, StartY, X, Y);
  OldX := X;
  OldY := Y;
end;

procedure TCopyModeForm2.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
dragging:=false;
 Canvas.Pen.Mode:=OldPenMode;
 Canvas.Rectangle(StartX, StartY, X, Y);
end;

end.
