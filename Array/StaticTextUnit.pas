unit StaticTextUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Vcl.StdCtrls;

type
  TStaticTextForm = class(TForm)
    StaticText1: TStaticText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StaticTextForm: TStaticTextForm;

implementation

{$R *.dfm}

end.
