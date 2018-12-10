unit ButtonUnit;

interface

// E:\Program Files (x86)\Embarcadero\Studio\19.0\Images\Buttons
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TButtonsForm = class(TForm)
    Panel1: TPanel;
    ExitButton: TSpeedButton;
    BulboffButton: TSpeedButton;
    BulbonButton: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    StartBnt: TBitBtn;
    Panel2: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    procedure ExitButtonClick(Sender: TObject);
    procedure StartBntClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ButtonsForm: TButtonsForm;

implementation

{$R *.dfm}

uses SelectAnyButtonUnit;

procedure OpenForm(form: TForm);
begin

  form.Left := (Screen.WorkAreaWidth - form.Width) div 2;
  form.Top := (Screen.WorkAreaHeight - form.Height) div 2;
  form.ShowModal;
  form.Free;
end;

procedure TButtonsForm.ExitButtonClick(Sender: TObject);
begin
  Close();
end;

procedure TButtonsForm.StartBntClick(Sender: TObject);
begin
  SelectAnyButtonForm := TSelectAnyButtonForm.Create(Owner);
  OpenForm(SelectAnyButtonForm);

  if SelectAnyButtonForm.ModalResult = mrOk then
    Application.MessageBox('Вы нажали кнопку OK', 'Вы нажали');
  if SelectAnyButtonForm.ModalResult = mrCancel then
    Application.MessageBox('Вы нажали кнопку Cancel', 'Вы нажали');
  if SelectAnyButtonForm.ModalResult = mrAbort then
    Application.MessageBox('Вы нажали кнопку Abort', 'Вы нажали');

end;

end.
