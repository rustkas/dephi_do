unit MyRadioButton;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

  type
  TFRadioButton = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRadioButton: TFRadioButton;

implementation

{$R *.dfm}

end.
