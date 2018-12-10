unit PrintListViewUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Printers;

type
  TPrintListViewForm = class(TForm)
    ListView1: TListView;
    Panel1: TPanel;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrintListViewForm: TPrintListViewForm;

implementation

{$R *.dfm}

function Scale(Value: longint; Pct: integer): longint;
begin
 if Pct > 100 then
  Pct := 100
 else if Pct < 0 then
  Pct := 0;

 if Pct = 0 then
  Result := Value
 else
  Result := Value + MulDiv(Value, Pct, 100);
end;

procedure PrintListView(intro:String; lwToSave:TListView);
var
 LinesHeight, LineShift, WordWidth, ListViewWordWidth,
     LineWidth, CellWidth: Longint;
 iTop, iLeft, i, row:Integer;
 TextRect:TRect;
 const
 letShift:Integer = 10;
begin
 with TPrintDialog.Create(nil) do
  begin
	 Options := [poWarning];
   if not Execute then
    exit;
   Free;
  end;

 Printer.Title := intro;
 Printer.BeginDoc;

 Printer.Canvas.Font.Assign(lwToSave.Font);
 LinesHeight := Scale(Printer.Canvas.TextHeight('M'), 20);
 LineShift := (LinesHeight-Printer.Canvas.TextHeight('M')) div 2;
 WordWidth := Printer.Canvas.TextWidth('0');
 ListViewWordWidth := lwToSave.Canvas.TextWidth('0');

 iTop:=LinesHeight*2;
 LineWidth:=0;

 // Print Header
 Printer.Canvas.Font.Style:=[fsBold];
 iLeft := WordWidth*5;
 Printer.Canvas.MoveTo(iLeft, iTop);
 Printer.Canvas.LineTo(iLeft, iTop+LinesHeight);
 for i := 0 to lwToSave.Columns.Count - 1 do
  begin
   Printer.Canvas.TextOut(iLeft+LineShift+letShift, iTop+LineShift, lwToSave.Columns[i].Caption);

   CellWidth:=LineShift*2+lwToSave.Columns[i].Width*WordWidth div ListViewWordWidth;
   LineWidth:=LineWidth+CellWidth;
   iLeft := iLeft+CellWidth;

   Printer.Canvas.MoveTo(iLeft, iTop);
   Printer.Canvas.LineTo(iLeft, iTop+LinesHeight);
  end;

 iLeft := WordWidth*5;
 Printer.Canvas.MoveTo(iLeft, iTop);
 Printer.Canvas.LineTo(iLeft+LineWidth, iTop);
 Printer.Canvas.MoveTo(iLeft, iTop+LinesHeight);
 Printer.Canvas.LineTo(iLeft+LineWidth, iTop+LinesHeight);

 // Print rows
 Printer.Canvas.Font.Style:=[];
 for row := 0 to lwToSave.Items.Count - 1 do
  begin
   iTop:=iTop+LinesHeight;

   // new page
   if iTop>Printer.PageHeight-LinesHeight*3 then
    begin
     iTop:=LinesHeight*2;
     Printer.NewPage;
    end;


   Printer.Canvas.MoveTo(iLeft, iTop);
   Printer.Canvas.LineTo(iLeft, iTop+LinesHeight);
   for i := 0 to lwToSave.Columns.Count - 1 do
    begin
     CellWidth:=LineShift*2+lwToSave.Columns[i].Width*WordWidth div ListViewWordWidth;

     TextRect:=Rect(iLeft+LineShift+letShift, iTop+LineShift, iLeft+LineShift+CellWidth, iTop+LineShift+LinesHeight);
     if i=0 then
      Intro:=lwToSave.Items[row].Caption
     else
      Intro:=lwToSave.Items[row].SubItems[i-1];
     Printer.Canvas.TextRect(TextRect, Intro);

     iLeft := iLeft+CellWidth;

     Printer.Canvas.MoveTo(iLeft, iTop);
     Printer.Canvas.LineTo(iLeft, iTop+LinesHeight);
    end;

   iLeft := WordWidth*5;
   Printer.Canvas.MoveTo(iLeft, iTop);
   Printer.Canvas.LineTo(iLeft+LineWidth, iTop);
   Printer.Canvas.MoveTo(iLeft, iTop+LinesHeight);
   Printer.Canvas.LineTo(iLeft+LineWidth, iTop+LinesHeight);
  end;

 Printer.EndDoc;
end;

procedure TPrintListViewForm.Button1Click(Sender: TObject);
begin
 PrintListView('Заголовок печати', ListView1);
end;

procedure TPrintListViewForm.FormShow(Sender: TObject);
begin
 with ListView1.Items.Add do
  begin
   Caption:='Иванов';
   SubItems.Add('Петр');
   SubItems.Add('Иванович');
   SubItems.Add('1 сентября 1991');
  end;

 with ListView1.Items.Add do
  begin
   Caption:='Петров';
   SubItems.Add('Петр');
   SubItems.Add('Сергеевич');
   SubItems.Add('21 ноября 1981');
  end;

 with ListView1.Items.Add do
  begin
   Caption:='Сидоров';
   SubItems.Add('Олег');
   SubItems.Add('Ренгенович');
   SubItems.Add('2 июня 1985');
  end;
end;

end.

