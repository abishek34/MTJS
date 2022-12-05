unit Unit_ModificationReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, QuickRpt, QRCtrls, DB, DBTables, ExtCtrls, fxn, ServerDate,
  Unit_dm;

type
  TForm_ModificationReport = class(TForm)
    QrRep_ModificationReport: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRSubDetail1: TQRSubDetail;
    Query1: TQuery;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRImage2: TQRImage;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRlbl_generatedon: TQRLabel;
    QuickRep1: TQuickRep;
    QRBand4: TQRBand;
    QRImage3: TQRImage;
    QRlbl_generatedon1: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand5: TQRBand;
    Query2: TQuery;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_ModificationReport: TForm_ModificationReport;

implementation

{$R *.dfm}

procedure TForm_ModificationReport.FormCreate(Sender: TObject);
begin
     QRlbl_generatedon.Caption:=TodaysDateVS;
     QRlbl_generatedon1.Caption:=TodaysDateVS;
     with Query1 do
     begin
          Close;
          DatabaseName:=gs_DatabaseName;
          with SQL do
          begin
               Clear;
               Add('select rownum as sno, a.* From (select count(*) count, somo_projectname from HS_SOMO_SOURCEMODIFICATION group by somo_projectname)a');
               Open;
          end;
     end;
//     with Query1 do
//     begin
//          Close;
//          DatabaseName:=gs_DatabaseName;
//          with SQL do
//          begin
//               Clear;
//               Add('SELECT rownum as sno, A.* FROM (SELECT somo_projectname, somo_purpose, somo_affectedmodules, somo_date  from HS_SOMO_SOURCEMODIFICATION order by somo_date)A');
//               Open;
//          end;
//     end;

     with Query2 do
     begin
          Close;
          DatabaseName:=gs_DatabaseName;
          with SQL do
          begin
               Clear;
               Add('SELECT rownum as sno, A.* FROM (SELECT somo_projectname, somo_purpose, somo_affectedmodules, somo_date  from HS_SOMO_SOURCEMODIFICATION order by somo_date)A');
               Open;
          end;
     end;
end;

end.
