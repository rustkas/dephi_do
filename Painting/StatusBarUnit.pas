unit StatusBarUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.AppEvnts;

type
  TStatusBarForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    ApplicationEvents1: TApplicationEvents;
    procedure ApplicationEvents1Hint(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  StatusBarForm: TStatusBarForm;

implementation

{$R *.DFM}
{ TForm1 }

procedure TStatusBarForm.ApplicationEvents1Hint(Sender: TObject);
var
  l, t: Integer;
begin
  StatusBar1.Repaint;
  with StatusBar1.Canvas do
  begin
    Brush.Style := bsClear;
    Font.Color := clWhite;
    l := 10;
    t := 1;
    TextOut(l, t, Application.Hint);
    if RadioButton1.Checked = true then
    begin
      inc(l);
      inc(t);
    end
    else
    begin
      dec(l);
      dec(t);
    end;
    Font.Color := clBlue;
    TextOut(l,t, Application.Hint);
  end;
end;

end.
