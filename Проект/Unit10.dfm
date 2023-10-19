object Form10: TForm10
  Left = 226
  Top = 186
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 209
  ClientWidth = 278
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnMouseDown = FormMouseDown
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 16
    Top = 8
    object N2: TMenuItem
      Caption = #1053#1072#1079#1072#1076
      OnClick = N2Click
    end
    object N5: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      OnClick = N5Click
    end
    object N1: TMenuItem
      Caption = #1053#1086#1074#1072#1103' '#1080#1075#1088#1072
      OnClick = N1Click
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 16
    Top = 56
  end
end
