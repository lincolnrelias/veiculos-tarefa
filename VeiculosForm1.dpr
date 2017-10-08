program VeiculosForm1;

uses
  Vcl.Forms,
  VeiculosForm in 'VeiculosForm.pas' {Form1},
  VeiculosU in 'VeiculosU.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
