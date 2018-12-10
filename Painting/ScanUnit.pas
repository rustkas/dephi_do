unit ScanUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtDlgs, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TScanForm = class(TForm)
    TrackBar1: TTrackBar;
    Button1: TButton;
    Image1: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Blur(var Clip: TBitmap; Amount: Integer);
    procedure Gray(var Clip: TBitmap);
  public
    { Public declarations }
    SavedImage: TBitmap;
  end;

var
  ScanForm: TScanForm;

implementation

{$R *.dfm}
{ TForm1 }

procedure TScanForm.Blur(var Clip: TBitmap; Amount: Integer);
var
  p0, p1, p2: PByteArray;
  cx, x, y: Integer;
  Buf: array [0 .. 3, 0 .. 2] of Byte;
begin
  if Amount = 0 then
    exit;
  for y := 0 to Clip.Height - 1 do
  begin
    p0 := Clip.ScanLine[y];
    if y - Amount < 0 then
      p1 := Clip.ScanLine[y]
    else
      p1 := Clip.ScanLine[y - Amount];

    if y + Amount < Clip.Height then
      p2 := Clip.ScanLine[y + Amount]
    else
      p2 := Clip.ScanLine[Clip.Height - y];

    for x := 0 to Clip.Width - 1 do
    begin
      if x - Amount < 0 then
        cx := x
      else
        cx := x - Amount;
      Buf[0, 0] := p1[cx * 3];
      Buf[0, 1] := p1[cx * 3 + 1];
      Buf[0, 2] := p1[cx * 3 + 2];
      Buf[1, 0] := p2[cx * 3];
      Buf[1, 1] := p2[cx * 3 + 1];
      Buf[1, 2] := p2[cx * 3 + 2];

      if x + Amount < Clip.Width then
        cx := x + Amount
      else
        cx := Clip.Width - x;

      Buf[2, 0] := p1[cx * 3];
      Buf[2, 1] := p1[cx * 3 + 1];
      Buf[2, 2] := p1[cx * 3 + 2];
      Buf[3, 0] := p2[cx * 3];
      Buf[3, 1] := p2[cx * 3 + 1];
      Buf[3, 2] := p2[cx * 3 + 2];
      p0[x * 3] := (Buf[0, 0] + Buf[1, 0] + Buf[2, 0] + Buf[3, 0]) shr 2;
      p0[x * 3 + 1] := (Buf[0, 1] + Buf[1, 1] + Buf[2, 1] + Buf[3, 1]) shr 2;
      p0[x * 3 + 2] := (Buf[0, 2] + Buf[1, 2] + Buf[2, 2] + Buf[3, 2]) shr 2;
    end;
  end;
end;

procedure TScanForm.Button1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    SavedImage.Assign(Image1.Picture.Bitmap);
    SavedImage.PixelFormat := pf24bit;
  end;
end;

procedure TScanForm.Button2Click(Sender: TObject);
var
  bmp: TBitmap;
begin
  bmp := TBitmap.Create;
  bmp.Assign(SavedImage);
  Gray(bmp);
  Image1.Picture.Bitmap.Assign(bmp);
end;

procedure TScanForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SavedImage.Free;
end;

procedure TScanForm.FormCreate(Sender: TObject);
begin
  SavedImage := TBitmap.Create;
end;

procedure TScanForm.Gray(var Clip: TBitmap);
var
  p0: PByteArray;
  x, y: Integer;
begin
  for y := 0 to Clip.Height - 1 do
  begin
    p0 := Clip.ScanLine[y];
    for x := 0 to Clip.Width - 1 do
    begin
      p0[x * 3 + 1] := p0[x * 3];
      p0[x * 3 + 2] := p0[x * 3];
    end;
  end;
end;

procedure TScanForm.TrackBar1Change(Sender: TObject);
var
  bmp: TBitmap;
begin
  bmp := TBitmap.Create;
  bmp.Assign(SavedImage);
  Blur(bmp, TrackBar1.Position);
  Image1.Picture.Bitmap.Assign(bmp);
end;

end.
