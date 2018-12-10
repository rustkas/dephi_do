unit MyPanelExample1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TFPanelExample1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPanelExample1: TFPanelExample1;

implementation

{$R *.dfm}

procedure TFPanelExample1.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel1.BevelOuter := bvLowered;
end;

procedure TFPanelExample1.Panel1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel1.BevelOuter := bvRaised;
end;

procedure TFPanelExample1.Panel2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel2.BevelOuter := bvLowered;
  Panel2.BevelInner := bvRaised;
end;

procedure TFPanelExample1.Panel2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel2.BevelOuter := bvRaised;
  Panel2.BevelInner := bvLowered;
end;

end.
