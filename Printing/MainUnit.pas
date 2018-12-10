unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMainForm = class(TForm)
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

uses PrintListUnit;

procedure OpenForm(form: TForm);
begin

  form.Left := (Screen.WorkAreaWidth - form.Width) div 2;
  form.Top := (Screen.WorkAreaHeight - form.Height) div 2;
  form.ShowModal;
  form.Free;
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
  PrintListInfoForm := TPrintListInfoForm.Create(Owner);
  OpenForm(PrintListInfoForm);
end;

end.
