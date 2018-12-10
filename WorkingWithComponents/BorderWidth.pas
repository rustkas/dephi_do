unit BorderWidth;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TFBorderWidth = class(TForm)
    RichEdit1: TRichEdit;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBorderWidth: TFBorderWidth;

implementation

{$R *.dfm}

end.
