program ProjectDb;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  ManageConnectFormUnit in 'ManageConnectFormUnit.pas' {ManageConnectForm},
  ConnectUnit in 'ConnectUnit.pas' {ConnectForm},
  DataModule2Unit in 'DataModule2Unit.pas' {DataModule1: TDataModule},
  TownBookUnit in 'TownBookUnit.pas' {TownBookForm},
  EditFormUnit in 'EditFormUnit.pas' {EditRecordForm},
  AboutUnit in 'AboutUnit.pas' {AboutForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TTownBookForm, TownBookForm);
  Application.CreateForm(TEditRecordForm, EditRecordForm);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.Run;

end.
