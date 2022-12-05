unit Unit3_JobScheduling;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dblookup, ComCtrls, ExtCtrls, Grids, DBGrids, OleCtrls,
  DateEditXControl_TLB, DBCtrls, DB, DBTables, fxn, CheckLst;

type
  TForm_JobSchedule = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button6: TButton;
    Button7: TButton;
    Button5: TButton;
    Label13: TLabel;
    Label14: TLabel;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGri_JobSchedule: TDBGrid;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    CB_Job_ProjectName: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CB_Job_Priority: TCheckBox;
    CheckBox5: TCheckBox;
    GroupBox2: TGroupBox;
    DBLookupCombo6: TDBLookupCombo;
    CheckBox6: TCheckBox;
    Label15: TLabel;
    DateEditX1: TDateEditX;
    Button8: TButton;
    Label16: TLabel;
    DateEditX2: TDateEditX;
    Button9: TButton;
    Query_Job_ProjectName: TQuery;
    DS_Job_ProjectName: TDataSource;
    DBLCB_Job_ProjectName: TDBLookupComboBox;
    DBLCB_Job_Priority: TDBLookupComboBox;
    Qry_Job_priority: TQuery;
    DS_Job_Priority: TDataSource;
    DBLookupComboBox3: TDBLookupComboBox;
    Qry_Job_Status: TQuery;
    DS_Job_Status: TDataSource;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    Qry_Job_ScheduleBy: TQuery;
    DS_Job_ScheduledBy: TDataSource;
    DS_Job_ScheduledFor: TDataSource;
    Qry_Job_ScheduledFor: TQuery;
    Qry_DBGrid_JobSchedule: TQuery;
    DS_DBGrid_JobSchedule: TDataSource;
    Table_DBGrid_JobSchedule: TTable;
    Query1: TQuery;
    CLB_ProjectName: TCheckListBox;
    Label17: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBLCB_Job_PriorityClick(Sender: TObject);
    procedure CB_Job_PriorityClick(Sender: TObject);
    procedure DBLCB_Job_ProjectNameClick(Sender: TObject);
    procedure CB_Job_ProjectNameClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure DBLCB_Job_PriorityKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLCB_Job_ProjectNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure createtable;
    procedure inserttable;

    var
    Arr_CLB_ProjectName : Array of Array of string;
    ls_projectnameids: string;
  end;

var
  Form_JobSchedule: TForm_JobSchedule;

implementation

{$R *.dfm}

procedure TForm_JobSchedule.createtable;
begin
     if FileExists(gs_temppath + '\jobscheduling.db') then
     begin
          with Table_DBGrid_JobSchedule do
          begin
               Close;
               DatabaseName := gs_temppath;
               TableName := 'jobscheduling.db';
               DeleteTable;
          end;
     end;
     with Table_DBGrid_JobSchedule do
     begin
          Close;
          DatabaseName := gs_temppath;
          TableName := 'jobscheduling.db';
          TableType := ttDefault;
          FieldDefs.Clear;
          FieldDefs.Add('ProjectID', ftInteger);
          FieldDefs.Add('ProjectName', ftString, 255);
          FieldDefs.Add('SCHEDULEDDATE', ftString, 255);
          FieldDefs.Add('Priority', ftString, 255);
          CreateTable;
     end;
end;

procedure TForm_JobSchedule.inserttable;
begin

     with Table_DBGrid_JobSchedule do
     begin
          Close;
          DatabaseName := gs_temppath;
          EmptyTable;
          Open;
     end;
     with Qry_DBGrid_JobSchedule do
     begin
          with SQL do
          begin
               Close;
               DatabaseName:=gs_DatabaseName;
               Clear;
               Add('Select *From JOBSCHEDULEMASTER');
               Add('Where 1=1');
               if not DBLCB_Job_ProjectName.KeyValue <> Null then
                    SQL.Add('And projectid='+IntToStr(DBLCB_Job_ProjectName.KeyValue));
               if not DBLCB_Job_Priority.KeyValue <> Null then
                     SQL.Add('And PRIORITYID='+IntToStr(DBLCB_Job_Priority.KeyValue));
               if ls_projectnameids ='' then
                    Add('And 1=1')
               else
                    Add('And projectid in ('+ls_projectnameids+')');
               Open;
          end;
          while not Eof do
          begin
               with Table_DBGrid_JobSchedule do
               begin
                    Append;
                    FieldByName('ProjectID').AsInteger:=Qry_DBGrid_JobSchedule.FieldByName('ProjectID').AsInteger;
                    FieldByName('ProjectName').AsString:=Qry_DBGrid_JobSchedule.FieldByName('ProjectName').AsString;
                    FieldByName('SCHEDULEDDATE').AsString:=Qry_DBGrid_JobSchedule.FieldByName('SCHEDULEDDATE').AsString;
                    FieldByName('Priority').AsString:=Qry_DBGrid_JobSchedule.FieldByName('PRIORITY').AsString;
                    Post;
               end;
               Qry_DBGrid_JobSchedule.Next;
          end;
     end;
end;

procedure TForm_JobSchedule.Button1Click(Sender: TObject);
begin
  Form_JobSchedule.Close;
end;

procedure TForm_JobSchedule.Button2Click(Sender: TObject);
begin
     Form_JobSchedule.PageControl1.ActivePage:=TabSheet2;
end;

procedure TForm_JobSchedule.Button6Click(Sender: TObject);
var I:Integer;
begin

     ls_projectnameids:='';
     for I := 0 to CLB_ProjectName.Count - 1 do
     begin
          if CLB_ProjectName.Checked[i] then
          begin
               if ls_projectnameids='' then
                   ls_projectnameids:= Arr_CLB_ProjectName[I, 0]
               else
                    ls_projectnameids:= ls_projectnameids+','+Arr_CLB_ProjectName[I, 0] ;
          end;
     end;
//
//     with Qry_DBGrid_JobSchedule do
//     begin
////          with SQL do
////          begin
////               Close;
////               DatabaseName:=gs_DatabaseName;
////               Clear;
////               Add('Select *From JOBSCHEDULEMASTER');
////               if not Arr_CLB_ProjectName <> Null then
////               SQL.Add('where projectid in'+Arr_CLB_ProjectName[I, 0]);
////               Open;
////          end;
//          with SQL do
//          begin
//               Close;
//               DatabaseName:=gs_DatabaseName;
//               Clear;
//               Add('Select *From JOBSCHEDULEMASTER');
////               if not DBLCB_Job_ProjectName.KeyValue <> Null then
////               SQL.Add('where projectid='+IntToStr(DBLCB_Job_ProjectName.KeyValue));
//               Add('Where 1=1');
//               if ls_projectnameids ='' then
//                    Add('And 1=1')
//               else
//                    Add('And projectid in ('+ls_projectnameids+')');
//               Open;
//          end;
//     end;

     inserttable;
end;

procedure TForm_JobSchedule.CB_Job_PriorityClick(Sender: TObject);
begin
     if CB_Job_Priority.Checked=True then
          DBLCB_Job_Priority.Enabled:=False
     else
          DBLCB_Job_Priority.Enabled:=True;

end;

procedure TForm_JobSchedule.CB_Job_ProjectNameClick(Sender: TObject);
begin
     if CB_Job_ProjectName.Checked=True then
          DBLCB_Job_ProjectName.Enabled:=False
     else
          DBLCB_Job_ProjectName.Enabled:=True;
end;

procedure TForm_JobSchedule.DBLCB_Job_PriorityClick(Sender: TObject);
begin
//     with Qry_DBGrid_JobSchedule do
//     begin
//          with SQL do
//          begin
//               Close;
//               DatabaseName:=gs_DatabaseName;
//               Clear;
//               Add('Select *From JOBSCHEDULEMASTER');
//               Add('Where PRIORITYID='+IntToStr(DBLCB_Job_Priority.KeyValue));
//               Open;
//          end;
//     end;

     inserttable;
end;


procedure TForm_JobSchedule.DBLCB_Job_PriorityKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key=VK_DELETE then
     begin
          DBLCB_Job_Priority.KeyValue:=Null;
     end;
end;

procedure TForm_JobSchedule.DBLCB_Job_ProjectNameClick(Sender: TObject);
begin
//     with Qry_DBGrid_JobSchedule do
//     begin
//          with SQL do
//          begin
//               Close;
//               DatabaseName:=gs_DatabaseName;
//               Clear;
//               Add('Select *From JOBSCHEDULEMASTER');
//               Add('Where PROJECTID='+IntToStr(DBLCB_Job_ProjectName.KeyValue));
//               Open;
//          end;
//     end;
//     with Qry_DBGrid_JobSchedule do
//     begin
//          Close;
//          DatabaseName := gs_temppath;
//          sql.Clear;
//          SQL.Add('Select *From jobscheduling.db where projectid='+IntToStr(DBLCB_Job_ProjectName.KeyValue));
//          Open;
//     end;
//       Button6Click(nil);
inserttable;
end;

procedure TForm_JobSchedule.DBLCB_Job_ProjectNameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key=VK_DELETE then
     begin
          DBLCB_Job_ProjectName.KeyValue:=Null;
     end;
end;

procedure TForm_JobSchedule.FormCreate(Sender: TObject);
begin
//  Query_Job_ProjectName.Close;
//  Query_Job_ProjectName.Open;
     createtable;
     inserttable;
end;

procedure TForm_JobSchedule.FormShow(Sender: TObject);
var i:Integer;
begin
     with Query_Job_ProjectName do
     begin
          Close;
          DatabaseName:=gs_DatabaseName;
          Open;

          CLB_ProjectName.Items.Clear;
          I := 0;
          SetLength(Arr_CLB_ProjectName, RecordCount);
          while not Eof do
          begin
               SetLength(Arr_CLB_ProjectName[I], 2);
               Arr_CLB_ProjectName[I, 0] := FieldByName('Id').AsString;
               Arr_CLB_ProjectName[I, 1] := FieldByName('ProjectName').AsString;
               CLB_ProjectName.Items.Add(FieldByName('ProjectName').AsString);
               Inc(I);
               Next;
          end;

     end;

  with Qry_Job_priority do
  begin
    Close;
    DatabaseName:=gs_DatabaseName;
    Open;
  end;

  with Qry_Job_Status do
  begin
    Close;
    DatabaseName:=gs_DatabaseName;
    Open;
  end;

  with Qry_Job_ScheduleBy do
  begin
    Close;
    DatabaseName:=gs_DatabaseName;
    Open;
  end;

  with Qry_Job_ScheduledFor do
  begin
    Close;
    DatabaseName:=gs_DatabaseName;
    Open;
  end;

  Button6Click(nil);
end;

end.
