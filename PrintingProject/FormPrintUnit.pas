unit FormPrintUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Printers,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Imaging.GIFImg
  // , RxGIF
    ;

type
  TFormPrintForm = class(TForm)
    Button1: TButton;
    PrintDialog1: TPrintDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Button2: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrintForm: TFormPrintForm;

implementation

{$R *.dfm}

procedure TFormPrintForm.Button1Click(Sender: TObject);
var
  i, Start, Stop: Integer;
begin
  PrintDialog1.Options := [poPageNums, poSelection, poPrintToFile, poWarning,poHelp];
  PrintDialog1.FromPage := 1;
  PrintDialog1.ToPage := PageControl1.PageCount;
  PrintDialog1.MinPage := 1;
  PrintDialog1.MaxPage := PageControl1.PageCount;
  if not PrintDialog1.Execute then
    exit;

  if PrintDialog1.PrintRange = prAllPages then
  begin
    Start := PrintDialog1.MinPage - 1;
    Stop := PrintDialog1.MaxPage - 1;
  end
  else if PrintDialog1.PrintRange = prSelection then
  begin
    Start := PageControl1.ActivePageIndex;
    Stop := Start;
  end
  else
  begin
    Start := PrintDialog1.FromPage - 1;
    Stop := PrintDialog1.ToPage - 1;
  end;

  Printer.BeginDoc;
  for i := Start to Stop do
  begin
    PageControl1.Pages[i].PaintTo(Printer.Handle, 10, 10);
    if i <> Stop then
      Printer.NewPage;
  end;
  Printer.EndDoc;
end;

procedure TFormPrintForm.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
