program Card_file_project;

uses
  Vcl.Forms,
  Card in 'Card.pas' {Form1},
  FileWork in 'FileWork.pas',
  Menu in 'Menu.pas' {Form2},
  Single in 'Single.pas' {Form3},
  ReadingFile in 'ReadingFile.pas',
  AuthorsList in 'AuthorsList.pas' {Form4},
  Duplicate in 'Duplicate.pas' {Form5},
  Empty in 'Empty.pas' {Form6},
  DeleteCard in 'DeleteCard.pas' {Form7},
  IncorrectLimits in 'IncorrectLimits.pas' {Form8},
  Chronology in 'Chronology.pas' {Form9},
  Chart in 'Chart.pas' {Form10},
  CreateChart in 'CreateChart.pas',
  DeleteSelected in 'DeleteSelected.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.Run;
end.
