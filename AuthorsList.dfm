object Form4: TForm4
  Left = 0
  Top = 0
  Caption = #1044#1072#1085#1085#1099#1077' '#1079#1072' '#1087#1077#1088#1080#1086#1076
  ClientHeight = 478
  ClientWidth = 408
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clHotLight
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 23
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 334
    Height = 46
    Alignment = taCenter
    Caption = 
      #1057#1087#1080#1089#1086#1082' '#1072#1074#1090#1086#1088#1086#1074', '#1082#1085#1080#1075#1080' '#1082#1086#1090#1086#1088#1099#1093' '#1073#1099#1083#1080' '#1080#1079#1076#1072#1085#1099' '#1074' '#1090#1077#1095#1077#1085#1080#1077' '#1079#1072#1076#1072#1085#1085#1086#1075#1086' '#1087#1077 +
      #1088#1080#1086#1076#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Memo1: TMemo
    Left = 8
    Top = 126
    Width = 388
    Height = 302
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 321
    Top = 434
    Width = 75
    Height = 36
    Caption = #1052#1077#1085#1102
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 8
    Top = 434
    Width = 89
    Height = 36
    Caption = #1055#1086#1083#1091#1095#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object Panel1: TPanel
    Left = 8
    Top = 79
    Width = 388
    Height = 41
    Color = clMenuBar
    ParentBackground = False
    TabOrder = 3
    object Label2: TLabel
      Left = 212
      Top = 5
      Width = 53
      Height = 23
      Caption = #1050#1086#1085#1077#1094
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 9
      Top = 5
      Width = 64
      Height = 23
      Caption = #1053#1072#1095#1072#1083#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpinEdit1: TSpinEdit
      Left = 79
      Top = 5
      Width = 106
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxValue = 2022
      MinValue = 1400
      ParentFont = False
      TabOrder = 0
      Value = 2000
    end
    object SpinEdit2: TSpinEdit
      Left = 271
      Top = 5
      Width = 106
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxValue = 2022
      MinValue = 0
      ParentFont = False
      TabOrder = 1
      Value = 2010
    end
  end
end
