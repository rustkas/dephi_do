unit PointerClose;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TPointerForm = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  WindowsSize = record
    Left, Top, Width, Height: Integer;
  end;

  TestRecord = record
    Address: String;
    RoomNumber: Integer;
    case Home: Integer of
      0:
        (FloorNumber: Integer
        );
      1:
        (FloorCount: Integer;
          GroundSquare: Integer;
        );

  end;

  PWindowsSize = ^WindowsSize;

var
  PointerForm: TPointerForm;

const
  SIZE_DAT: String =
    'E:\Users\tol_pc\Documents\Embarcadero\Studio\Projects\Array\size.dat';

implementation

{$R *.dfm}

procedure TPointerForm.Button1Click(Sender: TObject);
var
  p: Pointer;

  Str: String;

begin
  // (Sender as TButton).Caption := String(@Sender);

  // Close();

  p := @Str;
  Str := 'Привет мой друг!';
  Edit1.Text := String(p^);
  Str := 'До скорых встреч, мой друг!';
  Edit1.Text := String(p^);
end;

procedure TPointerForm.FormClose(Sender: TObject; var Action: TCloseAction);

var
  ws: WindowsSize;
  f: TFileStream;
begin
  ws.Left := Left;
  ws.Top := Top;
  ws.Width := Width;
  ws.Height := Height;

  f := TFileStream.Create(SIZE_DAT, fmCreate);
  f.Write(ws, sizeof(ws));
  f.Free();
end;

procedure TPointerForm.FormShow(Sender: TObject);
var
  ws: PWindowsSize;
  fs: TFileStream;

begin
  if FileExists(SIZE_DAT) then
  begin
    ws:=New(PWindowsSize);
    fs := TFileStream.Create(SIZE_DAT, fmOpenRead);
    fs.Read(ws^, sizeof(ws^));
    fs.Free();

    Left := ws.Left;
    Top := ws.Top;
    Width := ws.Width;
    Height := ws.Height;

    Dispose(ws);
  end;

end;


//procedure TPointerForm.FormShow(Sender: TObject);
//var
//  ws: WindowsSize;
//  fs: TFileStream;
//  wsp: PWindowsSize;
//begin
//  if FileExists(SIZE_DAT) then
//  begin
//    fs := TFileStream.Create(SIZE_DAT, fmOpenRead);
//    fs.Read(ws, sizeof(ws));
//    fs.Free();
//
//    Left := ws.Left;
//    Top := ws.Top;
//    Width := ws.Width;
//    Height := ws.Height;
//
//    wsp := New(PWindowsSize);
//    wsp.Left := 10;
//    Dispose(wsp);
//  end;
//
//end;


end.
