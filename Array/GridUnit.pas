unit GridUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.Mask;

type
  TGridForm = class(TForm)
    StringGrid1: TStringGrid;
    DateEdit: TMaskEdit;
    CheckBox1: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure DateEditChange(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GridForm: TGridForm;

implementation

{$R *.dfm}

procedure TGridForm.FormShow(Sender: TObject);
begin
 StringGrid1.Cells[0,1]:='Иванов';
 StringGrid1.Cells[0,2]:='Петров';
 StringGrid1.Cells[0,3]:='Сидоров';
 StringGrid1.Cells[0,4]:='Смирнов';

 StringGrid1.Cells[1,0]:='Дата рожд.';
 StringGrid1.Cells[2,0]:='Место рожд.';
 StringGrid1.Cells[3,0]:='Прописка';
 StringGrid1.Cells[4,0]:='Семейное положение';

 StringGrid1.Cells[4,1]:='Холост';
 StringGrid1.Cells[4,2]:='Холост';
 StringGrid1.Cells[4,3]:='Холост';
 StringGrid1.Cells[4,4]:='Холост';


end;
procedure TGridForm.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
 DateEdit.Visible := false;
 CheckBox1.Visible := false;
 if (gdFocused in State) then
  begin
   if ACol=1 then
    begin
     DateEdit.Text:=StringGrid1.Cells[ACol, ARow];
     DateEdit.Left := Rect.Left + StringGrid1.Left+2;
     DateEdit.Top := Rect.Top + StringGrid1.top+2;
     DateEdit.Width := Rect.Right - Rect.Left;
     DateEdit.Height := Rect.Bottom - Rect.Top;
     DateEdit.Visible := True;
     exit;
    end;

   if ACol=4 then
    begin
     CheckBox1.Caption:=StringGrid1.Cells[ACol, ARow];

     if CheckBox1.Caption='Женат' then
      CheckBox1.Checked:=true
     else
      CheckBox1.Checked:=false;

     CheckBox1.Left := Rect.Left + StringGrid1.Left+2;
     CheckBox1.Top := Rect.Top + StringGrid1.top+2;
     CheckBox1.Width := Rect.Right - Rect.Left;
     CheckBox1.Height := Rect.Bottom - Rect.Top;
     CheckBox1.Visible := True;
     exit;
    end;
  end;
end;

procedure TGridForm.DateEditChange(Sender: TObject);
begin
 StringGrid1.Cells[StringGrid1.Col, StringGrid1.Row]:=DateEdit.Text;
end;

procedure TGridForm.CheckBox1Click(Sender: TObject);
begin
 if CheckBox1.Checked=true then
  CheckBox1.Caption:='Женат'
 else
  CheckBox1.Caption:='Холост';

 StringGrid1.Cells[StringGrid1.Col, StringGrid1.Row]:=CheckBox1.Caption;
end;


end.
