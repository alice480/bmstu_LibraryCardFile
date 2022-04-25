unit DeleteSelected;

interface

uses Vcl.StdCtrls, SysUtils, Vcl.Samples.Spin, Vcl.Grids;

Type
  Deletion = Class
     public
      Type books = record
        title: string[20];
        author: string[20];
        publish: string[20];
        instance: integer;
        year: integer;
        end;
     public
        f, g: file of books;
        book: books;
        constructor Create(aStringGrid1: TStringGrid);
        procedure open_file;
        procedure close_file;
        procedure reading_file;
        procedure deleting;
        function checking(author, title, publish: string;
                                             instance, year: integer): boolean;
     private
        stringGrid1: TStringGrid;
end;

implementation


constructor Deletion.Create(aStringGrid1: TStringGrid);
  begin
    stringGrid1 := aStringGrid1;
  end;

function Deletion.checking(author, title, publish: string;
                                            instance, year: integer): boolean;
  var flag: boolean;
  begin
    flag := True;
    Seek(f, 0);
      while (not EOF(f)) do
          begin
            read(f, book);
            if (book.title = title) and (book.author = author) and
                        (book.publish = publish) then
              begin
                flag := False;
                break;
              end;
          end;
    checking := flag;
  end;

procedure Deletion.reading_file;
  var lastRow, c, r: integer;
  begin
      for c := 0 to Pred(stringGrid1.ColCount) do
        for r := 1 to Pred(stringGrid1.RowCount) do
          stringGrid1.Cells[c, r] := '';
      StringGrid1.RowCount := 2;
      lastRow := 1;
      Seek(f, 0);
      while (not EOF(f)) do
          begin
            read(f, book);
            if (book.title <> '') and (book.author <> '') then
              lastRow := StringGrid1.RowCount - 1;
              stringGrid1.Cells[0, lastRow] := book.author;
              StringGrid1.Cells[1, lastRow] := book.title;
              StringGrid1.Cells[2, lastRow] := book.publish;
              StringGrid1.Cells[3, lastRow] := IntToStr(book.year);
              StringGrid1.Cells[4, lastRow] := IntToStr(book.instance);
              StringGrid1.RowCount := StringGrid1.RowCount + 1;
          end;
  StringGrid1.RowCount := StringGrid1.RowCount - 1;
  end;

procedure Deletion.deleting;
  var author, title, publish: string;
      year, instance: integer;
  begin
    AssignFile(g,'D:\PracticCheck\aux1.txt');
    Rewrite(g);
    Seek(f, 0);
    author := StringGrid1.Cells[0, StringGrid1.Row];
    title := StringGrid1.Cells[1, StringGrid1.Row];
    publish := StringGrid1.Cells[2, StringGrid1.Row];
    year := StrToInt(StringGrid1.Cells[3, StringGrid1.Row]);
    instance := StrToInt(StringGrid1.Cells[4, StringGrid1.Row]);
    while (not EOF(f)) do
        begin
            read(f, book);
            if (book.author <> author) then
              begin
                write(g, book);
              end;
        end;
     CloseFile(f);
     Rewrite(f);
     Seek(g, 0);
     while (not EOF(g)) do
        begin
          read(g, book);
          write(f, book);
        end;
     CloseFile(g);
  end;

procedure Deletion.open_file;
    begin
      if FileExists('D:\PracticCheck\book.txt') then
        begin
          AssignFile(f,'D:\PracticCheck\book.txt');
          reset(f);
        end;
    end;

procedure Deletion.close_file;
    begin
      CloseFile(f);
    end;


end.
