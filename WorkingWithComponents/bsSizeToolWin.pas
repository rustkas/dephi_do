unit bsSizeToolWin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFbsSizeToolWin = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FbsSizeToolWin: TFbsSizeToolWin;

implementation

{$R *.dfm}

procedure TFbsSizeToolWin.Button1Click(Sender: TObject);
begin
Close();
end;

end.
