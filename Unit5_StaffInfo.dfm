object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 522
  ClientWidth = 929
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 929
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 384
    ExplicitTop = 264
    ExplicitWidth = 185
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 929
    Height = 481
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitTop = 47
    object Label1: TLabel
      Left = 136
      Top = 80
      Width = 39
      Height = 14
      Caption = 'Staff :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 448
      Top = 9
      Width = 89
      Height = 14
      Caption = 'Project Name :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBComboBox1: TDBComboBox
      Left = 181
      Top = 77
      Width = 145
      Height = 22
      TabOrder = 0
    end
    object Memo1: TMemo
      Left = 432
      Top = 29
      Width = 481
      Height = 143
      Lines.Strings = (
        'Memo1')
      TabOrder = 1
    end
  end
end
