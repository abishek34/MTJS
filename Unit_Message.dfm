object Frm_Message: TFrm_Message
  Left = 0
  Top = 0
  AutoSize = True
  BorderStyle = bsNone
  Caption = 'Frm_Message'
  ClientHeight = 96
  ClientWidth = 234
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 3
    Top = 3
    Width = 231
    Height = 93
    AutoSize = False
    Caption = 'DONE'
    Color = clSilver
    EllipsisPosition = epEndEllipsis
    Font.Charset = ANSI_CHARSET
    Font.Color = 33023
    Font.Height = -80
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 0
    Top = 0
    Width = 231
    Height = 88
    AutoSize = False
    Caption = 'DONE'
    Color = clSilver
    EllipsisPosition = epEndEllipsis
    Font.Charset = ANSI_CHARSET
    Font.Color = 8404992
    Font.Height = -80
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 288
    Top = 64
  end
end