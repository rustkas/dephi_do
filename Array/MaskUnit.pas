unit MaskUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask;

type
  TMaskStringInputForm = class(TForm)
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    MaskEdit2: TMaskEdit;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaskStringInputForm: TMaskStringInputForm;

implementation

{$R *.dfm}

end.
