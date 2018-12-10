program PrintProject;

uses
  Vcl.Forms,
  PrintListUnit in 'PrintListUnit.pas' {PrintListInfoForm},
  MainUnit in 'MainUnit.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
