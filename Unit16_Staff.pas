unit Unit16_Staff;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DBCtrls, ExtCtrls, Unit_AddStaff;

type
  TForm_Staff = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel2: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Staff: TForm_Staff;

implementation

{$R *.dfm}

procedure TForm_Staff.Button2Click(Sender: TObject);
begin
  try
         Form_AddStaff:=TForm_AddStaff.Create(nil);
         with Form_AddStaff do
              begin
                 ShowModal;
              end;
  finally
     Form_AddStaff.Free;
  end;
end;

end.
