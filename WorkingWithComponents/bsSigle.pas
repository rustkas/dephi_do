unit bsSigle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFbsSigle = class(TForm)
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
  FbsSigle: TFbsSigle;

implementation

{$R *.dfm}

procedure TFbsSigle.Button1Click(Sender: TObject);
begin
Close();
end;

procedure TFbsSigle.Button2Click(Sender: TObject);
begin
Close();
end;

end.
