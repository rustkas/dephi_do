unit MainMenuApp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    ImageList1: TImageList;
    N1: TMenuItem;
    N2: TMenuItem;
    AboutMenuItem: TMenuItem;
    N4: TMenuItem;
    SaveMenuItem: TMenuItem;
    N6: TMenuItem;
    CloseMenuItem: TMenuItem;
    procedure CloseMenuItemClick(Sender: TObject);
    procedure AboutMenuItemClick(Sender: TObject);
    procedure SaveMenuItemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses AboutUnit, NonModalFormUnit;

procedure TForm1.AboutMenuItemClick(Sender: TObject);
begin
  AboutForm.ShowModal;
end;

procedure TForm1.CloseMenuItemClick(Sender: TObject);
begin
  Close();
end;

procedure TForm1.SaveMenuItemClick(Sender: TObject);
begin

//    Application.MessageBox(PChar(NonModalForm.ShowModal.ToString), 'Òû ââ¸ë:',
//      MB_OKCANCEL)

  if NonModalForm.ShowModal = mrOk then
    Application.MessageBox(PChar(NonModalForm.Edit1.Text), 'Òû ââ¸ë:',
      MB_OK)
end;

end.
