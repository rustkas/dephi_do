unit EditFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask;

type
  TEditRecordForm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    Button1: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EditRecordForm: TEditRecordForm;

implementation

uses DataModule2Unit;

{$R *.dfm}

procedure TEditRecordForm.BitBtn1Click(Sender: TObject);
begin
  if DataModule1.BookTable.Modified then
    DataModule1.BookTable.Post;
end;

procedure TEditRecordForm.Button1Click(Sender: TObject);
begin
  DataModule1.BookTable.Cancel;

  Close;
end;

end.
