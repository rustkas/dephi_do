program PrintingProject;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  PrintMemo in 'PrintMemo.pas' {PrintMemoForm},
  FormPrintUnit in 'FormPrintUnit.pas' {FormPrintForm},
  PrintImageUnit in 'PrintImageUnit.pas' {PrintImageForm},
  GraphicsPaintUnit in 'GraphicsPaintUnit.pas' {GraphicsPaintForm},
  PrintListViewUnit in 'PrintListViewUnit.pas' {PrintListViewForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
