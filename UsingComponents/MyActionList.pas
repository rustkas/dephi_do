unit MyActionList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Vcl.StdCtrls, Vcl.ActnList,
  System.Actions;

type
  TFActionList = class(TForm)
   ActionList1: TActionList;
    Action1: TAction;
    Button1: TButton;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    Action8: TAction;
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FActionList: TFActionList;

implementation

{$R *.dfm}

procedure TFActionList.Action1Execute(Sender: TObject);
begin
 Close;
end;

end.

