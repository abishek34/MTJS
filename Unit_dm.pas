unit Unit_dm;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDM_MTJS = class(TDataModule)
    db_mtjs: TDatabase;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_MTJS: TDM_MTJS;

implementation

{$R *.dfm}

end.
