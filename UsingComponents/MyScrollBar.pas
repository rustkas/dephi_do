unit MyScrollBar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFScrollBar = class(TForm)
    ScrollBar1: TScrollBar;
    Label1: TLabel;
    ScrollBar2: TScrollBar;
    Label2: TLabel;
    procedure ScrollBar1Change(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FScrollBar: TFScrollBar;

implementation

{$R *.dfm}

procedure TFScrollBar.ScrollBar1Change(Sender: TObject);
begin
  Label1.Caption := IntToStr(ScrollBar1.Position);
end;

procedure TFScrollBar.ScrollBar2Change(Sender: TObject);
begin
  Label2.Caption := IntToStr(ScrollBar2.Position);
end;

end.
