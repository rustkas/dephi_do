program SplashProject;

uses
  Winapi.Windows, Vcl.Forms,
  MainUnit in 'MainUnit.pas' {MainForm} ,
  SplashUnit in 'SplashUnit.pas' {SplashForm};

{$R *.res}

begin
  SplashForm := TSplashForm.Create(nil);
  SplashForm.Show;
  SplashForm.Repaint;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);

  Sleep(3000);
  SplashForm.Hide;
  SplashForm.Free;

  Application.Run;

end.
