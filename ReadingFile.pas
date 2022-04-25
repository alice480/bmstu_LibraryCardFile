unit ReadingFile;

interface

uses Vcl.StdCtrls, SysUtils;

Type
  Reading = Class
     public
      Type books = record
        title: string[20];
        author: string[20];
        publish: string[20];
        instance: integer;
        year: integer;
        end;
     public
        f: file of books;
        book: books;
        constructor Create(aMemo: TMemo);
        procedure open_file;
        procedure close_file;
        procedure InstSelection;
        procedure YearsSelection(year1, year2: integer);
        procedure PublishSelection(publish: string);
        procedure qSort(var A: array of books; min, max: Integer);
     private
        memo1: TMemo;
end;

implementation

constructor Reading.Create(aMemo: TMemo);
  begin
    memo1 := aMemo;
  end;

procedure Reading.YearsSelection(year1, year2: integer);
  var count: integer;
  begin
      memo1.Clear;
      Seek(f, 0);
      count := 0;
      while (not EOF(f)) do
          begin
            read(f, book);
            if (year1 <= book.year) and (book.year <= year2) then
              begin
                memo1.lines.add(book.author);
                count := count + 1;
              end;
          end;
      if count = 0 then
        memo1.lines.add('Данные, удовлетворяющие условию поиска, отсутствуют')
  end;

procedure Reading.InstSelection;
  var count: integer;
  begin
      memo1.Clear;
      Seek(f, 0);
      count := 0;
      while (not EOF(f)) do
          begin
            read(f, book);
            if (book.instance = 1) then
              begin
              memo1.lines.add(book.title + ' ' + book.author + ' ' +
                                book.publish + ' ' + IntToStr(book.year) + ' ' +
                                                       IntToStr(book.instance));
              count := count + 1;
              end;
          end;
      if count = 0 then
          memo1.lines.add('Данные, удовлетворяющие условию поиска, отсутствуют')
  end;

procedure Reading.qSort(var A: array of books; min, max: Integer);
  var i, j: Integer;
      supp, buf: books;
  begin
  supp := A[max - ((max - min) div 2)];
  i := min;
  j := max ;
  while i < j do
    begin
      while A[i].year < supp.year do i := i + 1;
      while A[j].year > supp.year do j := j - 1;
      if i <= j then
        begin
          buf :=A[i];
          A[i]:= A[j];
          A[j]:= buf;
          i := i + 1;
          j := j - 1;
        end;
    end;
  if min < j then qSort(A, min, j);
  if i < max then qSort(A, i, max);
  end;

procedure Reading.PublishSelection(publish: string);
  var BooksSort: array[0..100] of books;
    inform: books;
    index: integer;
  i: Integer;
  begin
    memo1.Clear;
    Seek(f, 0);
    index := 0;
    while (not EOF(f)) do
          begin
            read(f, book);
            if (book.publish = publish) then
              begin
                inform.title := book.title;
                inform.year := book.year;
                inform.publish := book.publish;
                BooksSort[index] := inform;
                index := index + 1;
              end;
          end;
    if index = 0 then
         memo1.lines.add('Данные, удовлетворяющие условию поиска, отсутствуют')
    else
      begin
        qSort(BooksSort, 0, index);
        for i := 0 to index + 1 do
          begin
            if BooksSort[i].publish = publish then
              begin
                memo1.lines.add('Название: ' + BooksSort[i].title);
                memo1.lines.add('Издательство: ' + BooksSort[i].publish);
                memo1.lines.add('Год выпуска: ' + IntToStr(BooksSort[i].year));
                memo1.lines.add('--------------------------------')
              end;
          end;
      end;
  end;

procedure Reading.open_file;
    begin
      if FileExists('D:\PracticCheck\book.txt') then
        begin
          AssignFile(f,'D:\PracticCheck\book.txt');
          reset(f);
        end;
    end;

procedure Reading.close_file;
    begin
      CloseFile(f);
    end;

end.
