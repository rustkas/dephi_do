unit ProgressBarUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TProgressBarForm = class(TForm)
    ProgressBar1: TProgressBar;

    Button1: TButton;
    Animate1: TAnimate;
    Animate2: TAnimate;
    Animate3: TAnimate;
    Animate4: TAnimate;
    Animate5: TAnimate;
    Animate6: TAnimate;
    Animate7: TAnimate;
    Animate8: TAnimate;
    Animate9: TAnimate;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StartAnimatin();
    procedure StopAnimatin();
    procedure Animation(action: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProgressBarForm: TProgressBarForm;
  anim_array: array [0 .. 8] of TAnimate;

implementation

{$R *.dfm}

procedure TProgressBarForm.StartAnimatin();
begin
  Animation(true);
end;

procedure TProgressBarForm.StopAnimatin();
begin
  Animation(false);
end;

procedure TProgressBarForm.Animation(action: Boolean);
var
  i: Integer;
begin
  for i := 0 to 8 do
    anim_array[i].Active := action;
end;

procedure TProgressBarForm.Button1Click(Sender: TObject);
var
  i: Integer;

begin
//  StartAnimatin();
  // ProgressBar1.Max:=20;

  for i := 0 to 20 do
  begin
    // Здесь можно делать какой-то расчёт

    // После расчёта отображаем текущее состояние
    // ProgressBar1.Position:=ProgressBar1.Position+5;
    // ProgressBar1.Position:=i;
    ProgressBar1.Position := round(i / 20 * 100);
    Sleep(100);
  end;
  ProgressBar1.Position := 0;
 // StopAnimatin();
end;

procedure TProgressBarForm.FormCreate(Sender: TObject);
begin
  anim_array[0] := Animate1;
  anim_array[1] := Animate2;
  anim_array[2] := Animate3;
  anim_array[3] := Animate4;
  anim_array[4] := Animate5;
  anim_array[5] := Animate6;
  anim_array[6] := Animate7;
  anim_array[7] := Animate8;
  anim_array[8] := Animate9;
end;

end.
