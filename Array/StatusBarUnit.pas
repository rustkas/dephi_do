unit StatusBarUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.AppEvnts;

type
  TStatusBarForm = class(TForm)
    Button1: TButton;
    StatusBar1: TStatusBar;
    ApplicationEvents1: TApplicationEvents;

    procedure ApplicationEvents1Hint(Sender: TObject);
//    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
 //   procedure ShowHint(Sender: TObject);
  public
    { Public declarations }
  end;

var
  StatusBarForm: TStatusBarForm;

implementation

{$R *.dfm}

{ TForm1 }

//procedure TStatusBarForm.FormShow(Sender: TObject);
//begin
// Application.OnHint := ShowHint;
//end;


procedure TStatusBarForm.ApplicationEvents1Hint(Sender: TObject);
begin
 StatusBar1.Panels[1].Text := Application.Hint;
end;

//procedure TStatusBarForm.ShowHint(Sender: TObject);
//begin
// StatusBar1.Panels[1].Text := Application.Hint;
//end;

end.

