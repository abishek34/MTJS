unit Unit2_ModificationTracking;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, dblookup, ComCtrls, Grids, DBGrids, DBCtrls,
  OleCtrls, DateEditXControl_TLB, DBTables, fxn, DB;

type
  TForm_ModTrack = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Btn_Save: TButton;
    Button4: TButton;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Memo2: TMemo;
    Label6: TLabel;
    Memo3: TMemo;
    Label7: TLabel;
    Memo_Purpose: TMemo;
    Label8: TLabel;
    Memo_AffectedCaption: TMemo;
    Label9: TLabel;
    DBLCB_NewSource: TDBLookupComboBox;
    DBGrid_ModTrack: TDBGrid;
    Label10: TLabel;
    Label11: TLabel;
    Lable12: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Memo_PreDeclaration: TMemo;
    Label14: TLabel;
    Memo_CurDecleration: TMemo;
    Memo_ListPurpose: TMemo;
    CB_ProjectName: TCheckBox;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Mod_FromDate: TDateEditX;
    Mod_ToDate: TDateEditX;
    Button5: TButton;
    Button6: TButton;
    CB_DateRange: TCheckBox;
    btn_Refresh: TButton;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Query_ProjectName: TQuery;
    DS_ProjectName: TDataSource;
    DS_Modification: TDataSource;
    Qry_Modification: TQuery;
    DBLCB_NewProjName: TDBLookupComboBox;
    Qry_Save: TQuery;
    Memo_UnitName: TMemo;
    Memo_DeclName: TMemo;
    Qry_ModTrack: TQuery;
    DS_ModTrack: TDataSource;
    Mod_NewDate: TDateEditX;
    Label17: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Btn_SaveClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btn_RefreshClick(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure CB_ProjectNameClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBGrid_ModTrackDblClick(Sender: TObject);
    procedure DBGrid_ModTrackCellClick(Column: TColumn);
    procedure CB_DateRangeClick(Sender: TObject);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
     pi_sourcemodid :Integer;
     pb_isnew :Boolean;
    { Public declarations }
  end;

var
  Form_ModTrack: TForm_ModTrack;

implementation

{$R *.dfm}



procedure TForm_ModTrack.Btn_SaveClick(Sender: TObject);
begin

     if (Trim(Memo_Purpose.Text) = '') or (Trim(Memo_AffectedCaption.Text)='') then
          begin
               ShowMessage('Please Fill All Fields And Try Again');
               Exit;
          end;

     if pb_isnew=False then
          begin
               try
                    with Qry_Save do
                    begin
                         Close;
                         DatabaseName:=gs_DatabaseName;
                         SQL.Clear;
                         SQL.Add('Update hs_somo_sourcemodification set SOMO_MODIFICATIONID='+IntToStr(DBLCB_NewSource.KeyValue)+','+'SOMO_PROJECTNAME='+QuotedStr(DBLCB_NewProjName.Text)+','+'SOMO_PROJECTID='+QuotedStr(DBLCB_NewProjName.KeyValue)+','+'SOMO_PURPOSE='+QuotedStr(Memo_Purpose.Text)+','+'SOMO_PREVIOUSDECLERATION='+QuotedStr(Memo_PreDeclaration.Text)+','+'SOMO_CURRENTDECLERATION='+QuotedStr(Memo_CurDecleration.Text));
                         SQL.Add('Where SOMO_SOURCEMODIFICATIONID='+IntToStr(pi_sourcemodid));
                         SQL.SaveToFile('C:\qry_modtrackupdate.txt');
                         ExecSQL;
                    end;
                    ShowMessage('Data Update Successfully');
               except
                    ShowMessage('Data Update Failed');
               end;
          end
     else
     begin
          try
               with Qry_Save do
               begin
                    Close;
                    DatabaseName:=gs_DatabaseName;
                    SQL.Clear;
                    SQL.Add('insert into hs_somo_sourcemodification (SOMO_SOURCEMODIFICATIONID,SOMO_MODIFICATIONID, SOMO_PURPOSE,SOMO_AFFECTEDMODULES,SOMO_PROJECTID,SOMO_PROJECTNAME,SOMO_UNITNAME,SOMO_DECLERATIONNAME,SOMO_PREVIOUSDECLERATION,SOMO_CURRENTDECLERATION,SOMO_DATE) values(');
                    SQL.Add('(select nvl(max(SOMO_SOURCEMODIFICATIONID),0)+1 from hs_somo_sourcemodification)'+','+IntToStr(DBLCB_NewSource.KeyValue)+','+QuotedStr(Memo_Purpose.Text)+','+QuotedStr(Memo_AffectedCaption.Text)+','+IntToStr(DBLCB_NewProjName.KeyValue)+','+QuotedStr(DBLCB_NewProjName.Text)+','+QuotedStr(Memo_UnitName.Text)+','+QuotedStr(Memo_DeclName.Text)+','+QuotedStr(Memo_PreDeclaration.Text)+','+QuotedStr(Memo_CurDecleration.Text)+','+QuotedStr(Mod_NewDate.Text)+' )');
                    SQL.SaveToFile('C:\qry_modtrackins.txt');
                    ExecSQL;
               end;
                    ShowMessage('Data Saved');
          except
               ShowMessage('Data Save Failed');
          end;
     end;
end;

procedure TForm_ModTrack.Button1Click(Sender: TObject);
begin
     if PageControl1.ActivePageIndex=1 then
          PageControl1.ActivePageIndex := 0
     else //PageControl1.ActivePageIndex = 0 then
          Form_ModTrack.Close;
end;

procedure TForm_ModTrack.Button2Click(Sender: TObject);
begin
     pb_isnew:=True;
     Form_ModTrack.PageControl1.ActivePage:=TabSheet2;
end;

procedure TForm_ModTrack.btn_RefreshClick(Sender: TObject);
begin
//     if (CB_ProjectName.Checked=False) AND (CB_DateRange.Checked=False) then
//          begin
//               with Qry_ModTrack do
//               begin
//                    with SQL do
//                    begin
//                         Close;
//                         DatabaseName:=gs_DatabaseName;
//                         Clear;
//                         Add('Select *From hs_somo_sourcemodification');
//                         Add('Where SOMO_DATE BETWEEN '+QuotedStr(Mod_FromDate.Text)+' '+ 'AND'+' '+QuotedStr(Mod_ToDate.Text));
//                         Add('AND somo_projectid='+IntToStr(DBLookupComboBox1.KeyValue));
//                         Open;
//                    end;
//               end;
//          end
//     else
//          begin
//               with Qry_ModTrack do
//               begin
//                    with SQL do
//                    begin
//                         Close;
//                         DatabaseName:=gs_DatabaseName;
//                         Clear;
//                         Add('Select *From hs_somo_sourcemodification ORDER BY SOMO_SOURCEMODIFICATIONID');
//                         Open;
//                    end;
//               end;
//          end;

     with Qry_ModTrack do
     begin
          with SQL do
          begin
               Close;
               DatabaseName:=gs_DatabaseName;
               Clear;
               Add('Select *From hs_somo_sourcemodification');
               Add('where 1=1');
               if CB_DateRange.Checked = False then
                    Add('And SOMO_DATE BETWEEN '+QuotedStr(Mod_FromDate.Text)+' '+ 'AND'+' '+QuotedStr(Mod_ToDate.Text));
               if (not CB_ProjectName.Checked) and (DBLookupComboBox1.KeyValue <> Null) then
                    Add('AND somo_projectid='+IntToStr(DBLookupComboBox1.KeyValue));
               if DBLookupComboBox2.KeyValue <> Null then
                    Add('AND somo_modificationid='+IntToStr(DBLookupComboBox2.KeyValue));

               Open;
          end;
     end;

end;

procedure TForm_ModTrack.CB_ProjectNameClick(Sender: TObject);
begin
     if CB_ProjectName.Checked=True then
          DBLookupComboBox1.Enabled:=False
     else
          DBLookupComboBox1.Enabled:=True;

end;

procedure TForm_ModTrack.CB_DateRangeClick(Sender: TObject);
begin
     if CB_DateRange.Checked=True then
          begin
               Mod_ToDate.Enabled:=False;
               Mod_FromDate.Enabled:=False;
          end
     else
          begin
               Mod_ToDate.Enabled:=True;
               Mod_FromDate.Enabled:=True;
          end;
end;

procedure TForm_ModTrack.DBGrid_ModTrackCellClick(Column: TColumn);
begin
     pi_sourcemodid:=Qry_ModTrack.FieldByName('SOMO_SOURCEMODIFICATIONID').AsInteger;
end;

procedure TForm_ModTrack.DBGrid_ModTrackDblClick(Sender: TObject);
begin
     pb_isnew:=False;
     Form_ModTrack.PageControl1.ActivePage:=TabSheet2;
     with Qry_ModTrack do
     begin
          Close;
          DatabaseName:=gs_DatabaseName;
          SQL.Clear;
          SQL.Add('select *From hs_somo_sourcemodification');
          SQL.Add('where somo_sourcemodificationid='+IntToStr(pi_sourcemodid));
          Open;
     end;

     Memo_Purpose.Text:=Qry_ModTrack.FieldByName('SOMO_PURPOSE').AsString;
     Memo_AffectedCaption.Text:=Qry_ModTrack.FieldByName('SOMO_AFFECTEDMODULES').AsString;
     DBLCB_NewSource.KeyValue:=Qry_ModTrack.FieldByName('SOMO_MODIFICATIONID').AsInteger;
     DBLCB_NewProjName.KeyValue:=Qry_ModTrack.FieldByName('SOMO_PROJECTID').AsInteger;
     Memo_UnitName.Text:=Qry_ModTrack.FieldByName('SOMO_UNITNAME').AsString;
     Memo_DeclName.Text:=Qry_ModTrack.FieldByName('SOMO_DECLERATIONNAME').AsString;
     Memo_PreDeclaration.Text:=Qry_ModTrack.FieldByName('SOMO_PREVIOUSDECLERATION').AsString;
     Memo_CurDecleration.Text:=Qry_ModTrack.FieldByName('SOMO_CURRENTDECLERATION').AsString;
end;

procedure TForm_ModTrack.DBLookupComboBox1Click(Sender: TObject);
begin
//     with Qry_ModTrack do
//     begin
//          with SQL do
//          begin
//               Close;
//               DatabaseName:=gs_DatabaseName;
//               Clear;
//               Add('Select *From hs_somo_sourcemodification');
//               Add('Where somo_projectid='+IntToStr(DBLookupComboBox1.KeyValue));
//               Open;
//          end;
//     end;
     btn_RefreshClick(nil);
end;


procedure TForm_ModTrack.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key=VK_DELETE then
     begin
       DBLookupComboBox1.KeyValue:=Null;
     end;
end;

procedure TForm_ModTrack.DBLookupComboBox2Click(Sender: TObject);
begin
//     with Qry_ModTrack do
//     begin
//          with SQL do
//          begin
//               Close;
//               DatabaseName:=gs_DatabaseName;
//               Clear;
//               Add('Select *From hs_somo_sourcemodification');
//               Add('Where somo_modificationid='+IntToStr(DBLookupComboBox2.KeyValue));
//               Open;
//          end;
//     end;
     btn_RefreshClick(nil);
end;

procedure TForm_ModTrack.DBLookupComboBox2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key=VK_DELETE then
     begin
          DBLookupComboBox2.KeyValue:= Null;
     end;
end;

procedure TForm_ModTrack.FormShow(Sender: TObject);
begin
     pb_isnew:=True;

     with Qry_ModTrack do
     begin
          with SQL do
          begin
               Close;
               DatabaseName:=gs_DatabaseName;
               Clear;
               Add('SELECT * FROM HS_SOMO_SOURCEMODIFICATION ORDER BY SOMO_SOURCEMODIFICATIONID');
               Open;
          end;
     end;

     with Query_ProjectName do
     begin
          Close;
          DatabaseName:=gs_DatabaseName;
          Open;
     end;

     with Qry_Modification do
     begin
          Close;
          DatabaseName:=gs_DatabaseName;
          Open;
     end;
end;

end.
