program POO;

uses
  System.StartUpCopy,
  FMX.Forms,
  POO.View.FrmMain in 'view\POO.View.FrmMain.pas' {FrmMain},
  POO.View.FrmTest1 in 'view\POO.View.FrmTest1.pas' {FrmTest1},
  Classe.Pessoa in 'Classe.Pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmTest1, FrmTest1);
  Application.Run;
end.
