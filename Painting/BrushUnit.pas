unit BrushUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TBrushForm = class(TForm)
    Button1: TButton;
    ColorDialog1: TColorDialog;
    procedure FormPaint(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BrushForm: TBrushForm;

implementation

{$R *.dfm}

procedure TBrushForm.Button1Click(Sender: TObject);
begin
  if ColorDialog1.Execute then
    Canvas.Pen.Color := ColorDialog1.Color;

  Repaint;
end;

procedure TBrushForm.FormPaint(Sender: TObject);
var
  BitMap: TBitmap;
begin
  BitMap := TBitmap.Create;
  try
    BitMap.LoadFromFile
      ('E:\Users\tol_pc\Documents\Embarcadero\Studio\Projects\Painting\prevchess.bmp');
    BrushForm.Canvas.Brush.BitMap := BitMap;
    BrushForm.Canvas.Rectangle(170, 170, 250, 250);

    // обязательно устанавливаю цвет кисти
    Canvas.Brush.Color := ColorDialog1.Color;

    // рисую первый квадрат
    Canvas.Brush.Style := bsSolid;
    Canvas.Rectangle(10, 10, 50, 50);

    //рисую второй квадрат
    Canvas.Brush.Style := bsBDiagonal;
    Canvas.Rectangle(10, 110, 50, 150);

    Canvas.Brush.Style := bsFDiagonal;
    Canvas.Rectangle(10, 160, 50, 200);

    Canvas.Brush.Style := bsCross;
    Canvas.Rectangle(110, 10, 150, 50);

    Canvas.Brush.Style := bsDiagCross;
    Canvas.Rectangle(110, 60, 150, 100);

    Canvas.Brush.Style := bsHorizontal;
    Canvas.Rectangle(110, 110, 150, 150);

    Canvas.Brush.Style := bsVertical;
    Canvas.Rectangle(110, 160, 150, 200);

    Canvas.Brush.Style := bsClear;
    Canvas.Rectangle(10, 60, 50, 100);

  finally
    BrushForm.Canvas.Brush.BitMap := nil;
    BitMap.Free;
  end;

end;

end.
