unit Unit4_projectInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompListbox, IWDBStdCtrls, ExtCtrls, OleCtrls,
  DateEditXControl_TLB, DBCtrls, DB, DBTables, fxn;

type
  TForm_ProjectInfo = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label3: TLabel;
    DateEditX1: TDateEditX;
    Button4: TButton;
    DateEditX2: TDateEditX;
    Button5: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Qry_Projectinfo_ProjectName: TQuery;
    DS_ProjectInfo_ProjectName: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_ProjectInfo: TForm_ProjectInfo;

implementation

uses Unit_ModificationReport;

{$R *.dfm}

procedure TForm_ProjectInfo.Button1Click(Sender: TObject);
begin
  Form_ProjectInfo.Close;
end;

procedure TForm_ProjectInfo.Button3Click(Sender: TObject);
begin

     begin
     try
          Form_ModificationReport:=TForm_ModificationReport.Create(nil);
          with Form_ModificationReport do
          begin
               if RadioButton1.Checked then
                    begin
                         QrRep_ModificationReport.Prepare;
                         QrRep_ModificationReport.Preview;
                    end
               else

               begin
                    QuickRep1.Prepare;
                    QuickRep1.Preview;
               end;
          end;
     finally
          Form_ModificationReport.Free;
     end;
end;

end;

procedure TForm_ProjectInfo.FormShow(Sender: TObject);
begin
  with Qry_Projectinfo_ProjectName do
  begin
    Close;
    DatabaseName:=gs_DatabaseName;
    Open
  end;
end;

end.
