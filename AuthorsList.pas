unit AuthorsList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Samples.Spin, Vcl.ExtCtrls;

type
  TForm4 = class(TForm)
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses ReadingFile, Menu, IncorrectLimits;

{$R *.dfm}

var Fread: Reading;

procedure TForm4.BitBtn1Click(Sender: TObject);
  begin
    Fread.close_file;
    Form4.Hide;
    Form2.Show;
  end;

procedure TForm4.BitBtn2Click(Sender: TObject);
  begin
    if SpinEdit1.Value > SpinEdit2.Value then Form8.Show
    else
      Fread.YearsSelection(SpinEdit1.Value, SpinEdit2.Value);
  end;

procedure TForm4.FormShow(Sender: TObject);
  begin
    Memo1.Clear;
    Fread := Reading.Create(Memo1);
    Fread.open_file;
  end;

end.
