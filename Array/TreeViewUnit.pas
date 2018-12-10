unit TreeViewUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ImgList, Vcl.ComCtrls,
  System.ImageList;

type
  TTreeViewForm = class(TForm)
    TreeView1: TTreeView;
    ImageList1: TImageList;
    AddButton: TButton;
    DelButton: TButton;
    EditButton: TButton;
    AddChildButton: TButton;
    procedure AddButtonClick(Sender: TObject);
    procedure DelButtonClick(Sender: TObject);
    procedure EditButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AddChildButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TreeViewForm: TTreeViewForm;

implementation

{$R *.dfm}

procedure TTreeViewForm.AddButtonClick(Sender: TObject);
var
  CaptionStr: String;
  NewNode: TTreeNode;
begin
  CaptionStr := '';
  if not InputQuery('Ввод имени', 'Введите заголовок элемента', CaptionStr) then
    exit;

  NewNode := TreeView1.Items.Add(TreeView1.Selected, CaptionStr);
  if NewNode.Parent <> nil then
    NewNode.ImageIndex := 1;
end;

procedure TTreeViewForm.DelButtonClick(Sender: TObject);
begin
  if TreeView1.Selected <> nil then
    TreeView1.Items.Delete(TreeView1.Selected);
end;

procedure TTreeViewForm.EditButtonClick(Sender: TObject);
var
  CaptionStr: String;
begin
  CaptionStr := '';
  if not InputQuery('Ввод имени', 'Введите заголовок элемента', CaptionStr) then
    exit;

  TreeView1.Selected.Text := CaptionStr;
end;

procedure TTreeViewForm.FormShow(Sender: TObject);
var
  i: Integer;
begin
  if FileExists(ExtractFilePath(Application.ExeName) + 'tree.dat') then
    TreeView1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'tree.dat');
  for i := 0 to TreeView1.Items.Count - 1 do
  begin
    if TreeView1.Items[i].Parent = nil then
      TreeView1.Items[i].ImageIndex := 0
    else
      TreeView1.Items[i].ImageIndex := 1;
  end;

end;

procedure TTreeViewForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TreeView1.SaveToFile(ExtractFilePath(Application.ExeName) + 'tree.dat');
end;

procedure TTreeViewForm.AddChildButtonClick(Sender: TObject);
var
  CaptionStr: String;
  NewNode: TTreeNode;
begin
  CaptionStr := '';
  if not InputQuery('Ввод имени подэлемента', 'Введите заголовок подэлемента',
    CaptionStr) then
    exit;

  NewNode := TreeView1.Items.AddChild(TreeView1.Selected, CaptionStr);
  if NewNode.Parent <> nil then
    NewNode.ImageIndex := 1;
end;

end.
