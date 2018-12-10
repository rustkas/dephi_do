unit NonModalFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TNonModalForm = class(TForm)
    Label1: TLabel;
    bntClose: TButton;
    btnCancel: TButton;
    Edit1: TEdit;
    procedure bntCloseClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NonModalForm: TNonModalForm;

implementation

{$R *.dfm}



procedure TNonModalForm.bntCloseClick(Sender: TObject);
begin
CloseModal;

end;

end.
