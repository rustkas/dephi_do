unit My_Editor1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TF_delete_pos = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    lbl_position: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_delete_pos: TF_delete_pos;

implementation

{$R *.dfm}

procedure TF_delete_pos.Button1Click(Sender: TObject);
begin
  //Memo1.Text := Delete(Memo1.Text, (Memo1.SelStart + 1), Memo1.SelLength);
end;

procedure TF_delete_pos.Button2Click(Sender: TObject);
var
  posiition: Integer;
begin
//  posiition := Pos(Memo1.Text, (Memo1.SelStart + 1), Memo1.SelLength);
//  lbl_position := posiition.ToString();
end;

end.
