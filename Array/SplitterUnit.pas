unit SplitterUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TSplitterForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Panel3: TPanel;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SplitterForm: TSplitterForm;

implementation

{$R *.dfm}


end.
