unit ValueEditUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ValEdit;

type
  TValueEditForm = class(TForm)
    ValueListEditor1: TValueListEditor;
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ValueEditForm: TValueEditForm;

implementation

{$R *.dfm}

procedure TValueEditForm.FormShow(Sender: TObject);
begin
  ValueListEditor1.ItemProps[5].EditStyle := esPickList;
  ValueListEditor1.ItemProps[5].PickList.Add('Петриков');
  ValueListEditor1.ItemProps[5].PickList.Add('Минск');
  ValueListEditor1.ItemProps[5].PickList.Add('Борисоглебск');

  ValueListEditor1.ItemProps[6].EditStyle := esPickList;
  ValueListEditor1.ItemProps[6].PickList.Add('Москва');
  ValueListEditor1.ItemProps[6].PickList.Add('Питер');
  ValueListEditor1.ItemProps[6].PickList.Add('Ростов-на-Дону');
  ValueListEditor1.ItemProps[4].EditMask := '!00/00/0000';
  ValueListEditor1.ItemProps[7].EditMask := '!+7 000-000-00-00';
end;

end.
