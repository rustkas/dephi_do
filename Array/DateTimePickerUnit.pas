unit DateTimePickerUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls;

type
  TDateTimePickerForm = class(TForm)
    DateTimePicker1: TDateTimePicker;
    MonthCalendar1: TMonthCalendar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DateTimePickerForm: TDateTimePickerForm;

implementation

{$R *.dfm}

end.
