unit Unit1_MainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Unit2_ModificationTracking, Unit3_JobScheduling, Unit4_projectInfo, Unit16_Staff;

type
  TForm_MainMenu = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_MainMenu: TForm_MainMenu;

implementation

{$R *.dfm}


procedure TForm_MainMenu.Button1Click(Sender: TObject);
begin
  try
    Form_ModTrack:=TForm_ModTrack.Create(nil);
    with Form_ModTrack do
    begin
       ShowModal;
    end;
  finally
    Form_ModTrack.Free;
  end;
end;

procedure TForm_MainMenu.Button2Click(Sender: TObject);
begin
   try
    Form_JobSchedule:=TForm_JobSchedule.Create(nil);
    with Form_JobSchedule do
    begin
       ShowModal;
    end;
  finally
    Form_JobSchedule.Free;
  end;
end;

procedure TForm_MainMenu.Button3Click(Sender: TObject);
begin
  try
    Form_ProjectInfo:=TForm_ProjectInfo.Create(nil);
    with Form_ProjectInfo do
    begin
       ShowModal;
    end;
  finally
    Form_ProjectInfo.Free;
  end;
end;


procedure TForm_MainMenu.Button4Click(Sender: TObject);
begin
     try
         Form_Staff:=TForm_Staff.Create(nil);
         with Form_Staff do
              begin
                 ShowModal;
              end;
  finally
     Form_Staff.Free;
  end;
end;

procedure TForm_MainMenu.Button5Click(Sender: TObject);
begin
  Application.Terminate;
end;


end.
