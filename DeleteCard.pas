unit DeleteCard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, WinProcs, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TForm7 = class(TForm)
    BitBtn3: TBitBtn;
    StringGrid1: TStringGrid;
    BitBtn1: TBitBtn;
    procedure StringGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses DeleteSelected, menu;

{$R *.dfm}

var F: Deletion;


procedure TForm7.BitBtn1Click(Sender: TObject);
  begin
    F.deleting;
    F.reading_file;
  end;

procedure TForm7.BitBtn3Click(Sender: TObject);
  begin
    F.close_file;
    Form7.Hide;
    Form2.Show;
  end;

procedure TForm7.FormShow(Sender: TObject);
  begin
    StringGrid1.ColWidths[0] := 195;
    StringGrid1.ColWidths[1] := 195;
    StringGrid1.ColWidths[2] := 195;
    StringGrid1.ColWidths[3] := 65;
    StringGrid1.ColWidths[4] := 70;
    stringGrid1.Cells[0, 0] := 'Автор';
    StringGrid1.Cells[1, 0] := 'Название';
    StringGrid1.Cells[2, 0] := 'Издательство';
    StringGrid1.Cells[3, 0] := 'Год';
    StringGrid1.Cells[4, 0] := 'Кол-во';
    F := Deletion.Create(StringGrid1);
    F.open_file;
    F.reading_file;
  end;

procedure TForm7.StringGridDrawCell(Sender: TObject; ACol, ARow: Integer;
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
