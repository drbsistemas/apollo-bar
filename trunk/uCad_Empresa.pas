unit uCad_Empresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxLabel, dxSkinsdxBarPainter, dxBar,
  cxClasses, cxMaskEdit, cxButtonEdit, ExtCtrls, ComCtrls, ShlObj,
  cxShellCommon, cxDropDownEdit, cxShellComboBox, cxImageComboBox, Menus,
  StdCtrls, cxButtons, cxGroupBox, cxPC,
  NFe_Util_2G_TLB; // acrescentar essa linha no use da unit para NF-E DLL;

type
  TFcad_Empresa = class(TForm)
    cxMenuCad: TcxGroupBox;
    cxSalvar: TcxButton;
    cxFechar: TcxButton;
    pnCad: TcxGroupBox;
    eCodigo: TcxTextEdit;
    eRazao: TcxTextEdit;
    eFantasia: TcxTextEdit;
    eCnpj: TcxMaskEdit;
    eIe: TcxMaskEdit;
    eEndereco: TcxTextEdit;
    eNum: TcxTextEdit;
    eBairro: TcxTextEdit;
    eCidade: TcxButtonEdit;
    cxLabel10: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel7: TcxLabel;
    eUf: TcxTextEdit;
    cxLabel11: TcxLabel;
    eCep: TcxMaskEdit;
    eContato: TcxTextEdit;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    eFone: TcxMaskEdit;
    eFax: TcxMaskEdit;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    eMail: TcxTextEdit;
    cxLabel16: TcxLabel;
    eSite: TcxTextEdit;
    cxPage: TcxPageControl;
    cxEmail: TcxTabSheet;
    cxEspecificos: TcxTabSheet;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    eDataBkp: TcxTextEdit;
    cxLabel20: TcxLabel;
    eDataLic: TcxTextEdit;
    eQtdeLic: TcxTextEdit;
    cxLabel21: TcxLabel;
    cbLogo: TcxShellComboBox;
    eBackup: TcxShellComboBox;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    ePastaServidor: TcxShellComboBox;
    cxLabel17: TcxLabel;
    eHost: TcxTextEdit;
    eUsuario: TcxTextEdit;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    eSenha: TcxTextEdit;
    cbSSL: TcxComboBox;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    ePorta: TcxTextEdit;
    cxValidar: TcxButton;
    ///// Privados
    procedure Consulta;
    /////
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxFecharClick(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
    procedure cxValidarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcad_Empresa: TFcad_Empresa;

implementation

uses Rotinas, udmCad, DB;

{$R *.dfm}

procedure TFcad_Empresa.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then Close;
   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TFcad_Empresa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   PFundo(1);
   FormAtivo      := Nil;
   Fcad_Empresa   := Nil;
   Action         := caFree;
end;

procedure TFcad_Empresa.FormResize(Sender: TObject);
begin
   pncad.Left        := (Fcad_Empresa.ClientWidth div 2)-260;
end;

procedure TFcad_Empresa.FormShow(Sender: TObject);
begin
   CarregaLyoutForm(Fcad_Empresa);
   Consulta;
   FormAtivo := Fcad_Empresa;
end;

procedure TFcad_Empresa.Consulta;
begin
   cxPage.ActivePage := cxEspecificos;   
   dmcad.cdsConf.IndexName := '';
   dmCad.cdsCOnf.Close;
   dmCad.cdsConf.COmmandText := 'select * from CONF';
   dmCad.CdsCOnf.Open;
   dmcad.cdsCOnf.First;
///// inicio Edição
   eCodigo.TExt         := dmCad.cdsConfIDCONF.AsString;
   eRazao.TExt          := dmcad.cdsConfRAZAOEMP.AsString;
   eFantasia.TExt       := dmCad.cdsConfFANTASIAEMP.AsString;
   eCnpj.Text           := dmcad.cdsConfCNPJEMP.AsString;
   eIe.Text             := dmcad.cdsConfIEEMP.AsString;
   eEndereco.Text       := dmCad.cdsConfENDERECOEMP.AsString;
   eNum.TExt            := dmcad.cdsConfNUMEROEMP.AsString;
   eBairro.Text         := dmcad.cdsConfBAIRROEMP.AsString;
   eCep.TExt            := dmcad.cdsConfCEPEMP.AsString;
   eUf.TExt             := dmcad.cdsConfUFEMP.AsString;
   eCidade.TExt         := dmcad.cdsConfCIDADEEMP.AsString;
   eContato.TExt        := dmcad.cdsConfCONTATOEMP.AsString;
   eFone.TExt           := dmcad.cdsConfFONEEMP.AsString;
   eFax.text            := dmCad.cdsConfFAXEMP.AsString;
   eMail.TExt           := dmcad.cdsConfEMAILEMP.ASString;
   eSite.TExt           := dmcad.cdsConfSITEEMP.AsString;
   cbLogo.Text          := dmcad.cdsConfLOGOEMP.AsString;
   eDataBkp.Text        := dmcad.cdsConfDATABACKUP.AsString;
   eDataLic.Text        := dmcad.cdsConfVALIDADELIC.AsString;
   eQtdeLic.TExt        := dmcad.cdsConfQTDELIC.ASString;
   ///// Email
   eHost.Text           := dmcad.cdsCOnfHOSTEMAIL.AsString;
   eSenha.Text          := dmcad.cdsCOnfSENHAEMAIL.AsString;
   eUsuario.Text        := dmcad.cdsCOnfUSUARIOEMAIL.ASString;
   ePorta.Text          := IntTOStr(dmcad.cdsCOnfPORTAEMAIL.AsInteger);
   cbSSL.ItemIndex      := (dmcad.cdsCOnfSSLEMAIL.ASInteger);
   /////

   ///// Demora para carregar
   eBackup.Text         := dmcad.cdsConfPROGRAMABACKUP.AsString;
   ePastaServidor.TExt  := dmcad.cdsCOnfPASTASERVIDOR.AsString;
   /////
///// Fim
end;

procedure TFcad_Empresa.cxFecharClick(Sender: TObject);
begin
   close;
end;

procedure TFcad_Empresa.cxSalvarClick(Sender: TObject);
begin
   if dmCad.cdsCONf.RecordCount<1 then
      dmCad.cdsConf.Insert else
      dmCad.cdsConf.Edit;

   dmCad.cdsConfIDCONF.AsString        := eCodigo.TExt;
   dmcad.cdsConfRAZAOEMP.AsString      := eRazao.TExt;
   dmCad.cdsConfFANTASIAEMP.AsString   := eFantasia.TExt;
   dmcad.cdsConfCNPJEMP.AsString       := eCnpj.Text;
   dmcad.cdsConfIEEMP.AsString         := eIe.Text;
   dmCad.cdsConfENDERECOEMP.AsString   := eEndereco.Text;
   dmcad.cdsConfNUMEROEMP.AsString     := eNum.TExt;
   dmcad.cdsConfBAIRROEMP.AsString     := eBairro.Text;
   dmcad.cdsConfCEPEMP.AsString        := eCep.TExt;
   dmcad.cdsConfUFEMP.AsString         := eUf.TExt;
   dmcad.cdsConfCIDADEEMP.AsString     := eCidade.TExt;
   dmcad.cdsConfCONTATOEMP.AsString    := eContato.TExt;
   dmcad.cdsConfFONEEMP.AsString       := eFone.TExt;
   dmCad.cdsConfFAXEMP.AsString        := eFax.text;
   dmcad.cdsConfEMAILEMP.ASString      := eMail.TExt;
   dmcad.cdsConfSITEEMP.AsString       := eSite.TExt;
   dmcad.cdsConfLOGOEMP.AsString       := cbLogo.Text;
   dmcad.cdsConfDATABACKUP.AsString    := eDataBkp.Text;
   dmcad.cdsConfVALIDADELIC.AsString   := eDataLic.Text;
   dmcad.cdsConfQTDELIC.ASString       := eQtdeLic.TExt;
   dmcad.cdsConfPROGRAMABACKUP.AsString:= eBackup.Text;
   dmcad.cdsCOnfPASTASERVIDOR.AsString := ePastaServidor.TExt;
   ///// Email
   dmcad.cdsCOnfHOSTEMAIL.AsString     := eHost.Text;
   dmcad.cdsCOnfSENHAEMAIL.AsString    := eSenha.Text;
   dmcad.cdsCOnfUSUARIOEMAIL.ASString  := eUsuario.Text;
   dmcad.cdsCOnfPORTAEMAIL.AsInteger   := StrToint(ePorta.Text);
   dmcad.cdsCOnfSSLEMAIL.ASInteger     := (cbSSL.ItemIndex);
   /////
   try
      dmcad.cdsConf.Post;
      dmcad.cdsConf.ApplyUpdates(0);
      Close;
   except
      dmcad.cdsConf.CancelUpdates;
   end;
end;

procedure TFcad_Empresa.cxValidarClick(Sender: TObject);
var
   Util: NFe_Util_2G_Interface; // declarar a interface da DLL
begin
   Util := NFe_Util_2G_TLB.CoUtil.Create; // instancia DLL
   MessageDlg('A versão da DLL NFe_Util_2G em uso é: ' + Util.Versao, mtInformation, [mbOk], 0);

   Util := nil;
end;

end.
