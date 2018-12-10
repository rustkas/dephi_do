unit ScrollBoxUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TScrollBoxForm = class(TForm)
    ScrollBox1: TScrollBox;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScrollBoxForm: TScrollBoxForm;

implementation

{$R *.dfm}

end.
