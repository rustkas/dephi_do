unit FloatConverterUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFloatConverterForm = class(TForm)
    lbl_10_2: TLabel;
    lbl_10_2_result: TLabel;
    lbl_10_20_float: TLabel;
    lbl_10_20_float_result: TLabel;
    lbl_10_20_round: TLabel;
    lbl_10_20_round_result: TLabel;
    lbl_0: TLabel;
    lbl0_: TLabel;
    lbl1_: TLabel;
    lbl2_: TLabel;
    lbl3_: TLabel;
    lbl4_: TLabel;
    lbl5_: TLabel;
    lbl6_: TLabel;
    lbl7_: TLabel;
    lbl07: TLabel;
    lbl06: TLabel;
    lbl05: TLabel;
    lbl04: TLabel;
    lbl03: TLabel;
    lbl02: TLabel;
    lbl01: TLabel;
    lbl00: TLabel;
    lbl12: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl_1: TLabel;
    lbl22: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl23: TLabel;
    lbl24: TLabel;
    lbl25: TLabel;
    lbl26: TLabel;
    lbl27: TLabel;
    lbl_2: TLabel;
    lbl34: TLabel;
    lbl_3: TLabel;
    lbl37: TLabel;
    lbl36: TLabel;
    lbl35: TLabel;
    lbl33: TLabel;
    lbl31: TLabel;
    lbl30: TLabel;
    lbl32: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FloatConverterForm: TFloatConverterForm;

implementation

{$R *.dfm}

procedure TFloatConverterForm.FormCreate(Sender: TObject);
var
  i: Integer;

begin
  // i := 10 / 2;
  i := 10 div 2;
  lbl_10_2_result.Caption := ' = ' + IntToStr(i);
  lbl_10_20_float_result.Caption := ' = ' + FloatToStr(10 / 2);
  lbl_10_20_round_result.Caption := ' = ' + IntToStr(round(10 / 2));

  lbl00.Caption := FormatFloat(lbl0_.Caption, StrToFloat(lbl_0.Caption));
  lbl01.Caption := FormatFloat(lbl1_.Caption, StrToFloat(lbl_0.Caption));
  lbl02.Caption := FormatFloat(lbl2_.Caption, StrToFloat(lbl_0.Caption));
  lbl03.Caption := FormatFloat(lbl3_.Caption, StrToFloat(lbl_0.Caption));
  lbl04.Caption := FormatFloat(lbl4_.Caption, StrToFloat(lbl_0.Caption));
  lbl05.Caption := FormatFloat(lbl5_.Caption, StrToFloat(lbl_0.Caption));
  lbl06.Caption := FormatFloat(lbl6_.Caption, StrToFloat(lbl_0.Caption));
  lbl07.Caption := FormatFloat(lbl7_.Caption, StrToFloat(lbl_0.Caption));

  lbl10.Caption := FormatFloat(lbl0_.Caption, StrToFloat(lbl_1.Caption));
  lbl11.Caption := FormatFloat(lbl1_.Caption, StrToFloat(lbl_1.Caption));
  lbl12.Caption := FormatFloat(lbl2_.Caption, StrToFloat(lbl_1.Caption));
  lbl13.Caption := FormatFloat(lbl3_.Caption, StrToFloat(lbl_1.Caption));
  lbl14.Caption := FormatFloat(lbl4_.Caption, StrToFloat(lbl_1.Caption));
  lbl15.Caption := FormatFloat(lbl5_.Caption, StrToFloat(lbl_1.Caption));
  lbl16.Caption := FormatFloat(lbl6_.Caption, StrToFloat(lbl_1.Caption));
  lbl17.Caption := FormatFloat(lbl7_.Caption, StrToFloat(lbl_1.Caption));

  lbl20.Caption := FormatFloat(lbl0_.Caption, StrToFloat(lbl_2.Caption));
  lbl21.Caption := FormatFloat(lbl1_.Caption, StrToFloat(lbl_2.Caption));
  lbl22.Caption := FormatFloat(lbl2_.Caption, StrToFloat(lbl_2.Caption));
  lbl23.Caption := FormatFloat(lbl3_.Caption, StrToFloat(lbl_2.Caption));
  lbl24.Caption := FormatFloat(lbl4_.Caption, StrToFloat(lbl_2.Caption));
  lbl25.Caption := FormatFloat(lbl5_.Caption, StrToFloat(lbl_2.Caption));
  lbl26.Caption := FormatFloat(lbl6_.Caption, StrToFloat(lbl_2.Caption));
  lbl27.Caption := FormatFloat(lbl7_.Caption, StrToFloat(lbl_2.Caption));

  lbl30.Caption := FormatFloat(lbl0_.Caption, StrToFloat(lbl_3.Caption));
  lbl31.Caption := FormatFloat(lbl1_.Caption, StrToFloat(lbl_3.Caption));
  lbl32.Caption := FormatFloat(lbl2_.Caption, StrToFloat(lbl_3.Caption));
  lbl33.Caption := FormatFloat(lbl3_.Caption, StrToFloat(lbl_3.Caption));
  lbl34.Caption := FormatFloat(lbl4_.Caption, StrToFloat(lbl_3.Caption));
  lbl35.Caption := FormatFloat(lbl5_.Caption, StrToFloat(lbl_3.Caption));
  lbl36.Caption := FormatFloat(lbl6_.Caption, StrToFloat(lbl_3.Caption));
  lbl37.Caption := FormatFloat(lbl7_.Caption, StrToFloat(lbl_3.Caption));



end;

end.
