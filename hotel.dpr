program hotel;

uses
  Vcl.Forms,
  MenuUtama in 'MenuUtama.pas' {Form1},
  DataModule in 'DataModule.pas' {DataModule1: TDataModule},
  Checkin in 'Checkin.pas' {Form2},
  kamar in 'kamar.pas' {Form3},
  checkout in 'checkout.pas' {Form4},
  login in 'login.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
