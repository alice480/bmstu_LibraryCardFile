object Form10: TForm10
  Left = 0
  Top = 0
  Caption = #1043#1088#1072#1092#1080#1082
  ClientHeight = 519
  ClientWidth = 677
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 661
    Height = 465
    BottomWall.StartPosition = 100
    Legend.Visible = False
    Title.Font.Height = -19
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      #1043#1088#1072#1092#1080#1082' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072' '#1080#1079#1076#1072#1085#1085#1099#1093' '#1082#1085#1080#1075' '#1087#1086' '#1075#1086#1076#1072#1084)
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.Maximum = 2022.000000000000000000
    BottomAxis.Minimum = 1900.000000000000000000
    BottomAxis.Title.Caption = #1043#1086#1076' '#1080#1079#1076#1072#1085#1080#1103
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Axis.Width = 0
    LeftAxis.Maximum = 1000.000000000000000000
    LeftAxis.Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1082#1085#1080#1075
    Color = 15127732
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      18
      15
      18)
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      Data = {
        00190000000000000000A490400000000000C88E400000000000688F40000000
        00007C8F400000000000908F400000000000C08C400000000000248D40000000
        0000408A400000000000848C400000000000B489400000000000588640000000
        0000AC82400000000000F4854000000000005084400000000000648440000000
        0000EC834000000000009080400000000000A079400000000000887340000000
        0000587140000000000098774000000000005079400000000000887D40000000
        0000507E400000000000387D40}
      Detail = {0000000000}
    end
  end
  object BitBtn1: TBitBtn
    Left = 586
    Top = 479
    Width = 83
    Height = 34
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
end
