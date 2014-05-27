unit uBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ToolEdit, ExtCtrls, IniFiles;

type
  TFormbackup = class(TForm)
    pnCad: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    eBaseDados: TEdit;
    eDestino: TFilenameEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    eBaseRel: TEdit;
    Label4: TLabel;
    eBaseXml: TEdit;
    cbUsaDados: TCheckBox;
    cbUsaRel: TCheckBox;
    cbUsaXml: TCheckBox;
    Label5: TLabel;
    eWinrar: TFilenameEdit;
    OpenWinrar: TOpenDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure GravaIniBkp(arq,secao,chave,dado:String);
    function LeIniBkp(arq,secao,chave:String):String;
    procedure cbUsaDadosClick(Sender: TObject);
    procedure cbusaRelClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    wCaminho, wDestino: String;
  public
    { Public declarations }
  end;

var
  Formbackup: TFormbackup;

implementation

{$R *.dfm}

function TFormbackup.LeIniBkp(arq,secao,chave:String): String;
var
  dadoini:TIniFile;
begin
  Dadoini:=TiniFile.Create(ExtractFilePath(Application.ExeName) + '\Backup.INI');
  result:=Dadoini.ReadString(secao,chave,'');
end;

procedure TFormbackup.GravaIniBkp(arq,secao,chave,dado:String);
var
  dadoini:TIniFile;
begin
  try
     Dadoini := TiniFile.Create(ExtractFilePath(Application.ExeName) + '\Backup.INI');
     Dadoini.WriteString(secao,chave,dado);
//     Dadoini.WriteString(secao,chave,dado);
     Dadoini.Free;
  except
     MessageDlg('Não foi possível gravar os Parametros na pasta '+ExtractFilePath(Application.ExeName) + '\Backup.INI'+'!'+#13+'Por favor verifique.',mtWarning,[mbok],0);
  end;
end;

procedure TFormbackup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if CbUsaDados.Checked=true then GravaIniBkp('BKP','USA','cbUsaDados','1')
   else
      GravaIniBkp('BKP','USA','cbUsaDados','0');
   if CbUsaRel.Checked=true then GravaIniBkp('BKP','USA','cbUsaRel','1')
   else
      GravaIniBkp('BKP','USA','cbUsaRel','0');
   if CbUsaXml.Checked=true then GravaIniBkp('BKP','USA','cbUsaXml','1')
   else
      GravaIniBkp('BKP','USA','cbUsaXml','0');
   GravaIniBkp('BKP','BACKUP','PROGRAMA',eWinrar.Text);
   GravaIniBkp('BKP','BACKUP','DESTINOBASE',eDestino.Text);   
   action:= caFree;
end;

procedure TFormbackup.FormShow(Sender: TObject);
begin
   cbUsaDados.Checked := false;
   cbUsaRel.Checked   := false;
   cbUsaXml.Checked   := false;
   eDestino.Clear;
   if StrToint(LeIniBkp('BKP','USA','cbUsaDados'))=1 then cbUsaDados.Checked := true;
   if StrToint(LeIniBkp('BKP','USA','cbUsaRel'))=1   then CbUsaRel.Checked := true;
   if StrToint(LeIniBkp('BKP','USA','cbUsaXml'))=1   then cbUsaXml.Checked := true;
   try
      eBaseDados.Text := LeIniBkp('BKP','BACKUP','BASEDADOS');
      eBaseRel.Text   := LeIniBkp('BKP','BACKUP','BASEREL');
      eBaseXml.Text   := LeIniBkp('BKP','BACKUP','BASEXML');
      eWinrar.Text    := LeIniBkp('BKP','BACKUP','PROGRAMA');
      eDestino.TExt   := LeIniBkp('BKP','BACKUP','DESTINOBASE');
   except
      ShowMessage('Atenção! Backup Não Configurado, Contate Suporte!');
      close;
   end;
   eDestino.SetFocus;
end;

procedure TFormbackup.BitBtn1Click(Sender: TObject);
var localexebackup: String;
begin
   wCaminho := eDestino.Text;
   if trim(wCaminho)='' then
      wCaminho:=ExtractFilePath(Application.ExeName)+'BACKUP-'+FormatDateTime('yyyymmdd',now);
   wCaminho := wCaminho +'BACKUP-'+FormatDateTime('yyyymmdd',now);
/////////////////////////////////////////////////////////////////////////////////////Backup de BASE de DADOS.
   if not DirectoryExists(wCaminho) then
      ForceDirectories(wCaminho);
   if CbUsaDados.Checked then
   begin
      localexebackup := eWinrar.Text;
      wDestino  := wCaminho+'\BANCO-'+FormatDateTime('HHMM',now)+'.RAR';
      if not fileexists(localexebackup) then
      begin
         MessageDlg('Não foi encontrado o programa WINRAR para efetuar o Backup!'+#13+
                    'Informe o caminho correto.',mtError,[mbok],0);
         openWinrar.Execute;
         ewinrar.FileName := OpenWinrar.FileName;
         close;
      end;
      if copy(eDestino.text,1,1)='A' then
         WinExec(Pchar(localexebackup+' A -VD -EP -V1440 '+wDestino+' '+eBaseDados.text),SW_SHOW) else
         WinExec(Pchar(localexebackup+' A -EP '+wDestino+' '+eBaseDados.text),SW_SHOW);
      ShowMessage('Backup de Base De Dados Concluído Com Sucesso!');
   end;
/////////////////////////////////////////////////////////////////////////////////////Backup de BASE de RELATORIOS.
   if CbUsaRel.Checked then
   begin
      localexebackup := eWinrar.Text;
      wDestino       := wCaminho+'\RELATORIOS-'+FormatDateTime('HHMM',now)+'.RAR';
      if not fileexists(localexebackup) then
      begin
         MessageDlg('Não foi encontrado o programa WINRAR para efetuar o Backup!'+#13+
                    'Informe o caminho correto.',mtError,[mbok],0);
         close;
      end;
      if copy(eDestino.text,1,1)='A' then
         WinExec(Pchar(localexebackup+' A -VD -EP -V1440 '+wDestino+' '+eBaseRel.text),SW_SHOW) else
         WinExec(Pchar(localexebackup+' A -EP '+wDestino+' '+eBaseRel.text),SW_SHOW);
      ShowMessage('Backup de Relatórios Concluído Com Sucesso!');
   end;
/////////////////////////////////////////////////////////////////////////////////////Backup de BASE de XML.
   if CbUsaXml.Checked then
   begin
      localexebackup := eWinrar.Text;
      wDestino       := wCaminho+'\XML-'+FormatDateTime('HHMM',now)+'.RAR';
      if not fileexists(localexebackup) then
      begin
         MessageDlg('Não foi encontrado o programa WINRAR para efetuar o Backup!'+#13+
                    'Informe o caminho correto.',mtError,[mbok],0);
         close;
      end;
      if copy(eDestino.text,1,1)='A' then
         WinExec(Pchar(localexebackup+' A -VD -EP -V1440 '+wDestino+' '+eBaseXml.text),SW_SHOW) else
         WinExec(Pchar(localexebackup+' A -EP '+wDestino+' '+eBaseXml.text),SW_SHOW);
      ShowMessage('Backup de Xml de NF-E Concluído Com Sucesso!');
   end;
   GravaIniBkp('BKP','BACKUP','DestinoBase',wCaminho);
   Close;
end;

procedure TFormbackup.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TFormbackup.cbUsaDadosClick(Sender: TObject);
begin
   eDestino.Clear;
   eDestino.Text := LeIniBkp('BKP','BACKUP','DestinoBase');
end;

procedure TFormbackup.cbusaRelClick(Sender: TObject);
begin
   eDestino.Clear;
   eDestino.Text := LeIniBkp('BKP','BACKUP','DestinoRel');
end;

procedure TFormbackup.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then Close;
   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

end.
