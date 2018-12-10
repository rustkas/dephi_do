unit PenUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TPenForm = class(TForm)
    Button1: TButton;
    ColorDialog1: TColorDialog;
    UpDown1: TUpDown;
    procedure FormPaint(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PenForm: TPenForm;

implementation

{$R *.dfm}

procedure TPenForm.Button1Click(Sender: TObject);
begin
  if ColorDialog1.Execute then
    Canvas.Pen.Color := ColorDialog1.Color;

  Repaint;
end;

procedure TPenForm.FormPaint(Sender: TObject);
begin
  Canvas.Pen.Style := psSolid;
  Canvas.MoveTo(10, 20);
  Canvas.LineTo(200, 20);

  Canvas.Pen.Style := psDash;
  Canvas.MoveTo(10, 40);
  Canvas.LineTo(200, 40);

  Canvas.Pen.Style := psDot;
  Canvas.MoveTo(10, 60);
  Canvas.LineTo(200, 60);

  Canvas.Pen.Style := psDashDot;
  Canvas.MoveTo(10, 80);
  Canvas.LineTo(200, 80);

  Canvas.Pen.Style := psDashDotDot;
  Canvas.MoveTo(10, 100);
  Canvas.LineTo(200, 100);

  Canvas.Pen.Style := psClear;
  Canvas.MoveTo(10, 120);
  Canvas.LineTo(200, 120);

  Canvas.Pen.Style := psInsideFrame;
  Canvas.MoveTo(10, 140);
  Canvas.LineTo(200, 140);
end;

procedure TPenForm.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
  Canvas.Pen.Width := UpDown1.Position;
  Repaint;
end;

end.
