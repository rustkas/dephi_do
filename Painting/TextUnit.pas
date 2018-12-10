unit TextUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TTextForm = class(TForm)
    ChangeColorButton: TButton;
    ColorDialog1: TColorDialog;
    ChangeFontButton: TButton;
    FontDialog1: TFontDialog;
    procedure FormPaint(Sender: TObject);
    procedure ChangeColorButtonClick(Sender: TObject);
    procedure ChangeFontButtonClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TextForm: TTextForm;

implementation

{$R *.dfm}

procedure TTextForm.FormPaint(Sender: TObject);
begin
  Canvas.Font.Color := ColorDialog1.Color;
  Canvas.TextOut(200, 50, 'Привет всем!!!');
end;

procedure TTextForm.ChangeColorButtonClick(Sender: TObject);
begin
  if ColorDialog1.Execute then
    //FormPaint(nil);
    Repaint;
end;

procedure TTextForm.ChangeFontButtonClick(Sender: TObject);
begin
  if FontDialog1.Execute then
    Canvas.Font := FontDialog1.Font;
  Repaint;
end;

end.
