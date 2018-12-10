program Project1;

uses
  Vcl.Forms,
  MainAlfa in 'MainAlfa.pas' {Falfa},
  bsdialog in 'bsdialog.pas' {Fbsdialog},
  bsNone in 'bsNone.pas' {FbsNone},
  bsSigle in 'bsSigle.pas' {FbsSigle},
  bsSizeble in 'bsSizeble.pas' {FbsSizeble},
  bsSizeToolWin in 'bsSizeToolWin.pas' {FbsSizeToolWin},
  bsToolWindow in 'bsToolWindow.pas' {FbsToolWindow},
  enable in 'enable.pas' {FEnable},
  Dock in 'Dock.pas' {FDock},
  BorderWidth in 'BorderWidth.pas' {FBorderWidth},
  WindowSize in 'WindowSize.pas' {FWidowSize},
  WidowColor in 'WidowColor.pas' {FWidowColor};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFWidowColor, FWidowColor);
  Application.CreateForm(TFWidowSize, FWidowSize);
  Application.CreateForm(TFBorderWidth, FBorderWidth);
  Application.CreateForm(TFDock, FDock);
  Application.CreateForm(TFEnable, FEnable);
  Application.CreateForm(TFbsToolWindow, FbsToolWindow);
  Application.CreateForm(TFbsSizeToolWin, FbsSizeToolWin);
  Application.CreateForm(TFbsSizeble, FbsSizeble);
  Application.CreateForm(TFbsSigle, FbsSigle);
  Application.CreateForm(TFbsNone, FbsNone);
  Application.CreateForm(TFbsdialog, Fbsdialog);
  Application.CreateForm(TFalfa, Falfa);
  Application.Run;
end.
