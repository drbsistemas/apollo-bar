program wBackup;

uses
  Forms,
  uBackup in 'uBackup.pas' {Formbackup};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormbackup, Formbackup);
  Application.Run;
end.
