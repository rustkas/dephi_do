unit ManageConnectFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Win.ADODB, Data.DB, Vcl.DBGrids,
  Vcl.Grids, System.ImageList, Vcl.ImgList, Vcl.Menus, Vcl.ComCtrls,
  Vcl.ToolWin;

type
  TManageConnectForm = class(TForm)
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    CloseMenu: TMenuItem;
    N3: TMenuItem;
    TownBookMenuItem: TMenuItem;
    Help1: TMenuItem;
    AboutMenuItem: TMenuItem;
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    NewButton: TToolButton;
    EditButton: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    ToolButton6: TToolButton;
    N2: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    procedure CloseMenuClick(Sender: TObject);
    procedure TownBookMenuItemClick(Sender: TObject);
    procedure AboutMenuItemClick(Sender: TObject);
    procedure NewButtonClick(Sender: TObject);
    procedure EditButtonClick(Sender: TObject);
    procedure DelButtonClick(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ManageConnectForm: TManageConnectForm;

implementation

uses DataModule2Unit, TownBookUnit, EditFormUnit, AboutUnit;
{$R *.dfm}

procedure TManageConnectForm.CloseMenuClick(Sender: TObject);
begin
  ManageConnectForm.Close;
end;

procedure TManageConnectForm.TownBookMenuItemClick(Sender: TObject);
begin
  TownBookForm.ShowModal;
end;

procedure TManageConnectForm.AboutMenuItemClick(Sender: TObject);
begin
  AboutForm.ShowModal;
end;

procedure TManageConnectForm.N10Click(Sender: TObject);
begin
DataModule1.BookTable.IndexFieldNames:='Телефон';
end;

procedure TManageConnectForm.N9Click(Sender: TObject);
begin
DataModule1.BookTable.IndexFieldNames:='Фамилия';
end;

procedure TManageConnectForm.NewButtonClick(Sender: TObject);
begin
  DataModule1.BookTable.Insert;
  EditRecordForm.ShowModal;
end;

procedure TManageConnectForm.EditButtonClick(Sender: TObject);
begin
  EditRecordForm.ShowModal;
end;

procedure TManageConnectForm.DelButtonClick(Sender: TObject);
begin
  if Application.MessageBox(PChar('Вы действительно хотите удалить ' +
    DataModule1.BookTableФамилия.AsString), 'Внимание!!!', MB_OKCANCEL) = id_OK
  then
    DataModule1.BookTable.Delete;
end;

end.
