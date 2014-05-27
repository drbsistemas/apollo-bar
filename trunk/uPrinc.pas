unit uPrinc;

interface

uses                
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxGDIPlusClasses, ExtCtrls, Menus, ComCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxStatusBarPainter, dxStatusBar, cxContainer, cxEdit, cxImage,
  StdCtrls, cxButtons, WinSkinData, dxSkinsdxBarPainter, dxBar, cxClasses,
  cxButtonEdit, cxBarEditItem, dxRibbon, cxGroupBox, dxsbar, cxHint,
  UCIdle, UCBase, UCDataConnector, RLConsts, TypInfo, pngimage,
  cxPC, pngextra, UCDBXConn;
                    
type
  TFPrinc = class(TForm)
    pnTop: TPanel;
    MainMenu1: TMainMenu;
    Usurios1: TMenuItem;
    LogOff1: TMenuItem;
    N1: TMenuItem;
    Cadastro1: TMenuItem;
    stHint: TPanel;
    StatusBar1: TdxStatusBar;
    pnImg2: TcxImage;
    pnimg: TcxImage;
    cxLookAndFeelController1: TcxLookAndFeelController;
    SkinData1: TSkinData;
    stBkp: TPanel;
    pnFundo: TPanel;
    cxFundo: TPanel;
    cxClientes: TcxButton;
    cxProd: TcxButton;
    cxBalcao: TcxButton;
    cxConta: TcxButton;
    cxReceber: TcxButton;
    cxPagar: TcxButton;
    cxEmpresa: TcxButton;
    cxSobre: TcxButton;
    cxSair: TcxButton;
    cxOutros: TcxButton;
    cxLibera: TcxButton;
    cxBkp: TcxButton;
    cxParam: TcxButton;
    cxrRel: TcxButton;
    atalhos1: TMenuItem;
    ConsultaProduto1: TMenuItem;
    ConsultadeClientes1: TMenuItem;
    UserControl1: TUserControl;
    UCControls1: TUCControls;
    Password1: TMenuItem;
    UCApplicationMessage1: TUCApplicationMessage;
    Historico1: TMenuItem;
    cxCompras: TcxButton;
    cxPedido: TcxButton;
    cxOrcamento: TcxButton;
    cxBalanco: TcxButton;
    cxVendedores: TcxButton;
    ConsultadeVendedores1: TMenuItem;
    cxMesas: TcxButton;
    UCDBXConn1: TUCDBXConn;
    ///// Privados
    procedure ShowHint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSobreClick(Sender: TObject);
    procedure dxBarLargeButton9Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure cxSairClick(Sender: TObject);
    procedure cxClientesClick(Sender: TObject);
    procedure cxProdClick(Sender: TObject);
    procedure cxSobreClick(Sender: TObject);
    procedure cxParamClick(Sender: TObject);
    procedure cxLiberaClick(Sender: TObject);
    procedure cxBkpClick(Sender: TObject);
    procedure cxEmpresaClick(Sender: TObject);
    procedure cxOutrosClick(Sender: TObject);
    procedure ConsultaProduto1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LogOff1Click(Sender: TObject);
    procedure ConsultadeClientes1Click(Sender: TObject);
    procedure cxrRelClick(Sender: TObject);
    procedure cxContaClick(Sender: TObject);
    procedure cxReceberClick(Sender: TObject);
    procedure cxPagarClick(Sender: TObject);
    procedure cxBalancoClick(Sender: TObject);
    procedure cxMesasClick(Sender: TObject);
    procedure cxVendedoresClick(Sender: TObject);
    procedure cxBalcaoClick(Sender: TObject);
    procedure ConsultadeVendedores1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PegaNomeForm(var Msg: TMsg; var Handled: Boolean);
    procedure cxPedidoClick(Sender: TObject);
    procedure cxOrcamentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrinc: TFPrinc;

implementation

uses udmCad, uSobre, Rotinas, uCad_Cliente, uCad_Empresa, uLiberacao,
  uCon_ItemPar, uCad_Prod, uCon_Generico, uCon_Prod, uCon_Clie,
  uCon_Relatorio, uCad_Caixa, uCad_Conta, uCad_Balanco, ucad_Mesa,
  uCad_Vendedor, uCad_Venda, uCad_Pedido;

{$R *.dfm}

procedure TFPrinc.ShowHint(Sender: TObject);
begin
  if Length(Application.Hint) > 0 then
    stHint.caption := Application.Hint
  else
    StHint.caption := '';
end;

procedure TFPrinc.FormShow(Sender: TObject);
var
   j: integer;
begin
   FCorSelec := $0097E6FD;
   FCorLista := clBtnFace;//$0000002D; //$00F1EDE9;

   CarregaLyoutForm(Fprinc);
///// Parametriza dados simples
   Application.OnHint := ShowHint;
   FPrinc.OnResize(self);

   FPrinc.StatusBar1.Panels[0].Text := 'Empresa: '+dmcad.cdsConfRAZAOEMP.AsString;

//// VErifica Backup
   if dmcad.cdsConfDATABACKUP.AsDatetime <= (Now - 3) then
      stBkp.Visible:=true;

///// Carrega Imagens
   try
      pnImg.Picture.LoadFromFile(dmCad.cdsConfPASTASERVIDOR.ASString +'\immagini\presto.png');
      pnImg2.Picture.LoadFromFile(dmCad.cdsConfPASTASERVIDOR.ASString +'\immagini\presto_.png');
   except
      Msg('Imagem "Presto.png e Presto_.png" não encontradas, verifique!','I');
   end;

///// Deixa os botoes sem bordas  (retirado por enquanto para ficar mais visual)
{   for j := 0 to Fprinc.ComponentCount - 1 do
   begin
      if (FPrinc.Components[j] is TcxButton) then
      (FPrinc.Components[j] as TcxButton).SpeedButtonOptions.CanBeFocused := false;
   end; }
end;

procedure TFPrinc.Sair1Click(Sender: TObject);
begin
   close;
end;

procedure TFPrinc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if FormAtivo <> NIL then
   begin
      MessageDlg('Atenção! Existe telas em aberto, feche para finalizar o software!', mtConfirmation, [mbOK], 0);
      abort;
   end;
   if Msg('Deseja realmente sair do sistema?', 'P') then // 'I'nfo / 'P'ergunta
      Application.Terminate
   else
      Abort;
end;

procedure TFPrinc.btnSobreClick(Sender: TObject);
begin
   FSobre := TFSobre.Create(self);
   FSobre.ShowModal;
end;

procedure TFPrinc.dxBarLargeButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TFPrinc.FormResize(Sender: TObject);
begin
///// Redimensiona os botoões para ficar no meio do form
   if (FPrinc.WindowState = wsMaximized) and (FOrmAtivo=nil) then
      pnfundo.Width := (FPrinc.ClientWidth div 2)-400;
end;

procedure TFPrinc.cxSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFPrinc.cxClientesClick(Sender: TObject);
begin
   ExecutaForm(TFcad_Cliente, Fcad_Cliente);
end;

procedure TFPrinc.cxProdClick(Sender: TObject);
begin
   ExecutaForm(TFCad_Prod, Fcad_Prod);
end;

procedure TFPrinc.cxSobreClick(Sender: TObject);
begin
   FSobre := TFSobre.Create(self);
   FSobre.ShowModal;
end;

procedure TFPrinc.cxParamClick(Sender: TObject);
begin
   ExecutaForm(TFcon_ItemPar, Fcon_ItemPar);
end;

procedure TFPrinc.cxLiberaClick(Sender: TObject);
begin
   FormLibera := TFormLibera.Create(self);
   FormLibera.ShowMOdal;
end;

procedure TFPrinc.cxBkpClick(Sender: TObject);
var   backup :PAnsiChar;
begin
   backup := PAnsiChar(dmcad.cdsConfPROGRAMABACKUP.AsString);
   if dmcad.SqlCon.Connected=true then
      if Msg('Atenção! Se Algum Usuário Estiver No Sistema Este Será Fechado! Deseja Continuar com o Backup?', 'P') then
      begin
         if not FileExists(dmcad.cdsConfPROGRAMABACKUP.AsString) then
            Msg('Sistema De Backup Não Encontrato, Contate Suporte!', 'I')
         else
         begin
            try
               WinExec(backup,Sw_ShowNormal);
            finally
               dmcad.cdsCOnf.First;
               dmcad.cdsconf.Edit;
               dmcad.cdsConfDATABACKUP.AsDateTime := Now;
               dmcad.cdsconf.Post;
               dmcad.cdsconf.ApplyUpdates(0);
               Application.Terminate;
            end;
         end;
      end;
end;

procedure TFPrinc.cxEmpresaClick(Sender: TObject);
begin
   ExecutaForm(TFcad_Empresa, Fcad_Empresa);
end;

procedure TFPrinc.cxOutrosClick(Sender: TObject);
begin
   Fcon_Generico := TFcon_Generico.Create(self);
   Fcon_Generico.AbreCom('CAD');
   Fcon_Generico.cxVoltar.Caption := '&Fechar';
   Fcon_Generico.ShowModal;
end;

procedure TFPrinc.ConsultaProduto1Click(Sender: TObject);
begin
   Fcon_Prod := TFcon_Prod.Create(self);
   Fcon_PRod.ShowMOdal;
end;

procedure TFPrinc.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (key = vK_F10) or (key = vk_escape) then
      Close;
end;

procedure TFPrinc.LogOff1Click(Sender: TObject);
begin
   UserControl1.Logoff;
end;

procedure TFPrinc.ConsultadeClientes1Click(Sender: TObject);
begin
   Fcon_Cliente := TFcon_Cliente.Create(self);
   Fcon_CLiente.ShowMOdal;
end;

procedure TFPrinc.cxrRelClick(Sender: TObject);
begin
   ExecutaForm(TFcon_Relatorio, Fcon_Relatorio);
end;

procedure TFPrinc.cxContaClick(Sender: TObject);
begin
   ExecutaForm(TFcad_Caixa, Fcad_Caixa);
end;

procedure TFPrinc.cxReceberClick(Sender: TObject);
begin
   StrTipoCOnta:= 'R'; // Receber
   ExecutaForm(TFcad_Conta, Fcad_Conta);
end;

procedure TFPrinc.cxPagarClick(Sender: TObject);
begin
   StrTipoCOnta:= 'P'; // Pagar
   ExecutaForm(TFcad_Conta, Fcad_Conta);
end;

procedure TFPrinc.cxBalancoClick(Sender: TObject);
begin
   ExecutaFOrm(TFcad_Balanco, Fcad_Balanco);
end;


procedure TFPrinc.cxMesasClick(Sender: TObject);
begin
   ExecutaForm(TFcad_Mesa, Fcad_Mesa);
end;

procedure TFPrinc.cxVendedoresClick(Sender: TObject);
begin
   Fcad_Vendedor := TFcad_Vendedor.Create(self);
   Fcad_Vendedor.AbreCOm('CAD');
   Fcad_Vendedor.ShowModal;
end;

procedure TFPrinc.cxBalcaoClick(Sender: TObject);
begin
   ExecutaForm(TFcad_Venda, Fcad_Venda);
end;

procedure TFPrinc.ConsultadeVendedores1Click(Sender: TObject);
begin
   Fcad_Vendedor := TFcad_Vendedor.Create(self);
   Fcad_vendedor.AbreCom('CON');
   Fcad_Vendedor.ShowMOdal;
   Fcad_Vendedor.Free;
end;

procedure TFPrinc.FormCreate(Sender: TObject);
begin
///// Abre os PArametros (NAO DAR CLOSE EM NENHUM MOMENTO)
   if not dmcAd.cdsItemConf.Active=true then
      dmCad.cdsConf.ACtive:=true;

   FormAtivo := Nil;
   UserControl1.StartLogin;
   Application.OnMessage := PegaNomeForm;
end;

///// FOrtes Reports com versão diferente;
procedure TFPrinc.PegaNomeForm(var Msg: TMsg; var Handled: Boolean);
var
   Rect: TRect;
   TD: PTypeData;
begin
   if (msg.message = VK_SHIFT) and (msg.Message = WM_RBUTTONDOWN) then
   begin
      TD := GetTypeData(Screen.ActiveForm.ClassInfo);
      ShowMessage('Titulo: '+Screen.ActiveForm.Caption +#13+
          'Form.: '+Screen.ActiveForm.Name+#13+
          'Unit...:'+TD^.UnitName);
   end;
end;

procedure TFPrinc.cxPedidoClick(Sender: TObject);
begin
   StrTipoCOnta:= 'P'; // Pedido
   ExecutaForm(TFcad_Pedido, Fcad_Pedido);
end;

procedure TFPrinc.cxOrcamentoClick(Sender: TObject);
begin
   StrTipoCOnta:= 'O'; // Orçamento
   ExecutaForm(TFcad_Pedido, Fcad_Pedido);
end;

initialization
   RLConsts.SetVersion(3,70,'B');

end.
