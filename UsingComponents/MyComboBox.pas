unit MyComboBox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFComboBox = class(TForm)
  Edit1: TEdit;
    AddButton: TButton;
    DelButton: TButton;
    ComboBox1: TComboBox;
    procedure AddButtonClick(Sender: TObject);
    procedure DelButtonClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FComboBox: TFComboBox;

implementation

{$R *.dfm}
procedure TFComboBox.AddButtonClick(Sender: TObject);
begin
 ComboBox1.Items.Add(Edit1.Text);

 ComboBox1.Text := Edit1.Text;

end;

procedure TFComboBox.DelButtonClick(Sender: TObject);
begin
 ComboBox1.Items.Delete(ComboBox1.ItemIndex);
end;

procedure TFComboBox.ComboBox1Change(Sender: TObject);
begin
 Edit1.Text:=ComboBox1.Items.Strings[ComboBox1.ItemIndex];
end;

end.
