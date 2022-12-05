unit Unit_ModificationDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, jpeg;

type
  TForm_ModificationDetail = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRlbl_generatedon: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand2: TQRBand;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_ModificationDetail: TForm_ModificationDetail;

implementation

{$R *.dfm}

end.
