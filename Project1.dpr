program Project1;



uses
  Forms,
  Unit1_MainMenu in 'Unit1_MainMenu.pas' {Form_MainMenu},
  Unit2_ModificationTracking in 'Unit2_ModificationTracking.pas' {Form_ModTrack},
  Unit3_JobScheduling in 'Unit3_JobScheduling.pas' {Form_JobSchedule},
  Unit4_projectInfo in 'Unit4_projectInfo.pas' {Form_ProjectInfo},
  Unit0_Database in 'Unit0_Database.pas' {Form5},
  Unit_dm in 'Unit_dm.pas' {DM_MTJS: TDataModule},
  fxn in 'fxn.pas',
  Unit16_Staff in 'Unit16_Staff.pas' {Form_Staff},
  Unit_AddStaff in 'Unit_AddStaff.pas' {Form_AddStaff},
  ServerDate in 'ServerDate.pas',
  Unit_Message in 'Unit_Message.pas' {Frm_Message},
  Unit_ModificationReport in 'Unit_ModificationReport.pas' {Form_ModificationReport};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Startup;
  Application.CreateForm(TForm_MainMenu, Form_MainMenu);
  Application.CreateForm(TForm_Staff, Form_Staff);
  Application.CreateForm(TForm_AddStaff, Form_AddStaff);
  Application.CreateForm(TFrm_Message, Frm_Message);
  Application.CreateForm(TForm_ModificationReport, Form_ModificationReport);
  //  Application.CreateForm(TForm2, Form2);
//  Application.CreateForm(TForm3, Form3);
//  Application.CreateForm(TForm4, Form4);
//  Application.CreateForm(TForm5, Form5);
//  Application.CreateForm(TDM_MTJS, DM_MTJS);
  Application.Run;
end.
