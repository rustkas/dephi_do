unit DataModule2Unit;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    BookTable: TADOTable;
    BookTableKey1: TAutoIncField;
    BookTableÔàìèëèÿ: TWideStringField;
    BookTableÈìÿ: TWideStringField;
    BookTableÒåëåôîí: TWideStringField;
    BookTableemail: TWideStringField;
    BookTableÃîğîä: TIntegerField;
    BookTableÄàòà: TDateTimeField;
    BookTableÌîáèëüíèê: TBooleanField;
    BookSource: TDataSource;
    TownSource: TDataSource;
    TownTable: TADOTable;
    TownTableKey1: TAutoIncField;
    TownTableÍàçâàíèåãîğîäà: TWideStringField;
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
