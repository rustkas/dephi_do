unit bsNone;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;


type
  TFbsNone = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FbsNone: TFbsNone;

implementation

{$R *.dfm}



procedure TFbsNone.Button1Click(Sender: TObject);
begin
Close();
end;

end.

