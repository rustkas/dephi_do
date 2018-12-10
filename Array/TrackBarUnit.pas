unit TrackBarUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TTrackBarForm = class(TForm)
    TrackBar3: TTrackBar;
    Bevel1: TBevel;
    TrackBar1: TTrackBar;
    Label10: TLabel;
    Label1: TLabel;
    Bevel2: TBevel;
    TrackBar2: TTrackBar;
    Label20: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure TrackBar3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TrackBarForm: TTrackBarForm;

implementation

{$R *.dfm}

procedure TTrackBarForm.TrackBar1Change(Sender: TObject);
begin
  Label1.Caption := IntToStr(TrackBar1.Position);
end;

procedure TTrackBarForm.TrackBar2Change(Sender: TObject);
begin
  Label2.Caption := IntToStr(TrackBar2.Position);
end;

procedure TTrackBarForm.TrackBar3Change(Sender: TObject);
begin
  Label3.Caption := IntToStr(TrackBar3.Position);
end;

end.
