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
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses RectangleUnit, PenUnit, BrushUnit, TextUnit, TextAngleUnit, ColorUnit,
  StatusBarUnit, CopyModeUnit1, CopyModeUnit2, ImageUnit, ListBoxDrawUnit,
  ScanUnit;

procedure OpenForm(form: TForm);
begin

  form.Left := (Screen.WorkAreaWidth - form.Width) div 2;
  form.Top := (Screen.WorkAreaHeight - form.Height) div 2;
  form.ShowModal;
  form.Free;
end;

procedure TMainForm.Button10Click(Sender: TObject);
begin
  ImageLoadForm := TImageLoadForm.Create(Owner);
  OpenForm(ImageLoadForm);
end;

procedure TMainForm.Button11Click(Sender: TObject);
begin
  ListBoxDrawForm := TListBoxDrawForm.Create(Owner);
  OpenForm(ListBoxDrawForm);
end;

procedure TMainForm.Button12Click(Sender: TObject);
begin
 ScanForm:= TScanForm.Create(Owner);
 OpenForm(ScanForm);
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
  RectangleForm := TRectangleForm.Create(Owner);
  OpenForm(RectangleForm);
end;

procedure TMainForm.Button2Click(Sender: TObject);
begin
  PenForm := TPenForm.Create(Owner);
  OpenForm(PenForm);
end;

procedure TMainForm.Button3Click(Sender: TObject);
begin
  BrushForm := TBrushForm.Create(Owner);
  OpenForm(BrushForm);
end;

procedure TMainForm.Button4Click(Sender: TObject);
begin
  TextForm := TTextForm.Create(Owner);
  OpenForm(TextForm);
end;

procedure TMainForm.Button5Click(Sender: TObject);
begin
  TextAngleForm := TTextAngleForm.Create(Owner);
  OpenForm(TextAngleForm);
end;

procedure TMainForm.Button6Click(Sender: TObject);
begin
  ColorSelectForm := TColorSelectForm.Create(Owner);
  OpenForm(ColorSelectForm);
end;

procedure TMainForm.Button7Click(Sender: TObject);
begin
  StatusBarForm := TStatusBarForm.Create(Owner);
  OpenForm(StatusBarForm);
end;

procedure TMainForm.Button8Click(Sender: TObject);
begin
  CopyModeForm1 := TCopyModeForm1.Create(Owner);
  OpenForm(CopyModeForm1);
end;

procedure TMainForm.Button9Click(Sender: TObject);
begin
  CopyModeForm2 := TCopyModeForm2.Create(Owner);
  OpenForm(CopyModeForm2);
end;

end.
