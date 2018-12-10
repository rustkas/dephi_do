unit MyComboBoxStyles;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFComboBoxStyles = class(TForm)
   ComboBox1: TComboBox;
    Label1: TLabel;
    ComboBox2: TComboBox;
    Label2: TLabel;
    ComboBox3: TComboBox;
    Label3: TLabel;
    ComboBox4: TComboBox;
    Label4: TLabel;
    ComboBox5: TComboBox;
    Label5: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FComboBoxStyles: TFComboBoxStyles;

implementation

{$R *.dfm}

end.
