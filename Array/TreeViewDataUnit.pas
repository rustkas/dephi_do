unit TreeViewDataUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type

  PNodeOptions = ^NodeOptions;
  NodeOptions=record
   Name: String[255];
   Surname: String[255];
   Address: String[255];
   EMail: String[255];
  end;

  TTreeViewDataForm = class(TForm)
    TreeView: TTreeView;
    Panel1: TPanel;
    NewBtn: TBitBtn;
    DelBtn: TBitBtn;
    SaveBtn: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    NameEdit: TEdit;
    SurnameEdit: TEdit;
    AddressEdit: TEdit;
    EMailEdit: TEdit;
    procedure NewBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure TreeViewChanging(Sender: TObject; Node: TTreeNode;
      var AllowChange: Boolean);
    procedure DelBtnClick(Sender: TObject);
    procedure TreeViewMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TreeViewDeletion(Sender: TObject; Node: TTreeNode);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TreeViewDataForm: TTreeViewDataForm;
  SelectedTreeNode: TTreeNode;

implementation

{$R *.dfm}

procedure TTreeViewDataForm.NewBtnClick(Sender: TObject);
var
  NodeName: String;
  NodeData: PNodeOptions;
  NewNode: TTreeNode;
  InputQueryResult: Boolean;
begin
  InputQueryResult := InputQuery('Новый элемент', 'Введите имя нового элемента',
    NodeName);
  if not InputQueryResult then
    exit;

  NewNode := TreeView.Items.AddChild(TreeView.Selected, NodeName);

  // Инициализация начальных данных структуры
  NodeData := new(PNodeOptions);
  NodeData.Name := '';
  NodeData.Surname := '';
  NodeData.Address := '';
  NodeData.EMail := '';

  NewNode.Data := NodeData;
end;

procedure TTreeViewDataForm.SaveBtnClick(Sender: TObject);
begin
  if SelectedTreeNode = nil then
    exit;

  PNodeOptions(SelectedTreeNode.Data).Name := NameEdit.Text;
  PNodeOptions(SelectedTreeNode.Data).Surname := SurnameEdit.Text;
  PNodeOptions(SelectedTreeNode.Data).Address := AddressEdit.Text;
  PNodeOptions(SelectedTreeNode.Data).EMail := EMailEdit.Text;
end;

procedure TTreeViewDataForm.TreeViewChanging(Sender: TObject; Node: TTreeNode;
  var AllowChange: Boolean);
begin
  if Node = nil then
    exit;

  NameEdit.Text := PNodeOptions(Node.Data).Name;

  SurnameEdit.Text := PNodeOptions(Node.Data).Surname;
  AddressEdit.Text := PNodeOptions(Node.Data).Address;
  EMailEdit.Text := PNodeOptions(Node.Data).EMail;

    if nil <> TreeView.Selected then
    SelectedTreeNode := TreeView.Selected;
end;

procedure TTreeViewDataForm.TreeViewDeletion(Sender: TObject; Node: TTreeNode);
begin
  if Node = SelectedTreeNode then
    SelectedTreeNode := nil;
end;

procedure TTreeViewDataForm.TreeViewMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if nil <> TreeView.Selected then
    SelectedTreeNode := TreeView.Selected;
end;

procedure TTreeViewDataForm.DelBtnClick(Sender: TObject);
begin
  if TreeView.Selected = nil then
    exit;
  TreeView.Selected.Delete;
end;

end.
