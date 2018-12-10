unit MainModule;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
 TMainForm = class(TForm)
    Panel1: TPanel;
    CreateButton: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure CreateButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses ChildModule;
{$R *.dfm}

procedure TMainForm.CreateButtonClick(Sender: TObject);
begin
 ChildForm:= TChildForm.Create(Owner);
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
 ActiveMDIChild.Caption:='активное дочеренее окно';
end;

procedure TMainForm.Button2Click(Sender: TObject);
begin
 Tile;
end;

procedure TMainForm.Button3Click(Sender: TObject);
begin
 Next;
end;

end.
