unit bsSizeble;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TFbsSizeble = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Panel1: TPanel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ToolBar1: TToolBar;
    Button5: TButton;
    Button6: TButton;
    StatusBar1: TStatusBar;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FbsSizeble: TFbsSizeble;

implementation

{$R *.dfm}

procedure TFbsSizeble.Button1Click(Sender: TObject);
begin

Close();
end;

end.
