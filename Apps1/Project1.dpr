program Project1;

uses
  Vcl.Forms,
  MainMenuApp in 'MainMenuApp.pas' {Form1},
  AboutUnit in 'AboutUnit.pas' {AboutForm},
  NonModalFormUnit in 'NonModalFormUnit.pas' {NonModalForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.CreateForm(TNonModalForm, NonModalForm);
  Application.Run;
end.
