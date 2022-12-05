object Form_ProjectInfo: TForm_ProjectInfo
  Left = 0
  Top = 0
  Caption = 'Project Info'
  ClientHeight = 359
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 513
    Height = 33
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 437
      Top = 1
      Width = 75
      Height = 31
      Align = alRight
      Caption = 'Close'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 287
      Top = 1
      Width = 75
      Height = 31
      Align = alRight
      Caption = 'Send To Excel'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 362
      Top = 1
      Width = 75
      Height = 31
      Align = alRight
      Caption = 'Preview'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 513
    Height = 326
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 80
      Top = 88
      Width = 82
      Height = 16
      Caption = 'Project Name:'
    end
    object Label2: TLabel
      Left = 97
      Top = 120
      Width = 65
      Height = 16
      Caption = 'Form Date:'
    end
    object Label3: TLabel
      Left = 258
      Top = 120
      Width = 50
      Height = 16
      Caption = 'To Date:'
    end
    object GroupBox1: TGroupBox
      Left = 168
      Top = 149
      Width = 233
      Height = 52
      TabOrder = 0
    end
    object RadioButton1: TRadioButton
      Left = 184
      Top = 161
      Width = 113
      Height = 22
      Caption = 'Summary(F1)'
      TabOrder = 1
    end
    object RadioButton2: TRadioButton
      Left = 312
      Top = 160
      Width = 73
      Height = 24
      Caption = 'Detail(F2)'
      TabOrder = 2
    end
    object DateEditX2: TDateEditX
      Left = 314
      Top = 120
      Width = 65
      Height = 24
      TabOrder = 3
      ControlData = {
        545046300A5444617465456469745200044C656674033A0103546F7002780648
        656967687402180B4461746541442E5965617203E6070C4461746541442E4D6F
        6E7468020B0A4461746541442E44617902110B4461746556532E59656172031F
        080C4461746556532E4D6F6E746802080A4461746556532E44617902010000}
    end
  end
  object DateEditX1: TDateEditX
    Left = 168
    Top = 153
    Width = 65
    Height = 21
    TabOrder = 2
    ControlData = {
      545046300A5444617465456469745200044C65667403A80003546F700399000B
      4461746541442E5965617203E6070C4461746541442E4D6F6E7468020B0A4461
      746541442E44617902110B4461746556532E59656172031F080C446174655653
      2E4D6F6E746802080A4461746556532E44617902010000}
  end
  object Button4: TButton
    Left = 228
    Top = 151
    Width = 25
    Height = 25
    Caption = 'BS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Button5: TButton
    Left = 376
    Top = 151
    Width = 25
    Height = 25
    Caption = 'BS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 168
    Top = 116
    Width = 217
    Height = 21
    KeyField = 'ID'
    ListField = 'PROJECTNAME'
    ListSource = DS_ProjectInfo_ProjectName
    TabOrder = 5
  end
  object Qry_Projectinfo_ProjectName: TQuery
    DatabaseName = 'hospital'
    SQL.Strings = (
      'select *From PROJECTNAME ORDER BY ID')
    Left = 120
    Top = 48
  end
  object DS_ProjectInfo_ProjectName: TDataSource
    DataSet = Qry_Projectinfo_ProjectName
    Left = 224
    Top = 40
  end
end
