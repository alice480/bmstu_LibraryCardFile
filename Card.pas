unit Card;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, WinProcs, Vcl.Imaging.jpeg;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    ComboBox1: TComboBox;
    StringGrid1: TStringGrid;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Image1: TImage;
    Label5: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses FileWork, Menu;

{$R *.dfm}

var F: Processing;


procedure TForm1.BitBtn1Click(Sender: TObject);
    begin
        F.writing_file;
    end;

procedure TForm1.BitBtn2Click(Sender: TObject);
    begin
      F.reading_file;
    end;


procedure TForm1.BitBtn3Click(Sender: TObject);
  var c, r: integer;
  begin
    F.close_file;
    for c := 0 to Pred(stringGrid1.ColCount) do
        for r := 1 to Pred(stringGrid1.RowCount) do
        begin
          stringGrid1.Cells[c, r] := '';
          StringGrid1.RowCount := StringGrid1.RowCount - 1;
        end;
    Form1.Hide;
    Form2.Show;
  end;

procedure TForm1.FormShow(Sender: TObject);
  begin
    Edit1.Clear;
    Edit2.Clear;
    ComboBox1.Clear;
    StringGrid1.ColWidths[0] := 230;
    StringGrid1.ColWidths[1] := 235;
    StringGrid1.ColWidths[2] := 200;
    StringGrid1.ColWidths[3] := 65;
    StringGrid1.ColWidths[4] := 70;
    StringGrid1.Font.Style := [fsBold, fsItalic];
    stringGrid1.Cells[0, 0] := 'Автор';
    StringGrid1.Cells[1, 0] := 'Название';
    StringGrid1.Cells[2, 0] := 'Издательство';
    StringGrid1.Cells[3, 0] := 'Год';
    StringGrid1.Cells[4, 0] := 'Кол-во';
    StringGrid1.Font.Style := [];
    ComboBox1.Items.Add('Азбука');
    ComboBox1.Items.Add('Альфа-книга');
    ComboBox1.Items.Add('Баласс');
    ComboBox1.Items.Add('Вита-Пресс');
    ComboBox1.Items.Add('ГЕОДОМ');
    ComboBox1.Items.Add('Дрофа');
    ComboBox1.Items.Add('Златоуст');
    ComboBox1.Items.Add('Интеллект-Центр');
    ComboBox1.Items.Add('КноРус');
    ComboBox1.Items.Add('Литера');
    ComboBox1.Items.Add('Мнемозина');
    ComboBox1.Items.Add('Настя и Никита');
    ComboBox1.Items.Add('Омега-Л');
    ComboBox1.Items.Add('Питер');
    ComboBox1.Items.Add('Просвещение');
    ComboBox1.Items.Add('Речь');
    ComboBox1.Items.Add('Росмэн');
    ComboBox1.Items.Add('Русское слово');
    ComboBox1.Items.Add('Синдбад');
    ComboBox1.Items.Add('Слово');
    ComboBox1.Items.Add('Титул');
    ComboBox1.Items.Add('Учитель');
    ComboBox1.Items.Add('Феникс');
    ComboBox1.Items.Add('Шанс');
    ComboBox1.Items.Add('Эксмо');
    F := Processing.Create(Edit1, Edit2, ComboBox1, StringGrid1, SpinEdit1, SpinEdit2);
    F.open_file;
  end;



procedure TForm1.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
  var text: string;
    begin
      text:=StringGrid1.Cells[ACol,ARow];
      StringGrid1.Canvas.Brush.Color:=clWindow;
      StringGrid1.Canvas.FillRect(Rect);
      StringGrid1.Canvas.Font.Style := [];
      if (ARow = 0)  then
        begin
          StringGrid1.Canvas.Font.Style:=[fsBold];
        end;
      DrawText(StringGrid1.Canvas.Handle, PChar(text), Length(text), Rect, DT_CENTER);
    end;

end.
