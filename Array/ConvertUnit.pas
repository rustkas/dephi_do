unit ConvertUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TStrToIntForm = class(TForm)
    StringEdit: TEdit;
    Label1: TLabel;
    IntToStrEdit: TEdit;
    Label2: TLabel;
    StrToIntButton: TButton;
    IntToStrButton: TButton;
    procedure StrToIntButtonClick(Sender: TObject);
    procedure IntToStrButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StrToIntForm: TStrToIntForm;
  ch: Integer;

implementation

{$R *.dfm}

procedure TStrToIntForm.FormCreate(Sender: TObject);
begin
  ch := 0;
end;

procedure TStrToIntForm.IntToStrButtonClick(Sender: TObject);
begin
  ch := StrToIntDef(IntToStrEdit.Text, 0);
  StringEdit.Text := IntToStr(ch);
end;

procedure TStrToIntForm.StrToIntButtonClick(Sender: TObject);
begin
  ch := StrToIntDef(StringEdit.Text, 0);
  ch := ch * 10;
  IntToStrEdit.Text := IntToStr(ch div 10);
end;

end.
