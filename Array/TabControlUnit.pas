unit TabControlUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TTabControlForm = class(TForm)
    TabControl1: TTabControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    procedure TabControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TabControlForm: TTabControlForm;

implementation

{$R *.dfm}

procedure TTabControlForm.TabControl1Change(Sender: TObject);
begin
  Panel1.Visible := false;
  Panel2.Visible := false;
  Panel3.Visible := false;
  Panel4.Visible := false;

  case TabControl1.TabIndex of
    0:
      Panel1.Visible := true;
    1:
      Panel2.Visible := true;
    2:
      Panel3.Visible := true;
    3:
      Panel4.Visible := true;
  end;
end;

end.
