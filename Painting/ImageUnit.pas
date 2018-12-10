unit ImageUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtDlgs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TImageLoadForm = class(TForm)
    Image1: TImage;
    Button1: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure Button1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImageLoadForm: TImageLoadForm;

implementation

{$R *.dfm}

procedure TImageLoadForm.Button1Click(Sender: TObject);
begin
 if OpenPictureDialog1.Execute = true then
  Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
 Repaint;
end;

procedure TImageLoadForm.FormPaint(Sender: TObject);
begin
 Canvas.BrushCopy(Rect(200,16,200+Image1.Width,16+Image1.Height),
             Image1.Picture.Bitmap,
             Rect(0,0,Image1.Width,Image1.Height),
             Image1.Picture.Bitmap.Canvas.Pixels[1,1]);
end;

end.

