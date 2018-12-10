unit PrintListUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Printers, Vcl.StdCtrls;

type
  TPrintListInfoForm = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    PrinterSetupDialog1: TPrinterSetupDialog;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrintListInfoForm: TPrintListInfoForm;

implementation

{$R *.dfm}

procedure TPrintListInfoForm.FormCreate(Sender: TObject);
begin
  Button1Click(nil);
end;

procedure TPrintListInfoForm.Button1Click(Sender: TObject);
var
  i: Integer;
begin
  ListBox1.Items.Clear;
  for i := 0 to Printer.Printers.Count - 1 do
    ListBox1.Items.Add(Printer.Printers.Strings[i]);

  Edit1.Text := Printer.Printers.Strings[Printer.PrinterIndex];
end;

procedure TPrintListInfoForm.Button2Click(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
  Button1Click(nil);
end;

end.
