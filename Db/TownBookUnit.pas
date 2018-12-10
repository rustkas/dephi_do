unit TownBookUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TTownBookForm = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    AddBtn: TBitBtn;
    SaveBtn: TBitBtn;
    DelBtn: TBitBtn;
    procedure AddBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TownBookForm: TTownBookForm;

implementation

{$R *.dfm}

uses DataModule2Unit;

procedure TTownBookForm.AddBtnClick(Sender: TObject);
begin
  DataModule1.TownTable.Insert;
  DBGrid1.SetFocus;
end;

procedure TTownBookForm.SaveBtnClick(Sender: TObject);
begin
  if DataModule1.TownTable.Modified then
    DataModule1.TownTable.Post;
end;

procedure TTownBookForm.BitBtn1Click(Sender: TObject);
begin
  CloseModal;
end;

procedure TTownBookForm.DelBtnClick(Sender: TObject);
begin
  DataModule1.TownTable.Delete;
end;

end.
