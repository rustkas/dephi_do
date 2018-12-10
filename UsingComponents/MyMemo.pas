unit MyMemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFMemo = class(TForm)
    MainMemo: TMemo;
    ClearButton: TButton;
    AddButton: TButton;
    DeleteButton: TButton;
    EditButton: TButton;
    procedure ClearButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AddButtonClick(Sender: TObject);
    procedure DeleteButtonClick(Sender: TObject);
    procedure EditButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMemo: TFMemo;

implementation

{$R *.dfm}

procedure TFMemo.AddButtonClick(Sender: TObject);
begin
  MainMemo.Lines.Add('Новая строка');
end;

procedure TFMemo.ClearButtonClick(Sender: TObject);
begin
  MainMemo.Lines.Clear();
end;

procedure TFMemo.DeleteButtonClick(Sender: TObject);
begin
  if MainMemo.Lines.Count <> 0 then
    MainMemo.Lines.Delete(MainMemo.CaretPos.Y);
end;

procedure TFMemo.EditButtonClick(Sender: TObject);
begin
MainMemo.Lines.Strings[MainMemo.CaretPos.Y]:='Horiffic';
MainMemo.Lines.Add('-----------------');
MainMemo.Lines.Add('Текст изменён');

end;

procedure TFMemo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MainMemo.Lines.SaveToFile('memo.txt');
end;

procedure TFMemo.FormShow(Sender: TObject);
begin
  MainMemo.Lines.LoadFromFile('memo.txt');
end;

end.
