unit fxn;

interface

 uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dblookup, ComCtrls, ExtCtrls, Grids, DBGrids, OleCtrls,
  DateEditXControl_TLB, DBCtrls, DB, DBTables, Unit_dm, ServerDate;


var
gs_AliasName,gs_DatabaseName,gs_dbName,gs_dbPassword,gs_UserName,gs_temppath,gs_picpath:string;
gi_datesystem:Integer;

procedure startup;
Procedure GetTempPath;

implementation


var
gs_dbaname: string;


procedure Startup;
begin
      gs_AliasName := 'hospital';
      gs_DatabaseName:='mtjs';
      gs_dbName := 'mtjs_user';
      gs_dbPassword := 'pwd_mtjs';
      gs_UserName := 'mtjs';
      gi_datesystem := 0;
     DM_MTJS := TDM_MTJS.Create(nil);
     with DM_MTJS.db_mtjs do
     begin
          DatabaseName := gs_DatabaseName;
          AliasName := gs_AliasName;
          Params.Clear;
          Params.Add('DATABASE NAME=');
          Params.Add('USER NAME=' + gs_dbName);
          Params.Add('ODBC DSN=' + gs_AliasName);
          Params.Add('OPEN MODE=READ/WRITE');
          Params.Add('SCHEMA CACHE SIZE=8');
          Params.Add('SQLQRYMODE=');
          Params.Add('LANGDRIVER=');
          Params.Add('SQLPASSTHRU MODE=SHARED AUTOCOMMIT');
          Params.Add('SCHEMA CACHE TIME=-1');
          Params.Add('MAX ROWS=-1');
          Params.Add('BATCH COUNT=200');
          Params.Add('ENABLE SCHEMA CACHE=FALSE');
          Params.Add('SCHEMA CACHE DIR=');
          Params.Add('ENABLE BCD=FALSE');
          Params.Add('ROWSET SIZE=20');
          Params.Add('BLOBS TO CACHE=64');
          Params.Add('PASSWORD=' + gs_dbPassword);
          if not Connected then
               Connected := True;
     end;

     CreateQuery;
     GetTempPath;
end;

Procedure GetTempPath;
Begin
     if not DirectoryExists
       (ExtractFilePath(Application.ExeName)
            + gs_UserName + 'Temp') then
          CreateDir(ExtractFilePath(Application.ExeName)
                 + gs_UserName + 'Temp');

     gs_temppath := ExtractFilePath(Application.ExeName)
       + gs_UserName + 'Temp';
     try
          gs_picpath := 'c:\sisdata';
          if not DirectoryExists(gs_picpath) then
               CreateDir(gs_picpath);
          // WideShareDirectory(gs_picpath, 'SisData', '', false);
     except
     end;
End;

end.
