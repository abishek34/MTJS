unit ServerDate;

interface
Uses
  Windows, Messages, SysUtils, Classes, Graphics,Controls, Forms, Dialogs,unit_dm,
  StdCtrls, Grids, DBGrids,DateEditXControl_TLB, Db,ComObj,ExtCtrls,DBTables;

  Function TodaysDate:String;Stdcall;
  Function TodaysDateVS:String;Stdcall;
  Function TodaysDateAD: String; Stdcall;
  Function TodaysTime:String;Stdcall;
  Function Month:String;
  Function Year:String;
  Function GetNextVal(Sequence:String;CheckNew:Boolean):Integer;
  Function PMonth:String;
  Function GetNext(Sequence:String):Integer;
  Function CheckMonthC:Boolean;
  Function CheckMonthD:Boolean;
  Function SystemDate:TDateTime;
  Procedure CreateQuery;


  var MyServerTimeString:string;
      DEX_TodayDate:TDateEditX;
      QueryTemp:TQuery;

implementation

Uses Fxn;

Procedure CreateQuery;
begin
     QueryTemp:=TQuery.Create(nil);
     QueryTemp.DatabaseName:=gs_DatabaseName;
     DEX_TodayDate:=TDateEditX.Create(nil);
end;

Function TodaysDateAD: String; Stdcall;
var
QueryTemp:TQuery;
begin
     QueryTemp:=TQuery.Create(Nil);
     With QueryTemp Do
     Begin
          Close;
         DatabaseName:= gs_DatabaseName;
          With SQL Do
          Begin
               Clear;
               Add('Select  to_Char(sysdate,' + Chr(39) + 'YYYY/MM/DD' + Chr(39) + ')' + 'as mydate from Dual');
          End;
          Open;
          DEX_TodayDate.ADDateAsText := FieldByName('MyDate').ASString;
          TodaysDateAD := DEX_TodayDate.ADDateAsText;
          Close;
     End;
     QueryTemp.Free;
end;

Function SystemDate:TDateTime;
 Var TDate:TDateTime;
QueryTemp:TQuery;
begin
     QueryTemp:=TQuery.Create(Nil);
    With QueryTemp Do
    Begin
      Close;
      With SQL Do
      Begin
        Clear;
        Add('Select sysdate from Dual');
      End;
      Open;
      TDate:=FieldByName('sysdate').AsDateTime;
      SystemDate:=TDate;
    End;
    QueryTemp.Free;
End;

Function TodaysTime:String;Stdcall;
Begin
     QueryTemp:=TQuery.Create(nil);
     With QueryTemp Do
     Begin
          Close;
          Sql.Clear;
          Sql.Add('Select  to_Char(sysDate,'+#39+'HH24:MI:SS'+#39+')'+'as MyTime from Dual');
          Open;
          MyServerTimeString:=FieldByName('MyTime').ASString;
          TodaysTime:=MyServerTimeString;
     End;
     QueryTemp.Free;
End;

Function CheckMonthC:Boolean;
  var CMonth:String;
Begin
  CheckMonthC:=False;
  CMonth:=Month;
  IF PMonth<>Month Then
  Begin
    CheckMonthC:=True;
    With QueryTemp Do
    Begin
     DatabaseName:=gs_DatabaseName;
      Close;
      With SQL Do
      Begin
        Clear;
        Add('Update month Set CMonth='+Chr(39)+CMonth+Chr(39));
        //SavetoFile('C:\Month.txt');
      End;
      ExecSql;
    End;
  End;
End;

Function CheckMonthD:Boolean;
  var CMonth:String;
Begin
  CheckMonthD:=False;
  {CMonth:=Month;
  IF PMonth<>Month Then
  Begin
    CheckMonthD:=True;
    With QueryTemp Do
    Begin
      Close;
      With SQL Do
      Begin
        Clear;
        Add('Update DM_HOSPITALonth Set DM_HOSPITALonth='+Chr(39)+CMonth+Chr(39));
        //SavetoFile('C:\Month.txt');
      End;
      ExecSql;
    End;
  End;}
End;

Function PMonth:String;
Begin
  With QueryTemp Do
  Begin
    Close;
    sql.Clear;
    sql.Add('Select DM_HOSPITALonth As PMonth from DM_HOSPITALonth ');
    Open;
    PMonth:=FieldByName('PMonth').ASString;
  End;
End;

Function Month:String;
Begin
   With QueryTemp Do
   Begin
      Close;
      Sql.Clear;
      Sql.Add('Select  to_Char(sysdate,'+Chr(39)+'MON'+Chr(39)+')'+'as Month from Dual');
      Open;
      Month:=FieldByName('Month').ASString;
   End;
End;


Function Year:String;
Begin
   With QueryTemp Do
   Begin
      Close;
      Sql.Clear;
      Sql.Add('Select  to_Char(sysdate,'+Chr(39)+'YY'+Chr(39)+')'+'As Year from Dual');
      Open;
      Year:=FieldByName('Year').ASString;
   End;
End;


{{Function TodaysDate:String;
Var MyServerDateString,NewDate:String;
   Var TNewDate:DateEditX;
      //MyServerDate:TDate;
      //MyPos:Integer;
   Begin
  {Try
    QueryTemp:=TQuery.Create(QueryTemp);
    QueryTemp.DatabaseName:=DM_HOSPITAL.Hospital.DatabaseName;}
{{    With QueryTemp Do
    Begin
      Close;
      With SQL Do
      Begin
        Clear;
        Add('Select  to_Char(sysdate,'+Chr(39)+'mm/dd/yyyy'+Chr(39)+')'+'as mydate from Dual');
        //Add('Select  to_Char(sysdate,'+Chr(39)+'YYYY/MM/DD'+Chr(39)+')'+'as mydate from Dual');
      End;
      Open;
      MyServerDateString:=FieldByName('MyDate').ASString;
      //TodaysDate:=VSTOADS(ADToVS(StrTodate(MyServerDateString)));
      //TodaysDate:=ADToVS(StrTodate(MyServerDateString));
      TodaysDate:=MyServerDateString;
      Close;
    End;
  {Finally
    QueryTemp.Free;
  End;}
{End;}

Function TodaysDate:String;Stdcall;
Var Qry_Date : TQuery;
Begin
     Qry_Date := TQuery.Create(nil);
     With Qry_Date Do
     Begin
          Close;
          //Session:=Dm_Hospital.Db;
          With SQL Do
          Begin
                Clear;
                Add('Select  to_Char(sysdate,'+Chr(39)+'YYYY/MM/DD'+Chr(39)+')'+'as mydate from Dual');
          End;
          Open;
          DEX_TodayDate.SystemOfDate :=1;
          DEX_TodayDate.text:=FieldByName('MyDate').ASString;
          DEX_TodayDate.SystemOfDate :=gi_datesystem;
          TodaysDate:=DEX_TodayDate.text ;
     End;
     Qry_Date.Close;
     Qry_Date.Free;
End;
Function TodaysDateVS:String;Stdcall;
Var Qry_Date : TQuery;
begin
     Qry_Date := TQuery.Create(nil);
     With Qry_Date Do
     Begin
          Close;
           DatabaseName:= gs_DatabaseName;
          With SQL Do
          Begin
                Clear;
                Add('Select  to_Char(sysdate,'+Chr(39)+'YYYY/MM/DD'+Chr(39)+')'+'as mydate from Dual');
          End;
          Open;
          DEX_TodayDate.ADDateAsText:=FieldByName('MyDate').ASString;
          TodaysDateVS:=DEX_TodayDate.VSDateAsText;
     End;
     Qry_Date.Close;
     Qry_Date.Free;
end;

Function GetNextVal(Sequence:String;CheckNew:Boolean):Integer;
Begin
  {Try
    QueryTemp:=TOraQuery.Create(QueryTemp);
    QueryTemp.DatabaseName:=DM_HOSPITAL.Hospital.DatabaseName;}
    With QueryTemp Do
    Begin
      Close;
      IF CheckNew=False Then
      Begin
        Try
          With SQL Do
           Begin
            Clear;
            ADD('SELECT '+Sequence+'.Nextval As NextVal From Dual');
            //SavetoFile('C:\nextval.txt');
            Open;
            GetNextVal:=FieldByName('NextVal').AsInteger;
          //Close;
          End;
        Except
          Close;
          Try
            With SQL Do
            Begin
              Clear;
              Add('Create sequence '+Sequence+' start with 1 Increment By 1');
              //SavetoFile('C:\nextval.txt');
              ExecSQL;
              Clear;
              ADD('SELECT '+Sequence+'.Nextval As NextVal From Dual');
              //Open;
              //Close;
            End;
            Open;
            GetNextVal:=FieldByName('NextVal').AsInteger;
          Except
          End;
        End;
      End
      Else
      Begin
        With SQl Do
        Begin
          Clear;
          Add('Drop sequence '+Sequence);
          ExecSQL;
          Clear;
          Add('Create sequence '+Sequence+' start with 1 Increment By 1');
          ExecSQL;
          Clear;
          ADD('SELECT '+Sequence+'.Nextval As NextVal From Dual');
        End;
        Open;
        GetNextVal:=FieldByName('NextVal').AsInteger;
      End;
    End;
End;

Function GetNext(Sequence:String):Integer;
Var li_return:LongInt;
Begin
  With QueryTemp Do
    Begin
      Close;
    With SQL Do
          Begin
            Clear;
            //ADD('SELECT '+Sequence+'.Nextval As NextVal From Dual');
             ADD('SELECT inpatientid.Nextval As NextVal From Dual');
            //SavetoFile('C:\nextval.txt');
            Open;
            li_return:=FieldByName('NextVal').AsInteger;
            //GetNextVal:=FieldByName('NextVal').AsInteger;
          Close;
          End;
    End;
Result:=li_return;
End;


Exports

     TodaysDate,TodaysDateVS,TodaysTime;



end.
