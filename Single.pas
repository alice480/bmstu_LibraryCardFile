unit Single;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses ReadingFile, menu;

{$R *.dfm}

var Fread: Reading;

procedure TForm3.BitBtn1Click(Sender: TObject);
  begin
    Fread.close_file;
    Form3.Hide;
    Form2.Show;
  end;

procedure TForm3.BitBtn2Click(Sender: TObject);
  begin
    Fread.InstSelection;
  end;

procedure TForm3.FormShow(Sender: TObject);
  begin
    Memo1.Clear;
    Fread := Reading.Create(Memo1);
    Fread.open_file;
  end;

end.
