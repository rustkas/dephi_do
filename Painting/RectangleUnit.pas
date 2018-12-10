unit RectangleUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TRectangleForm = class(TForm)
    PaintBox1: TPaintBox;

    procedure FormPaint(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RectangleForm: TRectangleForm;

implementation

{$R *.dfm}

procedure TRectangleForm.FormPaint(Sender: TObject);
begin
  Canvas.Rectangle(10, 10, 100, 100);
end;

procedure TRectangleForm.PaintBox1Paint(Sender: TObject);
begin
  PaintBox1.Canvas.Rectangle(10, 10, 100, 100);
end;

end.
