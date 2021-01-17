object Form1: TForm1
  Left = 1127
  Top = 69
  Width = 223
  Height = 231
  Caption = #1053#1072#1087#1086#1084#1080#1085#1072#1083#1082#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 194
    Height = 20
    AutoSize = False
    Caption = #1058#1077#1082#1091#1097#1072#1103' '#1076#1072#1090#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 185
    Height = 20
    AutoSize = False
    Caption = #1058#1077#1082#1091#1097#1077#1077' '#1074#1088#1077#1084#1103':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 64
    Width = 69
    Height = 13
    Caption = #1050#1086#1083'-'#1074#1086' '#1095#1072#1089#1086#1074':'
  end
  object Label4: TLabel
    Left = 96
    Top = 64
    Width = 73
    Height = 13
    Caption = #1050#1086#1083'-'#1074#1086'  '#1084#1080#1085#1091#1090':'
  end
  object Label5: TLabel
    Left = 8
    Top = 104
    Width = 58
    Height = 13
    Caption = #1050#1086#1083'-'#1074#1086' '#1089#1077#1082':'
  end
  object Label6: TLabel
    Left = 8
    Top = 144
    Width = 193
    Height = 13
    Caption = #1059#1089#1090#1072#1085#1086#1074#1083#1077#1085#1086#1077' '#1074#1088#1077#1084#1103':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 88
    Top = 160
    Width = 113
    Height = 25
    Caption = #1054#1089#1090#1072#1083#1086#1089#1100':'
    WordWrap = True
  end
  object Edit1: TEdit
    Left = 8
    Top = 80
    Width = 65
    Height = 21
    TabOrder = 0
    Text = '0'
  end
  object UpDown1: TUpDown
    Left = 73
    Top = 80
    Width = 16
    Height = 21
    Associate = Edit1
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 96
    Top = 80
    Width = 73
    Height = 21
    TabOrder = 2
    Text = '0'
  end
  object UpDown2: TUpDown
    Left = 169
    Top = 80
    Width = 16
    Height = 21
    Associate = Edit2
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 8
    Top = 120
    Width = 57
    Height = 21
    TabOrder = 4
    Text = '0'
  end
  object UpDown3: TUpDown
    Left = 65
    Top = 120
    Width = 16
    Height = 21
    Associate = Edit3
    TabOrder = 5
  end
  object Button1: TButton
    Left = 88
    Top = 104
    Width = 113
    Height = 33
    Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 160
    Width = 75
    Height = 25
    Caption = #1057#1073#1088#1086#1089
    Enabled = False
    TabOrder = 7
    OnClick = Button2Click
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 8
    Top = 8
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 8
    Top = 40
  end
end
