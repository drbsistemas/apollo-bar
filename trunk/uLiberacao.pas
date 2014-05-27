unit uLiberacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit,
  cxLabel, cxButtons, ExtCtrls;

type
  TFormLibera = class(TForm)
    Panel1: TPanel;
    BitBtn2: TcxButton;
    BitBtn1: TcxButton;
    cxLabel1: TcxLabel;
    eSerial: TcxTextEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLibera: TFormLibera;

implementation

uses udmCad, Rotinas, uPrinc, uCon_Captcha, LoginWindow_U;

{$R *.dfm}

procedure TFormLibera.BitBtn1Click(Sender: TObject);
var
   descript : String;
   tamanho  : Integer;
begin
   Fcon_captcha := TFcon_Captcha.Create(selF);
   Fcon_captcha.ShowModal;
   if Fcon_Captcha.btnOk.Tag=0 then
      Abort;
   Fcon_Captcha.Free;
   if (trim(eSerial.Text)='') then
   begin
      MessageDlg('Digite um serial válido!', mtError, [mbOK], 0);
      abort;
   end;
   try
      descript := crypt('D',eSerial.Text);
      tamanho:=StrToInt(Copy(descript,17,3));
      if Copy(descript,1,16)<>'RBDANILOSISTEMAS' then
      begin
         MessageDlg('Licença Inválida!'+#13+'Contate o Suporte.',mtError,[mbok],0);
         application.terminate;
      end;
      if not dmCad.cdsConf.Active then
         dmcad.cdsConf.Active := true;
      dmCad.CdsConf.Edit;
      dmCad.cdsConfKEYGEN.AsString        := eSerial.Text;
      dmCad.cdsConfCNPJEMP.AsString       := (Copy(descript,(20+tamanho),14));
      dmcad.cdsConfQTDELIC.AsString       := (Copy(descript,(54+tamanho),3));
      dmcad.cdsConfVALIDADELIC.AsString   := (copy(descript,(44+tamanho),10));
      dmCad.cdsConf.Post;
      dmCad.CdsConf.ApplyUpdates(0);
      Application.Terminate;
      WinExec('PetClinic.exe',Sw_ShowNormal);
   except
      MessageDlg('Atenção! Liberação Inválida, Verifique!', mtWarning, [mbOK], 0);
      abort;
   end;
   close;
end;

procedure TFormLibera.BitBtn2Click(Sender: TObject);
begin
   if (Fprinc = NIl) or (Fprinc.Showing = false) then
      Application.Terminate else    // Verificar este terminate
      Close;
end;

procedure TFormLibera.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action := cafree;
   FormLibera := NIL;
end;

procedure TFormLibera.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TFormLibera.FormShow(Sender: TObject);
begin
   CarregaLyoutForm(FormLibera);
   eSerial.Clear;
   eSerial.SetFocus;
end;

end.
