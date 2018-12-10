unit PageControlUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, System.ImageList,
  Vcl.ImgList, Vcl.StdCtrls;

type
  TPageEditForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    ImageList1: TImageList;
    CheckBox1: TCheckBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Label1: TLabel;
    Edit1: TEdit;
    CheckBox2: TCheckBox;
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PageEditForm: TPageEditForm;

implementation

{$R *.dfm}

procedure TPageEditForm.FormDestroy(Sender: TObject);
var
  bitmap: TBitmap;
begin
  bitmap := nil;
  ImageList1.GetBitmap(2, bitmap);
  if bitmap <> nil then
    bitmap.ToString
  else
    Application.MessageBox('Нет такой картинки', 'Сообщение');
end;

end.
