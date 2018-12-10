unit MyCheckBox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFCheckBox = class(TForm)
    MyFirstButton: TButton;
    AllowCloseCheckBox: TCheckBox;
    EnableButtonCheckbox: TCheckBox;
    procedure EnableButtonCheckboxClick(Sender: TObject);
    procedure MyFirstButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCheckBox: TFCheckBox;

implementation

{$R *.dfm}

procedure TFCheckBox.EnableButtonCheckboxClick(Sender: TObject);
begin
  MyFirstButton.Enabled := not EnableButtonCheckbox.Checked;
end;

procedure TFCheckBox.MyFirstButtonClick(Sender: TObject);
begin
  if AllowCloseCheckBox.Checked then
    Close();
end;

end.
