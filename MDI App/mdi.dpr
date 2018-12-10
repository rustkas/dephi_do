program mdi;

uses
  Vcl.Forms,
  MainModule in 'MainModule.pas' {MainForm},
  ChildModule in 'ChildModule.pas' {ChildForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
