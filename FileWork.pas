unit FileWork;

interface

uses Vcl.StdCtrls, SysUtils, Vcl.Samples.Spin, Vcl.Grids;

Type
  Processing = Class
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
        constructor Create(aEdit1, aEdit2: TEdit; aComboBox: TComboBox; aStringGrid1: TStringGrid;
                                            aSpinEdit1, aSpinEdit2: TSpinEdit);
        procedure open_file;
        procedure close_file;
        procedure writing_file;
        procedure reading_file;
        function checking(author, title, publish: string;
                                             instance, year: integer): boolean;
     private
        edit1, edit2: TEdit;
        combobox1: TComboBox;
        stringGrid1: TStringGrid;
        spinedit1, spinedit2: TSpinEdit;

end;

implementation

uses Duplicate, Empty;

constructor Processing.Create(aEdit1, aEdit2: TEdit; aComboBox: TComboBox; aStringGrid1: TStringGrid;
                                            aSpinEdit1, aSpinEdit2: TSpinEdit);
  begin
    edit1 := aEdit1;
    edit2 := aEdit2;
    combobox1 := aComboBox;
    stringGrid1 := aStringGrid1;
    spinedit1 := aSpinEdit1;
    spinedit2:= aSpinEdit2;
  end;

function Processing.checking(author, title, publish: string;
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

procedure Processing.writing_file;
  begin
    if (edit1.text = '') or (edit2.text = '') or (combobox1.text = '') then
      Form6.Show
    else if checking(edit1.text, edit2.text, combobox1.text,
             spinedit1.value, spinedit2.value) then
        begin
          Seek(f, FileSize(f));
          book.author := edit1.text;
          book.title := edit2.text;
          book.publish := combobox1.text;
          book.instance := spinedit1.value;
          book.year := spinedit2.value;
          Write(f, book);
        end
    else
        begin
          Form5.Show;
          edit1.clear;
          edit2.clear;
          combobox1.text := '';
          spinedit1.value := 100;
          spinedit2.value := 2020;
        end;
  end;


procedure Processing.reading_file;
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

procedure Processing.open_file;
    begin
      if FileExists('D:\PracticCheck\book.txt') then
        begin
          AssignFile(f,'D:\PracticCheck\book.txt');
          reset(f);
        end;
    end;

procedure Processing.close_file;
    begin
      CloseFile(f);
    end;


end.
