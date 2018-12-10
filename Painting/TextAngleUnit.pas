unit TextAngleUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TTextAngleForm = class(TForm)
    Timer1: TTimer;
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private-Deklarationen }
    index: Integer;
    cl: Boolean;
    location: Integer;
  public
    { Public-Deklarationen }
  end;

var
  TextAngleForm: TTextAngleForm;

implementation

{$R *.DFM}

procedure CanvasSetAngle(CanvasItem: TCanvas; A: Single);
var
  LogRec: TLOGFONT; { Font informationen }
begin
  GetObject(CanvasItem.Font.Handle, SizeOf(LogRec), Addr(LogRec));
  LogRec.lfEscapement := Trunc(A * 10);
  LogRec.lfOrientation := Trunc((A + 10) * 100);
  CanvasItem.Font.Handle := CreateFontIndirect(LogRec);
end;



procedure TTextAngleForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
Var
  A: Integer;
begin
  A := Random(3600);
  CanvasSetAngle(Canvas, A / 10);
  Canvas.TextOut(X, Y, FormatFloat('##0.0', A / 10) + '°');
end;

procedure TTextAngleForm.FormPaint(Sender: TObject);
begin
                          location := Random(500);
end;



procedure TTextAngleForm.Timer1Timer(Sender: TObject);
begin
  CanvasSetAngle(Canvas, index);
  Canvas.TextOut(location, location, 'CyD Soft');
  index := index + 45;
  Canvas.Font.Size := 14;
  if index >= 360 then
  begin
    index := 0;
    if cl then
      Canvas.Font.Color := clBlack
    else
      Canvas.Font.Color := clRed;
    cl := not cl;
  end;
end;

procedure TTextAngleForm.FormCreate(Sender: TObject);
begin
  index := 0;
end;

end.
