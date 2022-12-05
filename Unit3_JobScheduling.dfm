object Form_JobSchedule: TForm_JobSchedule
  Left = 0
  Top = 0
  Caption = 'Job Scheduling'
  ClientHeight = 648
  ClientWidth = 1017
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 33
    Width = 1017
    Height = 615
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'List'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      object Label1: TLabel
        Left = 3
        Top = 16
        Width = 82
        Height = 16
        Caption = 'Project Name:'
      end
      object Label2: TLabel
        Left = 318
        Top = 15
        Width = 45
        Height = 16
        Caption = 'Priority:'
      end
      object Label3: TLabel
        Left = 525
        Top = 16
        Width = 41
        Height = 16
        Caption = 'Status:'
      end
      object Label4: TLabel
        Left = 3
        Top = 49
        Width = 74
        Height = 16
        Caption = 'Schedule By:'
      end
      object Label5: TLabel
        Left = 257
        Top = 51
        Width = 80
        Height = 16
        Caption = 'Schedule For:'
      end
      object Label13: TLabel
        Left = 670
        Top = 177
        Width = 68
        Height = 16
        Caption = 'Description:'
      end
      object Label14: TLabel
        Left = 670
        Top = 305
        Width = 49
        Height = 16
        Caption = 'Remark:'
      end
      object Label17: TLabel
        Left = 670
        Top = 433
        Width = 49
        Height = 16
        Caption = 'Remark:'
      end
      object Button6: TButton
        Left = 545
        Top = 46
        Width = 75
        Height = 25
        Caption = 'Refresh'
        TabOrder = 0
        OnClick = Button6Click
      end
      object Button7: TButton
        Left = 625
        Top = 46
        Width = 75
        Height = 25
        Caption = 'To Excel'
        TabOrder = 1
      end
      object Button5: TButton
        Left = 467
        Top = 46
        Width = 75
        Height = 25
        Caption = 'Progress'
        TabOrder = 2
      end
      object DBGri_JobSchedule: TDBGrid
        Left = 3
        Top = 177
        Width = 657
        Height = 400
        DataSource = DS_DBGrid_JobSchedule
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PROJECTNAME'
            Title.Caption = 'PROJECT NAME'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 264
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SCHEDULEDDATE'
            Title.Caption = 'SCHEDULE DATE'
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRIORITY'
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'STATUS'
            Width = 173
            Visible = True
          end>
      end
      object GroupBox1: TGroupBox
        Left = -5
        Top = 75
        Width = 1000
        Height = 88
        Caption = 'Information'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        object Label6: TLabel
          Left = 27
          Top = 25
          Width = 45
          Height = 16
          Caption = 'Priority:'
        end
        object Label7: TLabel
          Left = 27
          Top = 57
          Width = 41
          Height = 16
          Caption = 'Status:'
        end
        object Label8: TLabel
          Left = 190
          Top = 25
          Width = 74
          Height = 16
          Caption = 'Schedule By:'
        end
        object Label9: TLabel
          Left = 190
          Top = 57
          Width = 80
          Height = 16
          Caption = 'Schedule For:'
        end
        object Label10: TLabel
          Left = 414
          Top = 25
          Width = 97
          Height = 16
          Caption = 'Project Duration:'
        end
        object Label11: TLabel
          Left = 414
          Top = 57
          Width = 107
          Height = 16
          Caption = 'Schedule Dateline:'
        end
        object Label12: TLabel
          Left = 663
          Top = 57
          Width = 51
          Height = 16
          Caption = 'Dateline:'
        end
      end
      object Memo1: TMemo
        Left = 670
        Top = 208
        Width = 207
        Height = 89
        Lines.Strings = (
          '')
        TabOrder = 5
      end
      object Memo2: TMemo
        Left = 670
        Top = 339
        Width = 207
        Height = 89
        TabOrder = 6
      end
      object CB_Job_ProjectName: TCheckBox
        Left = 297
        Top = 17
        Width = 17
        Height = 17
        TabOrder = 7
        OnClick = CB_Job_ProjectNameClick
      end
      object CheckBox2: TCheckBox
        Left = 233
        Top = 48
        Width = 17
        Height = 17
        TabOrder = 8
      end
      object CheckBox3: TCheckBox
        Left = 444
        Top = 48
        Width = 17
        Height = 17
        TabOrder = 9
      end
      object CB_Job_Priority: TCheckBox
        Left = 500
        Top = 17
        Width = 17
        Height = 17
        TabOrder = 10
      end
      object CheckBox5: TCheckBox
        Left = 703
        Top = 17
        Width = 17
        Height = 17
        TabOrder = 11
      end
      object GroupBox2: TGroupBox
        Left = 728
        Top = 3
        Width = 278
        Height = 76
        Caption = 'Date Range'
        TabOrder = 12
        object Label15: TLabel
          Left = 6
          Top = 50
          Width = 35
          Height = 16
          Caption = 'From:'
        end
        object Label16: TLabel
          Left = 153
          Top = 50
          Width = 20
          Height = 16
          Caption = 'To:'
        end
        object DBLookupCombo6: TDBLookupCombo
          Left = 6
          Top = 16
          Width = 130
          Height = 25
          TabOrder = 0
        end
        object CheckBox6: TCheckBox
          Left = 142
          Top = 20
          Width = 17
          Height = 17
          TabOrder = 1
        end
        object DateEditX1: TDateEditX
          Left = 46
          Top = 47
          Width = 65
          Height = 24
          TabOrder = 2
          ControlData = {
            545046300A5444617465456469745200044C656674022E03546F70022F064865
            6967687402180B4461746541442E5965617203E6070C4461746541442E4D6F6E
            7468020B0A4461746541442E44617902110B4461746556532E59656172031F08
            0C4461746556532E4D6F6E746802080A4461746556532E44617902010000}
        end
        object Button8: TButton
          Left = 115
          Top = 47
          Width = 28
          Height = 25
          Caption = 'AD'
          TabOrder = 3
        end
        object DateEditX2: TDateEditX
          Left = 177
          Top = 47
          Width = 65
          Height = 24
          TabOrder = 4
          ControlData = {
            545046300A5444617465456469745200044C65667403B10003546F70022F0648
            656967687402180B4461746541442E5965617203E6070C4461746541442E4D6F
            6E7468020B0A4461746541442E44617902110B4461746556532E59656172031F
            080C4461746556532E4D6F6E746802080A4461746556532E44617902010000}
        end
        object Button9: TButton
          Left = 246
          Top = 46
          Width = 28
          Height = 25
          Caption = 'AD'
          TabOrder = 5
        end
      end
      object DBLCB_Job_ProjectName: TDBLookupComboBox
        Left = 91
        Top = 13
        Width = 200
        Height = 24
        DataField = 'PROJECTNAME'
        KeyField = 'ID'
        ListField = 'PROJECTNAME'
        ListSource = DS_Job_ProjectName
        TabOrder = 13
        OnClick = DBLCB_Job_ProjectNameClick
        OnKeyDown = DBLCB_Job_ProjectNameKeyDown
      end
      object DBLCB_Job_Priority: TDBLookupComboBox
        Left = 367
        Top = 13
        Width = 129
        Height = 24
        KeyField = 'ID'
        ListField = 'PRIORITY'
        ListSource = DS_Job_Priority
        TabOrder = 14
        OnClick = DBLCB_Job_PriorityClick
        OnKeyDown = DBLCB_Job_PriorityKeyDown
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 570
        Top = 13
        Width = 129
        Height = 24
        KeyField = 'ID'
        ListField = 'STATUS'
        ListSource = DS_Job_Status
        TabOrder = 15
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 83
        Top = 45
        Width = 137
        Height = 24
        KeyField = 'ID'
        ListField = 'NAME'
        ListSource = DS_Job_ScheduledBy
        TabOrder = 16
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 343
        Top = 45
        Width = 95
        Height = 24
        KeyField = 'ID'
        ListField = 'NAME'
        ListSource = DS_Job_ScheduledFor
        TabOrder = 17
      end
      object CLB_ProjectName: TCheckListBox
        Left = 670
        Top = 466
        Width = 207
        Height = 89
        TabOrder = 18
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'New'
      ImageIndex = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1017
    Height = 33
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Button1: TButton
      Left = 941
      Top = 1
      Width = 75
      Height = 31
      Align = alRight
      Caption = 'Close'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 716
      Top = 1
      Width = 75
      Height = 31
      Align = alRight
      Caption = 'New'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 791
      Top = 1
      Width = 75
      Height = 31
      Align = alRight
      Caption = 'Save'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 866
      Top = 1
      Width = 75
      Height = 31
      Align = alRight
      Caption = 'Delete'
      TabOrder = 3
    end
  end
  object Query_Job_ProjectName: TQuery
    DatabaseName = 'hospital'
    SQL.Strings = (
      'SELECT * FROM PROJECTNAME ORDER BY ID')
    Left = 168
    Top = 24
  end
  object DS_Job_ProjectName: TDataSource
    DataSet = Query_Job_ProjectName
    Left = 128
    Top = 24
  end
  object Qry_Job_priority: TQuery
    DatabaseName = 'hospital'
    SQL.Strings = (
      'SELECT * FROM PRIORITY ORDER BY ID')
    Left = 400
    Top = 24
  end
  object DS_Job_Priority: TDataSource
    DataSet = Qry_Job_priority
    Left = 352
    Top = 24
  end
  object Qry_Job_Status: TQuery
    DatabaseName = 'hospital'
    SQL.Strings = (
      'SELECT * FROM STATUS  ORDER BY ID')
    Left = 608
    Top = 24
  end
  object DS_Job_Status: TDataSource
    DataSet = Qry_Job_Status
    Left = 568
    Top = 24
  end
  object Qry_Job_ScheduleBy: TQuery
    DatabaseName = 'hospital'
    SQL.Strings = (
      'select *From MANAGEMENT ORDER BY ID')
    Left = 184
    Top = 120
  end
  object DS_Job_ScheduledBy: TDataSource
    DataSet = Qry_Job_ScheduleBy
    Left = 128
    Top = 128
  end
  object DS_Job_ScheduledFor: TDataSource
    DataSet = Qry_Job_ScheduledFor
    Left = 344
    Top = 128
  end
  object Qry_Job_ScheduledFor: TQuery
    DatabaseName = 'hospital'
    SQL.Strings = (
      'select *From DEVELOPERS ORDER BY ID')
    Left = 416
    Top = 128
  end
  object Qry_DBGrid_JobSchedule: TQuery
    DatabaseName = 'hospital'
    Left = 440
    Top = 344
  end
  object DS_DBGrid_JobSchedule: TDataSource
    DataSet = Table_DBGrid_JobSchedule
    Left = 280
    Top = 312
  end
  object Table_DBGrid_JobSchedule: TTable
    Left = 568
    Top = 352
  end
  object Query1: TQuery
    Left = 136
    Top = 344
  end
end
