unit SplashUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TSplashForm = class(TForm)
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SplashForm: TSplashForm;

implementation

{$R *.dfm}

end.
