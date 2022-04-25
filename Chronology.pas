unit Chronology;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm9 = class(TForm)
    ComboBox1: TComboBox;
    Label5: TLabel;
    Memo1: TMemo;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses ReadingFile, menu;

{$R *.dfm}

var Fread: Reading;

procedure TForm9.BitBtn1Click(Sender: TObject);
  begin
    Fread.close_file;
    Form9.Hide;
    Form2.Show;
  end;

procedure TForm9.BitBtn2Click(Sender: TObject);
  begin
    Fread.PublishSelection(ComboBox1.Text);
  end;

procedure TForm9.FormShow(Sender: TObject);
  begin
    Memo1.Clear;
    Fread := Reading.Create(Memo1);
    Fread.open_file;
  end;

end.
