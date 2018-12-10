program FrameProject;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  FrameUnit in 'FrameUnit.pas' {TestFrame: TFrame},
  ChildUnit in 'ChildUnit.pas' {ChildForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
