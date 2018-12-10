unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses SplashUnit;

procedure TMainForm.Button1Click(Sender: TObject);
begin
  // Application.CreateForm(TSplashForm, SplashForm);
  SplashForm := TSplashForm.Create(Owner);
  SplashForm.Caption := 'Дочернее окно';
  SplashForm.Label1.Caption := 'Окно создано';
  SplashForm.Left := MainForm.Width/2 - SplashForm.Width/2;
  SplashForm.Top := MainForm.Top/2 - SplashForm.Top/2;
  SplashForm.ShowModal;
  SplashForm.Free;

end;

end.
