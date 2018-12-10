unit MyListBoxMultiSelect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFListBoxMultiSelect = class(TForm)
    MultiListBox: TListBox;
    ResultMemo: TMemo;
    CheckButton: TButton;
    procedure CheckButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListBoxMultiSelect: TFListBoxMultiSelect;

implementation

{$R *.dfm}

procedure TFListBoxMultiSelect.CheckButtonClick(Sender: TObject);
begin
  ResultMemo.Clear;

  if MultiListBox.Selected[0] then
    ResultMemo.Lines.Add(MultiListBox.Items.Strings[0]);

  if MultiListBox.Selected[1] then
    ResultMemo.Lines.Add(MultiListBox.Items.Strings[1]);

  if MultiListBox.Selected[2] then
    ResultMemo.Lines.Add(MultiListBox.Items.Strings[2]);

  if MultiListBox.Selected[3] then
    ResultMemo.Lines.Add(MultiListBox.Items.Strings[3]);

  if MultiListBox.Selected[4] then
    ResultMemo.Lines.Add(MultiListBox.Items.Strings[4]);

  if MultiListBox.Selected[5] then
    ResultMemo.Lines.Add(MultiListBox.Items.Strings[5]);



end;

end.
