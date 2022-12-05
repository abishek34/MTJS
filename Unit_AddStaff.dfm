object Form_AddStaff: TForm_AddStaff
  Left = 0
  Top = 0
  Caption = 'Login Form'
  ClientHeight = 236
  ClientWidth = 351
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 351
    Height = 41
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 275
      Top = 1
      Width = 75
      Height = 39
      Align = alRight
      Caption = 'Save'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 280
      ExplicitTop = 16
      ExplicitHeight = 25
    end
    object Button2: TButton
      Left = 200
      Top = 1
      Width = 75
      Height = 39
      Align = alRight
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 280
      ExplicitTop = 16
      ExplicitHeight = 25
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 351
    Height = 195
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 112
    ExplicitTop = 160
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 64
      Top = 80
      Width = 68
      Height = 16
      Caption = 'New Staff:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Memo1: TMemo
      Left = 138
      Top = 75
      Width = 167
      Height = 24
      Lines.Strings = (
        'Edit_Staff')
      TabOrder = 0
    end
  end
end
