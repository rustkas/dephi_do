unit ConnectUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Win.ADODB, Data.DB, Vcl.DBGrids,
  Vcl.Grids;

type
  TConnectForm = class(TForm)
    ADOConnection1: TADOConnection;
    BookTable: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConnectForm: TConnectForm;

implementation

{$R *.dfm}

end.
