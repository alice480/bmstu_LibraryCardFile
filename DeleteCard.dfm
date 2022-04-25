object Form7: TForm7
  Left = 0
  Top = 0
  Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1079#1072#1087#1080#1089#1077#1081
  ClientHeight = 379
  ClientWidth = 747
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn3: TBitBtn
    Left = 8
    Top = 341
    Width = 88
    Height = 30
    Caption = #1052#1077#1085#1102
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn3Click
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 16
    Width = 728
    Height = 303
    ColCount = 6
    DefaultColWidth = 116
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    GradientEndColor = clFuchsia
    ParentFont = False
    TabOrder = 1
    OnDrawCell = StringGridDrawCell
    RowHeights = (
      24
      24)
  end
  object BitBtn1: TBitBtn
    Left = 648
    Top = 341
    Width = 88
    Height = 30
    Caption = #1059#1076#1072#1083#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
