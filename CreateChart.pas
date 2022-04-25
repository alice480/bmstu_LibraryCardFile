unit CreateChart;

interface

uses Vcl.StdCtrls, SysUtils, VCLTee.Chart;

Type
  ChartCreation = Class
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
        constructor Create(aChart: TChart);
        procedure open_file;
        procedure close_file;
        procedure qSort(var A: array of books; min, max: Integer);
        procedure DrawChart;
     private
        chart1: TChart;
  end;

implementation

constructor ChartCreation.Create(aChart: TChart);
  begin
    chart1 := aChart;
  end;

procedure ChartCreation.qSort(var A: array of books; min, max: Integer);
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

procedure ChartCreation.open_file;
    begin
      if FileExists('D:\PracticCheck\book.txt') then
        begin
          AssignFile(f,'D:\PracticCheck\book.txt');
          reset(f);
        end;
    end;

procedure ChartCreation.close_file;
    begin
      CloseFile(f);
    end;

procedure ChartCreation.DrawChart;
  var BooksSort: array[0..100] of books;
      years: array[0..122] of integer;
      inform: books;
      count: integer;
      i: integer;
  begin
    Seek(f, 0);
    count := 0;
    while (not EOF(f)) do
          begin
            read(f, book);
            inform.year := book.year;
            inform.instance := book.instance;
            BooksSort[count] := inform;
            count := count + 1;
          end;
    qSort(BooksSort, 0, count);
    //for i := 0 to 122 do years[i] := 0;

    //for i := 0 to count do
      //years[BooksSort[i].year - 1900] :=
                // years[BooksSort[i].year - 1900] + BooksSort[i].instance;

    {if 1900 < BooksSort[0].year then
      begin
        Chart1.Series[0].AddXY(1900, 0);
      end;  }
    {for i := 1900 to 2022 do
      begin
        Chart1.Series[0].AddXY(i, 0);
      end;   }
    Chart1.Series[0].AddXY(1900, 0);
    for i := 0 to count - 1 do
      Chart1.Series[0].AddXY(BooksSort[i].year, BooksSort[i].instance);
          //Chart1.Series[0].yValue[BooksSort[i].year] :=  Chart1.Series[0].yValue[BooksSort[i].year] +  BooksSort[i].instance;
    {for i := 0 to 122 do
      Chart1.Series[0].AddXY(i + 1900, years[i]);    }

    {if BooksSort[count - 1].year < 2022 then
      begin
        Chart1.Series[0].AddXY(BooksSort[count - 1].year + 1, 0);
        Chart1.Series[0].AddXY(2022, 0);
      end;  }


  end;


end.
