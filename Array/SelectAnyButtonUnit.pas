unit SelectAnyButtonUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TSelectAnyButtonForm = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SelectAnyButtonForm: TSelectAnyButtonForm;

implementation

{$R *.dfm}

end.
