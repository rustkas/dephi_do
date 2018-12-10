unit ListCheckBoxUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CheckLst;

type
  TCheckListBoxForm = class(TForm)
    CheckListBox1: TCheckListBox;
    Label1: TLabel;
    OKButton: TButton;
    procedure OKButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CheckListBoxForm: TCheckListBoxForm;

implementation

{$R *.dfm}

procedure TCheckListBoxForm.OKButtonClick(Sender: TObject);
var
  i: Integer;
  Str: String;
  count: Integer;
begin

  count := 0;
  Str := 'Вы выбрали: ';

  for i := 0 to CheckListBox1.Items.count - 1 do
  begin
    if CheckListBox1.Checked[i] = true then
    begin
      if count >= 1 then
      begin
        Str := Str + ', ';
      end;
      Str := Str + CheckListBox1.Items[i];
      count := count + 1;
    end;
  end;

  if count = 0 then
  begin
    Application.MessageBox('Ничего не было выбрано', 'Внимание!!!');
    Exit();
  end;
  Str := Str + '.';
  Application.MessageBox(PChar(Str), 'Внимание!!!');
end;

end.
