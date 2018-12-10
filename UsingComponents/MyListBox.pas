unit MyListBox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFListBox = class(TForm)
    ListBox1: TListBox;
    Edit1: TEdit;
    AddButton: TButton;
    DelButton: TButton;
    procedure ListBox1Click(Sender: TObject);
    procedure AddButtonClick(Sender: TObject);
    procedure DelButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListBox: TFListBox;
  lastSelectedIndex: Integer;

const
  UNSPECIFYED: Integer = -1;

implementation

{$R *.dfm}

procedure TFListBox.ListBox1Click(Sender: TObject);
begin
  Edit1.Text := ListBox1.Items.Strings[ListBox1.ItemIndex];
  lastSelectedIndex := ListBox1.ItemIndex;
end;

procedure TFListBox.AddButtonClick(Sender: TObject);
begin
  ListBox1.Items.Add('Новая строка')
end;

procedure TFListBox.DelButtonClick(Sender: TObject);
begin
  if lastSelectedIndex >= ListBox1.Count then
  begin
    ListBox1.ItemIndex := ListBox1.Count - 1;
    lastSelectedIndex := ListBox1.ItemIndex - 1;
  end

  else

    ListBox1.ItemIndex := lastSelectedIndex;

  ListBox1.Items.Delete(ListBox1.ItemIndex);
end;

procedure TFListBox.FormCreate(Sender: TObject);
begin
  lastSelectedIndex := UNSPECIFYED;
end;

end.
