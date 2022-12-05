object Form_ModTrack: TForm_ModTrack
  Left = 0
  Top = 0
  Caption = 'Modification Tracking'
  ClientHeight = 572
  ClientWidth = 976
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
    Width = 976
    Height = 33
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Button1: TButton
      Left = 900
      Top = 1
      Width = 75
      Height = 31
      Align = alRight
      Caption = 'Close'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 675
      Top = 1
      Width = 75
      Height = 31
      Align = alRight
      Caption = 'New'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Btn_Save: TButton
      Left = 750
      Top = 1
      Width = 75
      Height = 31
      Align = alRight
      Caption = 'Save'
      TabOrder = 2
      OnClick = Btn_SaveClick
    end
    object Button4: TButton
      Left = 825
      Top = 1
      Width = 75
      Height = 31
      Align = alRight
      Caption = 'Delete'
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 976
    Height = 539
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 974
      Height = 537
      ActivePage = TabSheet2
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
        object Label1: TLabel
          Left = 3
          Top = 24
          Width = 68
          Height = 16
          Caption = 'Modification'
        end
        object Label2: TLabel
          Left = 312
          Top = 24
          Width = 77
          Height = 16
          Caption = 'Project Name'
        end
        object Label3: TLabel
          Left = 247
          Top = 42
          Width = 90
          Height = 16
          Caption = 'Database Name'
        end
        object Label4: TLabel
          Left = 644
          Top = 137
          Width = 53
          Height = 16
          Caption = 'Purpose'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 644
          Top = 238
          Width = 134
          Height = 16
          Caption = 'Previous Declaration'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 644
          Top = 337
          Width = 128
          Height = 16
          Caption = 'Current Declaration'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo2: TMemo
          Left = 660
          Top = 260
          Width = 197
          Height = 71
          TabOrder = 0
        end
        object Memo3: TMemo
          Left = 660
          Top = 359
          Width = 197
          Height = 71
          TabOrder = 1
        end
        object DBGrid_ModTrack: TDBGrid
          Left = 3
          Top = 64
          Width = 635
          Height = 405
          DataSource = DS_ModTrack
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBGrid_ModTrackCellClick
          OnDblClick = DBGrid_ModTrackDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'SOMO_SOURCEMODIFICATIONID'
              Title.Caption = 'SNO'
              Width = 32
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SOMO_PROJECTNAME'
              Title.Caption = 'PROJECTNAME'
              Width = 208
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SOMO_MODIFICATIONID'
              Title.Caption = 'MODIFICATIONID'
              Width = 104
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SOMO_PURPOSE'
              Title.Caption = 'PURPOSE'
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SOMO_PREVIOUSDECLERATION'
              Title.Caption = 'OLDVALUE'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SOMO_CURRENTDECLERATION'
              Title.Caption = 'NEWALTER'
              Width = 91
              Visible = True
            end>
        end
        object Memo_ListPurpose: TMemo
          Left = 660
          Top = 159
          Width = 197
          Height = 66
          TabOrder = 3
        end
        object GroupBox1: TGroupBox
          Left = 644
          Top = 27
          Width = 248
          Height = 89
          Caption = 'Date Range'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          object Label15: TLabel
            Left = 7
            Top = 24
            Width = 35
            Height = 16
            Caption = 'From:'
          end
          object Label16: TLabel
            Left = 7
            Top = 49
            Width = 20
            Height = 16
            Caption = 'To:'
          end
          object Mod_FromDate: TDateEditX
            Left = 45
            Top = 22
            Width = 75
            Height = 24
            TabOrder = 0
            ControlData = {
              545046300A5444617465456469745200044C656674022D03546F700216057769
              647468024B0648656967687402180B4461746541442E5965617203E6070C4461
              746541442E4D6F6E7468020A0A4461746541442E446179020B0B446174655653
              2E59656172031F080C4461746556532E4D6F6E746802060A4461746556532E44
              617902190000}
          end
          object Mod_ToDate: TDateEditX
            Left = 45
            Top = 49
            Width = 75
            Height = 24
            TabOrder = 1
            ControlData = {
              545046300A5444617465456469745200044C656674022D03546F700231057769
              647468024B0648656967687402180B4461746541442E5965617203E6070C4461
              746541442E4D6F6E7468020C0A4461746541442E44617902010B446174655653
              2E59656172031F080C4461746556532E4D6F6E746802080A4461746556532E44
              6179020F0000}
          end
          object Button5: TButton
            Left = 118
            Top = 20
            Width = 25
            Height = 25
            Caption = 'AD'
            TabOrder = 2
          end
          object Button6: TButton
            Left = 118
            Top = 49
            Width = 25
            Height = 25
            Caption = 'AD'
            TabOrder = 3
          end
          object CB_DateRange: TCheckBox
            Left = 147
            Top = 38
            Width = 19
            Height = 17
            TabOrder = 4
            OnClick = CB_DateRangeClick
          end
          object btn_Refresh: TButton
            Left = 167
            Top = 33
            Width = 75
            Height = 25
            Caption = 'Refresh'
            TabOrder = 5
            OnClick = btn_RefreshClick
          end
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 395
          Top = 20
          Width = 220
          Height = 24
          KeyField = 'ID'
          ListField = 'PROJECTNAME'
          ListSource = DS_ProjectName
          TabOrder = 6
          OnClick = DBLookupComboBox1Click
          OnKeyDown = DBLookupComboBox1KeyDown
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 77
          Top = 20
          Width = 220
          Height = 24
          KeyField = 'MONA_MODIFICATIONID'
          ListField = 'MONA_MODIFICATIONNAME'
          ListSource = DS_Modification
          TabOrder = 5
          OnClick = DBLookupComboBox2Click
          OnKeyDown = DBLookupComboBox2KeyDown
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'New'
        ImageIndex = 1
        object Label7: TLabel
          Left = 24
          Top = 16
          Width = 46
          Height = 16
          Caption = 'Purpose'
        end
        object Label8: TLabel
          Left = 416
          Top = 16
          Width = 94
          Height = 16
          Caption = 'Affected Caption'
        end
        object Label9: TLabel
          Left = 24
          Top = 152
          Width = 105
          Height = 16
          Caption = 'Modification Name'
        end
        object Label10: TLabel
          Left = 24
          Top = 192
          Width = 76
          Height = 16
          Caption = 'Source Effect'
        end
        object Label11: TLabel
          Left = 24
          Top = 217
          Width = 77
          Height = 16
          Caption = 'Project Name'
        end
        object Lable12: TLabel
          Left = 320
          Top = 216
          Width = 59
          Height = 16
          Caption = 'Unit Name'
        end
        object Label12: TLabel
          Left = 560
          Top = 216
          Width = 94
          Height = 16
          Caption = 'Declration Name'
        end
        object Label13: TLabel
          Left = 24
          Top = 264
          Width = 116
          Height = 16
          Caption = 'Previous Declaration'
        end
        object Label14: TLabel
          Left = 416
          Top = 264
          Width = 111
          Height = 16
          Caption = 'Current Declaration'
        end
        object Label17: TLabel
          Left = 854
          Top = 6
          Width = 31
          Height = 16
          Caption = 'Date:'
        end
        object Memo_Purpose: TMemo
          Left = 24
          Top = 38
          Width = 185
          Height = 89
          TabOrder = 0
        end
        object Memo_AffectedCaption: TMemo
          Left = 416
          Top = 38
          Width = 185
          Height = 89
          TabOrder = 1
        end
        object DBLCB_NewSource: TDBLookupComboBox
          Left = 142
          Top = 148
          Width = 145
          Height = 24
          KeyField = 'MONA_MODIFICATIONID'
          ListField = 'MONA_MODIFICATIONNAME'
          ListSource = DS_Modification
          TabOrder = 2
        end
        object DBLCB_NewProjName: TDBLookupComboBox
          Left = 107
          Top = 213
          Width = 207
          Height = 24
          KeyField = 'ID'
          ListField = 'PROJECTNAME'
          ListSource = DS_ProjectName
          TabOrder = 3
        end
        object Memo_PreDeclaration: TMemo
          Left = 24
          Top = 286
          Width = 185
          Height = 89
          TabOrder = 4
        end
        object Memo_CurDecleration: TMemo
          Left = 416
          Top = 286
          Width = 185
          Height = 89
          TabOrder = 5
        end
        object Memo_UnitName: TMemo
          Left = 385
          Top = 210
          Width = 170
          Height = 27
          Lines.Strings = (
            '')
          TabOrder = 6
        end
        object Memo_DeclName: TMemo
          Left = 660
          Top = 210
          Width = 170
          Height = 27
          TabOrder = 7
        end
        object Mod_NewDate: TDateEditX
          Left = 888
          Top = 3
          Width = 74
          Height = 24
          ParentShowHint = False
          ShowHint = False
          TabOrder = 8
          ControlData = {
            545046300A5444617465456469745200044C65667403780303546F7002030577
            69647468024A0648656967687402180B4461746541442E5965617203E6070C44
            61746541442E4D6F6E7468020B0A4461746541442E446179021B0B4461746556
            532E59656172031F080C4461746556532E4D6F6E746802080A4461746556532E
            446179020B0000}
        end
      end
    end
  end
  object CB_ProjectName: TCheckBox
    Left = 624
    Top = 78
    Width = 19
    Height = 17
    TabOrder = 2
    OnClick = CB_ProjectNameClick
  end
  object Query_ProjectName: TQuery
    DatabaseName = 'hospital'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM PROJECTNAME ORDER BY ID')
    Left = 544
    Top = 16
  end
  object DS_ProjectName: TDataSource
    DataSet = Query_ProjectName
    Left = 448
    Top = 24
  end
  object DS_Modification: TDataSource
    DataSet = Qry_Modification
    Left = 160
    Top = 16
  end
  object Qry_Modification: TQuery
    DatabaseName = 'hospital'
    RequestLive = True
    SQL.Strings = (
      'select *From HS_MONA_MODIFICATIONNAME')
    Left = 256
    Top = 8
  end
  object Qry_Save: TQuery
    Left = 680
    Top = 24
  end
  object Qry_ModTrack: TQuery
    Left = 472
    Top = 264
  end
  object DS_ModTrack: TDataSource
    DataSet = Qry_ModTrack
    Left = 432
    Top = 352
  end
end
