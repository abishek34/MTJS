unit Unit_Message;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TFrm_Message = class(TForm)
    Label1: TLabel;
    Timer1: TTimer;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FullRgn, ClientRgn, CtlRgn: THandle;
    procedure MakeTransparent;
    procedure Animate;
  end;

var
  Frm_Message: TFrm_Message;

implementation

{$R *.dfm}

procedure TFrm_Message.Animate;
Var
  ani: Integer;
begin
  Frm_Message.Width := 372;
  ani := 372;
  repeat
    ani := ani + 1;
    Frm_Message.Width := ani;
  until ani >= 656;
end;

procedure TFrm_Message.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Timer1.Enabled:=False;
end;

procedure TFrm_Message.FormCreate(Sender: TObject);
begin
     MakeTransparent;
end;

procedure TFrm_Message.FormShow(Sender: TObject);
begin
      //Animate;
     Timer1.Enabled:=TRUE;
end;

procedure TFrm_Message.MakeTransparent;
var
  AControl: TControl;
  A, Margin, X, Y, CtlX, CtlY: Integer;
begin
  Margin    := (Width - ClientWidth) div 2;
  FullRgn   := CreateRectRgn(0, 0, Width, Height);
  X         := Margin;
  Y         := Height - ClientHeight - Margin;
  ClientRgn := CreateRectRgn(X, Y, X + ClientWidth, Y + ClientHeight);
  CombineRgn(FullRgn, FullRgn, ClientRgn, RGN_DIFF);
  for A := 0 to ControlCount - 1 do
  begin
    AControl := Controls[A];
    if (AControl is TWinControl) or (AControl is TGraphicControl) then with AControl do
      begin
        if Visible then
        begin
          CtlX   := X + Left;
          CtlY   := Y + Top;
          CtlRgn := CreateRectRgn(CtlX, CtlY, CtlX + Width, CtlY + Height);
          CombineRgn(FullRgn, FullRgn, CtlRgn, RGN_OR);
        end;
      end;
  end;
  SetWindowRgn(Handle, FullRgn, True);
end;

procedure TFrm_Message.Timer1Timer(Sender: TObject);
begin
     Close;
end;

Initialization
     RegisterClass(TFrm_Message);
Finalization
     UnRegisterClass(TFrm_Message);

end.
