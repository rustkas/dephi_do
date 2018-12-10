unit Dock;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFDock = class(TForm)
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDock: TFDock;

implementation

{$R *.dfm}

end.
