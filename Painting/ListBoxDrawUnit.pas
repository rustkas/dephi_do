unit ListBoxDrawUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Vcl.StdCtrls;

type
  TListBoxDrawForm = class(TForm)
    ListBox1: TListBox;
    procedure ListBox1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ListBoxDrawForm: TListBoxDrawForm;

implementation

{$R *.DFM}


procedure TListBoxDrawForm.ListBox1DrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
begin
 with ListBox1.Canvas do
  begin
   Brush.Color:=clRed;
   Brush.Style:=TBrushStyle(Index);
   Pen.Style:=psClear;
   Rectangle(Rect.Left,Rect.Top,Rect.Left+100,Rect.Bottom);

   Brush.Style:=bsClear;
   Font.Color:=clBlue;
   TextOut(Rect.Left+110,Rect.Top,IntToStr(index));
  end;
end;

end.

