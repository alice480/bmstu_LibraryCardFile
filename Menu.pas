unit Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm2 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Card, DeleteCard, Single, AuthorsList, Chronology, Chart;

{$R *.dfm}

procedure TForm2.BitBtn1Click(Sender: TObject);
      begin
        Form1.show;
        Form2.Hide;
      end;

procedure TForm2.BitBtn2Click(Sender: TObject);
    begin
      Form3.show;
      Form2.Hide;
    end;

procedure TForm2.BitBtn3Click(Sender: TObject);
  begin
    Form4.show;
    Form2.Hide;
  end;

procedure TForm2.BitBtn4Click(Sender: TObject);
  begin
    Form10.Show;
    Form2.Hide;
  end;

procedure TForm2.BitBtn5Click(Sender: TObject);
  begin
    Form7.show;
    Form2.Hide;
  end;

procedure TForm2.BitBtn6Click(Sender: TObject);
  begin
    Form9.show;
    Form2.Hide;
  end;

procedure TForm2.BitBtn7Click(Sender: TObject);
  begin
    Close;
  end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    Close;
  end;


end.
