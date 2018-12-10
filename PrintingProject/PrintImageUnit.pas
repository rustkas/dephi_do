unit PrintImageUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Printers;

type
  TPrintImageForm = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrintImageForm: TPrintImageForm;

implementation

{$R *.dfm}

procedure TPrintImageForm.Button1Click(Sender: TObject);
var
  X1, X2, Y1, Y2: Integer;
  PointsX, PointsY: double;
  PrintDlg: TPrintDialog;
begin
  PrintDlg := TPrintDialog.Create(Owner);
  if PrintDlg.Execute then
  begin
    Printer.BeginDoc;
    Printer.Canvas.Refresh;
    PointsX := GetDeviceCaps(Printer.Canvas.Handle, LOGPIXELSX) / 100;
    PointsY := GetDeviceCaps(Printer.Canvas.Handle, LOGPIXELSY) / 100;

    X1 := round((Printer.PageWidth - Image1.Picture.Bitmap.Width *
      PointsX) / 2);
    Y1 := round((Printer.PageHeight - Image1.Picture.Bitmap.Height *
      PointsY) / 2);
    X2 := round(X1 + Image1.Picture.Bitmap.Width * PointsX);
    Y2 := round(Y1 + Image1.Picture.Bitmap.Height * PointsY);
    Printer.Canvas.CopyRect(Rect(X1, Y1, X2, Y2), Image1.Picture.Bitmap.Canvas,
      Rect(0, 0, Image1.Picture.Bitmap.Width, Image1.Picture.Bitmap.Height));

    Printer.EndDoc;
  end;
  PrintDlg.Free;
end;

procedure TPrintImageForm.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
