unit ChildUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrameUnit;

type
  TChildForm = class(TForm)
    TestFrame1: TTestFrame;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildForm: TChildForm;

implementation

{$R *.dfm}

end.
