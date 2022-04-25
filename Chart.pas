unit Chart;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TForm10 = class(TForm)
    Chart1: TChart;
    Series1: TLineSeries;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses menu, CreateChart;

{$R *.dfm}

var CChart: ChartCreation;

procedure TForm10.BitBtn1Click(Sender: TObject);
  begin
    CChart.close_file;
    Chart1.SeriesList[0].Clear;
    Form10.Hide;
    Form2.Show;
  end;


procedure TForm10.FormShow(Sender: TObject);
  begin
    CChart := ChartCreation.Create(Chart1);
    CChart.open_file;
    CChart.DrawChart;
  end;

end.
