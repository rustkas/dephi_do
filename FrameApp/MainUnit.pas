unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrameUnit, Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    TestFrame1: TTestFrame;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses ChildUnit;

procedure TMainForm.Button1Click(Sender: TObject);
begin
  ChildForm := TChildForm.Create(Owner);
  ChildForm.Caption := 'Дочернее окно';

  ChildForm.Left := (Screen.WorkAreaWidth - ChildForm.Width) div 2;
  ChildForm.Top := (Screen.WorkAreaHeight - ChildForm.Height) div 2;
  ChildForm.ShowModal;
  ChildForm.Free;
end;

end.
