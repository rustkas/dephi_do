unit MainModule; // имя модуля

// начало объявления интерфейсов
interface

uses // после этого слова идёт список подключаемых модулей.
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

// commentary
{
  commentary
}
type // после этого слова идет объявление типов
  TForm1 = class(TForm) // начало описания нового объекта TForm

    // здесь описываются компоненты и события
  private // после этого слова можно описывать закрытые данные объекта
    // integer_var: Integer;
    // cardinal_var: Cardinal;
    // shortint_var: ShortInt;
    // smallint_var: SmallInt;
    // longint_var: LongInt;
    // int64_var: Int64;
    // byte_var: Byte;
    // word_var: Word;
    // longword_var: LongWord;
    //
    // real48_var: Real48;
    // real_var: Real;
    // single_var: Single;
    // double_var: Double;
    // extened_var: Extended;
    // comp_var: Comp;
    // currency_var: Currency;
    //
    // short_string_var: ShortString;
    // //ascii_string_var: AnsciString;
    // ascii_string_var: WideString;
    // str_short_val: ShortString;
    // b:array [0..99] of Integer;
    // s:PChar;
    // v: Variant;
    { Private declarations }

    { Здесь можно описывать переменные и методы доступные только для объекта TForm1 }
    // function Exampl2(): Integer;
  public // после этого слова можно описывать открытые данные объекта
    { Public declarations }

  protected
    // procedure Exampl1();

    { Здесь можно описывать переменные и методы доступные для любого другого модуля }
  end;

  TMyPoint = class
  protected
    PointX, PointY: Integer;
  public
    constructor Create(X, Y: Integer); virtual;
    // procedure MethodDyn1();dynamic;
    // procedure MethodMessage1();message;
    // procedure MethodAbstract1();virtual; abstract;
    procedure Draw(); virtual;

  end;

  TMyLine = class(TMyPoint)
  protected
    PointX, PointY: Integer;
  public
    constructor Create(X, Y, X1, Y1: Integer); reintroduce;
    procedure Draw(); override;
  end;

  TMyNewPoint = class(TMyPoint)

  public
    constructor Create(X, Y: Integer); reintroduce;
    procedure Draw(); override;
  end;

var // объявления глобальных переменных
  Form1: TForm1; // это описана переменная Form1 типа объекта TForm1

const
  Pi: real = 3.14;
  MessageText = 'Error message description';

  // начало реализации
implementation

// procedure Exampl1();
// var
// i: Integer;
// begin
// i:=10;
// end;

function Example1: Integer;
var
  i: Integer;
begin
  i := 10;
  Result := i;
end;

// function TForm1.Exampl2(): Integer;
// var
// x: Integer;
// begin
// x := Example1();
// Result := x;
// end;

function Example2(i: Integer): Integer;
begin
  Result := i * 2;
end;

function Example3(i: Integer): Integer;
begin
  i := 10;
  Example3 := Example2(i);
end;

function Example4(): Integer;
var
  X: Integer;
begin

  // Exampl4 := x + Example1();
  Example4 := Example1();
end;

procedure Example5();
var
  X: Integer;
begin
  X := 20;
  Exit;
  X := 10;
end;

function Example6(index1, index2: Integer): real;
begin
  Example6 := index1 / index2;
end;

function Example7(): real;
var
  index1: Integer;
  index2: Integer;
begin

  index1 := 1;
  index2 := 1;
  Example7 := Example6(index1, index2);
end;

function Example8(index1: Integer; index2: Integer = 2): real;
begin
  Example8 := index1 / index2 + Example7();
end;

function Example9(index1: Boolean): real;
begin
  if index1 then
    Result := Example8(20)
  else
    Result := Example8(30, 2);
end;

function MulNumber(X: Integer): Integer;
begin
  if X = 1 then
  begin
    Result := 1;
    Exit;
  end;
  Result := X * MulNumber(X - 1);
  // Result:= x* MulNumber(x);
end;

procedure Example10(Sender: TObject);

  Function Suma(i, j: Integer): Integer;
  begin
    Result := i + j;
  end;

var
  i: Integer;
begin
  i := Suma(10, 20);
end;

procedure Example11(var str: String);
begin
  str := 'Text';
end;

procedure Example12();
var
  s: String;
begin
  Example11(s);
end;

function Sum(i, j: Integer): Integer; overload;
begin
  Result := i + j;
end;

function Sum(i, j, z: Integer): Integer; overload;
begin
  Result := i + j + z;
end;

function Sum(i, j: String): String; overload;
begin
  Result := i + j;
end;

procedure test();
var
  i: Integer;
begin
  i := Sum(10, 5) + Sum(1, 2, 2);
  Sum('Привет', 'Как жизнь');
end;
/// ///////////////////////
/// TPoint
///

constructor TMyPoint.Create(X, Y: Integer);
begin
  PointX := X;
  PointY := Y;
end;

constructor TMyLine.Create(X, Y, X1, Y1: Integer);
begin
  inherited Create(X, Y);
  PointX := X1;
  PointY := Y1;
end;

constructor TMyNewPoint.Create(X, Y: Integer);
begin
  inherited Create(X, Y);

end;

procedure TMyPoint.Draw();
begin

end;

procedure TMyLine.Draw();
begin

end;

procedure TMyNewPoint.Draw();
begin

end;

{$R *.dfm} // подключение .dfm файла с данными о визуальных объектах

end. // конец модуля
