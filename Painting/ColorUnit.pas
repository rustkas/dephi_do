unit ColorUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TColorSelectForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RedEdit: TEdit;
    GreenEdit: TEdit;
    BlueEdit: TEdit;
    Button1: TButton;
    ColorDialog1: TColorDialog;
    procedure Button1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure RedEditChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ColorSelectForm: TColorSelectForm;

implementation

{$R *.dfm}

procedure TColorSelectForm.Button1Click(Sender: TObject);
var
  c: LongInt;
begin
  if not ColorDialog1.Execute then
    exit;

  c := ColorToRGB(ColorDialog1.Color);
  RedEdit.Text := IntToStr(GetRValue(c));
  GreenEdit.Text := IntToStr(GetGValue(c));
  BlueEdit.Text := IntToStr(GetBValue(c));

  Repaint;
end;

procedure TColorSelectForm.FormPaint(Sender: TObject);
begin
  Canvas.Brush.Color := RGB(StrToIntDef(RedEdit.Text, 0),
    StrToIntDef(GreenEdit.Text, 0), StrToIntDef(BlueEdit.Text, 0));
  Canvas.Rectangle(10, 10, 250, 150);
end;

procedure TColorSelectForm.RedEditChange(Sender: TObject);
begin
  Repaint;
end;

end.
