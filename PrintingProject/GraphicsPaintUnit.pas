unit GraphicsPaintUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Printers;

type
  TGraphicsPaintForm = class(TForm)
    PrintButton: TButton;
    PaintBox1: TPaintBox;
    procedure PaintBox1Paint(Sender: TObject);
    procedure PrintButtonClick(Sender: TObject);

  private
    { Private declarations }
    procedure PaintForm(can: TCanvas; scaleX, scaleY: Double);
  public
    { Public declarations }
  end;

var
  GraphicsPaintForm: TGraphicsPaintForm;

implementation

{$R *.dfm}



procedure TGraphicsPaintForm.PaintBox1Paint(Sender: TObject);
begin
  PaintForm(PaintBox1.Canvas, 1, 1);
end;

procedure TGraphicsPaintForm.PrintButtonClick(Sender: TObject);
var
  PointsX, PointsY: Double;
begin
  // Начинаю новый документ
  Printer.BeginDoc;
  Printer.Canvas.Refresh;

  // Получаю информацию о разрешении принтера
  PointsX := GetDeviceCaps(Printer.Canvas.Handle, LOGPIXELSX) / 70;
  PointsY := GetDeviceCaps(Printer.Canvas.Handle, LOGPIXELSY) / 70;

  PaintForm(Printer.Canvas, PointsX, PointsY);
  Printer.EndDoc;
end;

procedure TGraphicsPaintForm.PaintForm(can: TCanvas; scaleX, scaleY: Double);
begin
  can.Brush.Color := clRed;
  can.Rectangle(round(10 * scaleX), round(10 * scaleY), round(100 * scaleX),
    round(100 * scaleY));
end;

end.
