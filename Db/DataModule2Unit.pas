unit DataModule2Unit;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    BookTable: TADOTable;
    BookTableKey1: TAutoIncField;
    BookTable�������: TWideStringField;
    BookTable���: TWideStringField;
    BookTable�������: TWideStringField;
    BookTableemail: TWideStringField;
    BookTable�����: TIntegerField;
    BookTable����: TDateTimeField;
    BookTable���������: TBooleanField;
    BookSource: TDataSource;
    TownSource: TDataSource;
    TownTable: TADOTable;
    TownTableKey1: TAutoIncField;
    TownTable��������������: TWideStringField;
    BookTableTown: TStringField;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
