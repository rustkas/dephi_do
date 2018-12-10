program Painting;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  RectangleUnit in 'RectangleUnit.pas' {RectangleForm},
  PenUnit in 'PenUnit.pas' {PenForm},
  BrushUnit in 'BrushUnit.pas' {BrushForm},
  TextUnit in 'TextUnit.pas' {TextForm},
  TextAngleUnit in 'TextAngleUnit.pas' {TextAngleForm},
  ColorUnit in 'ColorUnit.pas' {ColorSelectForm},
  StatusBarUnit in 'StatusBarUnit.pas' {StatusBarForm},
  CopyModeUnit1 in 'CopyModeUnit1.pas' {CopyModeForm1},
  CopyModeUnit2 in 'CopyModeUnit2.pas' {CopyModeForm2},
  ImageUnit in 'ImageUnit.pas' {ImageLoadForm},
  ListBoxDrawUnit in 'ListBoxDrawUnit.pas' {ListBoxDrawForm},
  ScanUnit in 'ScanUnit.pas' {ScanForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
