unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses PrintMemo, FormPrintUnit, PrintImageUnit, GraphicsPaintUnit,
  PrintListViewUnit;

procedure OpenForm(form: TForm);
begin

  form.Left := (Screen.WorkAreaWidth - form.Width) div 2;
  form.Top := (Screen.WorkAreaHeight - form.Height) div 2;
  form.ShowModal;
  form.Free;
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
  PrintMemoForm := TPrintMemoForm.Create(Owner);
  OpenForm(PrintMemoForm);
end;

procedure TMainForm.Button2Click(Sender: TObject);
begin
  FormPrintForm := TFormPrintForm.Create(Owner);
  OpenForm(FormPrintForm);
end;

procedure TMainForm.Button3Click(Sender: TObject);
begin
  PrintImageForm := TPrintImageForm.Create(Owner);
  OpenForm(PrintImageForm);
end;

procedure TMainForm.Button4Click(Sender: TObject);
begin
  GraphicsPaintForm := TGraphicsPaintForm.Create(Owner);
  OpenForm(GraphicsPaintForm);
end;

procedure TMainForm.Button5Click(Sender: TObject);
begin
  PrintListViewForm := TPrintListViewForm.Create(Owner);
  OpenForm(PrintListViewForm);
end;

end.
