unit ucad_Mesa;

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
  dxSkinXmas2008Blue, Menus, StdCtrls, cxButtons, cxTextEdit, cxGroupBox,
  cxLabel, ExtCtrls, RXCtrls, Buttons, cxCurrencyEdit, cxMaskEdit,
  cxButtonEdit, cxMemo, cxRichEdit, dxGDIPlusClasses, cxImage, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Grids, DBGrids;

type
  TFcad_Mesa = class(TForm)
    pnCon: TcxGroupBox;
    cxCentro: TcxGroupBox;
    Panel1: TPanel;
    cxButton1: TcxButton;
    Panel2: TPanel;
    cxButton2: TcxButton;
    Panel3: TPanel;
    cxButton3: TcxButton;
    Panel4: TPanel;
    cxButton4: TcxButton;
    Panel5: TPanel;
    cxButton5: TcxButton;
    Panel6: TPanel;
    cxButton6: TcxButton;
    Panel7: TPanel;
    cxButton7: TcxButton;
    Panel8: TPanel;
    cxButton8: TcxButton;
    Panel9: TPanel;
    cxButton9: TcxButton;
    Panel10: TPanel;
    cxButton10: TcxButton;
    Panel11: TPanel;
    cxButton11: TcxButton;
    Panel12: TPanel;
    cxButton12: TcxButton;
    Panel13: TPanel;
    cxButton13: TcxButton;
    Panel14: TPanel;
    cxButton14: TcxButton;
    Panel15: TPanel;
    cxButton15: TcxButton;
    Panel16: TPanel;
    cxButton16: TcxButton;
    Panel17: TPanel;
    cxButton17: TcxButton;
    Panel18: TPanel;
    cxButton18: TcxButton;
    Panel19: TPanel;
    cxButton19: TcxButton;
    Panel20: TPanel;
    cxButton20: TcxButton;
    Panel21: TPanel;
    cxButton21: TcxButton;
    Panel22: TPanel;
    cxButton22: TcxButton;
    Panel23: TPanel;
    cxButton23: TcxButton;
    Panel24: TPanel;
    cxButton24: TcxButton;
    Panel25: TPanel;
    cxButton25: TcxButton;
    Panel26: TPanel;
    cxButton26: TcxButton;
    Panel27: TPanel;
    cxButton27: TcxButton;
    Panel28: TPanel;
    cxButton28: TcxButton;
    Panel29: TPanel;
    cxButton29: TcxButton;
    Panel30: TPanel;
    cxButton30: TcxButton;
    Panel31: TPanel;
    cxButton31: TcxButton;
    Panel32: TPanel;
    cxButton32: TcxButton;
    Panel33: TPanel;
    cxButton33: TcxButton;
    Panel34: TPanel;
    cxButton34: TcxButton;
    Panel35: TPanel;
    cxButton35: TcxButton;
    Panel36: TPanel;
    cxButton36: TcxButton;
    Panel37: TPanel;
    cxButton37: TcxButton;
    Panel38: TPanel;
    cxButton38: TcxButton;
    Panel39: TPanel;
    cxButton39: TcxButton;
    Panel40: TPanel;
    cxButton40: TcxButton;
    Panel41: TPanel;
    cxButton41: TcxButton;
    Panel42: TPanel;
    cxButton42: TcxButton;
    Panel43: TPanel;
    cxButton43: TcxButton;
    Panel44: TPanel;
    cxButton44: TcxButton;
    Panel45: TPanel;
    cxButton45: TcxButton;
    Panel46: TPanel;
    cxButton46: TcxButton;
    Panel47: TPanel;
    cxButton47: TcxButton;
    Panel48: TPanel;
    Panel49: TPanel;
    cxButton49: TcxButton;
    Panel50: TPanel;
    cxButton50: TcxButton;
    Panel51: TPanel;
    cxButton51: TcxButton;
    Panel52: TPanel;
    cxButton52: TcxButton;
    Panel53: TPanel;
    cxButton53: TcxButton;
    Panel54: TPanel;
    cxButton54: TcxButton;
    Panel55: TPanel;
    cxButton55: TcxButton;
    Panel56: TPanel;
    cxButton56: TcxButton;
    Panel57: TPanel;
    cxButton57: TcxButton;
    Panel58: TPanel;
    cxButton58: TcxButton;
    Panel59: TPanel;
    cxButton59: TcxButton;
    Panel60: TPanel;
    cxButton60: TcxButton;
    Panel61: TPanel;
    cxButton61: TcxButton;
    Panel62: TPanel;
    cxButton62: TcxButton;
    Panel63: TPanel;
    cxButton63: TcxButton;
    Panel64: TPanel;
    cxButton64: TcxButton;
    Panel65: TPanel;
    cxButton65: TcxButton;
    Panel66: TPanel;
    cxButton66: TcxButton;
    Panel67: TPanel;
    cxButton67: TcxButton;
    Panel68: TPanel;
    cxButton68: TcxButton;
    Panel69: TPanel;
    cxButton69: TcxButton;
    Panel70: TPanel;
    cxButton70: TcxButton;
    Panel71: TPanel;
    cxButton71: TcxButton;
    Panel72: TPanel;
    cxButton72: TcxButton;
    Panel73: TPanel;
    cxButton73: TcxButton;
    Panel74: TPanel;
    cxButton74: TcxButton;
    Panel75: TPanel;
    cxButton75: TcxButton;
    Panel76: TPanel;
    cxButton76: TcxButton;
    Panel77: TPanel;
    cxButton77: TcxButton;
    Panel78: TPanel;
    cxButton78: TcxButton;
    Panel79: TPanel;
    cxButton79: TcxButton;
    Panel80: TPanel;
    cxButton80: TcxButton;
    Panel81: TPanel;
    cxButton81: TcxButton;
    Panel82: TPanel;
    cxButton82: TcxButton;
    Panel83: TPanel;
    cxButton83: TcxButton;
    Panel84: TPanel;
    cxButton84: TcxButton;
    Panel85: TPanel;
    cxButton85: TcxButton;
    Panel86: TPanel;
    cxButton86: TcxButton;
    Panel87: TPanel;
    cxButton87: TcxButton;
    Panel88: TPanel;
    cxButton88: TcxButton;
    Panel89: TPanel;
    cxButton89: TcxButton;
    Panel90: TPanel;
    cxButton90: TcxButton;
    Panel91: TPanel;
    cxButton91: TcxButton;
    Panel92: TPanel;
    cxButton92: TcxButton;
    Panel93: TPanel;
    cxButton93: TcxButton;
    Panel94: TPanel;
    cxButton94: TcxButton;
    Panel95: TPanel;
    cxButton95: TcxButton;
    Panel96: TPanel;
    cxButton96: TcxButton;
    Panel97: TPanel;
    cxButton97: TcxButton;
    Panel98: TPanel;
    cxButton98: TcxButton;
    Panel99: TPanel;
    cxButton99: TcxButton;
    Panel100: TPanel;
    cxButton100: TcxButton;
    Panel101: TPanel;
    cxButton101: TcxButton;
    Panel102: TPanel;
    cxButton102: TcxButton;
    Panel103: TPanel;
    cxButton103: TcxButton;
    Panel104: TPanel;
    cxButton104: TcxButton;
    Panel105: TPanel;
    cxButton105: TcxButton;
    pnCad: TcxGroupBox;
    Timer1: TTimer;
    cxButton48: TcxButton;
    cxMeio: TcxGroupBox;
    cxGroupBox9: TcxGroupBox;
    cxImage: TcxImage;
    cxGroupBox10: TcxGroupBox;
    cxEnter: TcxButton;
    cxButton106: TcxButton;
    cxButton107: TcxButton;
    cxButton108: TcxButton;
    cxButton109: TcxButton;
    cxButton110: TcxButton;
    cxButton111: TcxButton;
    cxButton112: TcxButton;
    cxButton113: TcxButton;
    cxButton114: TcxButton;
    cxButton115: TcxButton;
    cxButton116: TcxButton;
    pnValor: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    eCodProd: TcxButtonEdit;
    eQtde: TcxCurrencyEdit;
    eUn: TcxTextEdit;
    eVlrUnit: TcxCurrencyEdit;
    cxGroupBox5: TcxGroupBox;
    eVlrTotal: TcxCurrencyEdit;
    cxGroupBox6: TcxGroupBox;
    cxGroupBox7: TcxGroupBox;
    eTotalVenda: TcxCurrencyEdit;
    ecodProduto: TcxTextEdit;
    eRef: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox1: TcxGroupBox;
    cxMSg: TcxLabel;
    pnBotoes: TcxGroupBox;
    cxButton117: TcxButton;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxSalvar: TcxButton;
    cxCancItem: TcxButton;
    cxImprimir: TcxButton;
    eCodigo: TcxTextEdit;
    eCliente: TcxTextEdit;
    eCodClie: TcxButtonEdit;
    eUsuario: TcxTextEdit;
    cxVoltar: TcxButton;
    cxItem: TcxGroupBox;
    cxCancMesa: TcxButton;
    eCodMesa: TcxTextEdit;
    cxGroupBox11: TcxGroupBox;
    eTaxaServico: TcxCurrencyEdit;
    cxGroupBox12: TcxGroupBox;
    eSubTotal: TcxCurrencyEdit;
    cxLabel1: TcxLabel;
    eConsulta: TcxTextEdit;
    cxSair: TcxButton;
    DBGrid1: TDBGrid;
    eMesa: TcxTextEdit;
    cxLabel4: TcxLabel;
    ///// Privados
    procedure VerificaMesas;
    procedure VerificaPaineis;
    procedure InsereItem;
    procedure LimpaItem;
    procedure Limpa;
    procedure FechaCupom;
    procedure MudaPainel(intMuda: integer);
    procedure NomeiaPainel;
    procedure VerMesa(StrMesa: String);
    procedure AbreItem;
    procedure CalculaTotal;
    procedure TempoMesa(StrMesa: String);
    procedure AtualizaMesa;
    procedure EditaMesa(StrMesa: String);
    procedure InsereFinanceiro;
    /////
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure eConsultaExit(Sender: TObject);
    procedure eCodProdExit(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxSairClick(Sender: TObject);
    procedure eConsultaKeyPress(Sender: TObject; var Key: Char);
    procedure eCodProdPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton112Click(Sender: TObject);
    procedure cxButton116Click(Sender: TObject);
    procedure eCodProdEnter(Sender: TObject);
    procedure eQtdeEnter(Sender: TObject);
    procedure eVlrUnitEnter(Sender: TObject);
    procedure cxEnterClick(Sender: TObject);
    procedure eCodProdKeyPress(Sender: TObject; var Key: Char);
    procedure eVlrUnitExit(Sender: TObject);
    procedure eQtdeExit(Sender: TObject);
    procedure eCodClieExit(Sender: TObject);
    procedure eCodCliePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxCancItemClick(Sender: TObject);
    procedure cxVoltarClick(Sender: TObject);
    procedure cxButton1MouseEnter(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
    procedure cxCancMesaClick(Sender: TObject);
    procedure cxImprimirClick(Sender: TObject);
    procedure eTaxaServicoEnter(Sender: TObject);
    procedure eTaxaServicoExit(Sender: TObject);
    procedure grConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    StrCampo, StrCaption : String;
    wMesa : Array [1..105] of TDateTime;
  public
    { Public declarations }
  end;

var
  Fcad_Mesa: TFcad_Mesa;

implementation

uses Rotinas, udmCad, uCon_Prod, udmVenda, uPrinc, uCon_Clie, uCon_Baixa,
  udmFinanceiro, uCad_Vendedor;

{$R *.dfm}

procedure TFcad_Mesa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if pncad.Visible = true then
   begin
      Msg('O registro esta em modo de cadastro, não pode ser fechado!', 'I');
      abort;
   end;
   PFundo(1);
   FormAtivo      := Nil;
   Fcad_Mesa      := nil;
   Action         := CaFree;
end;

procedure TFcad_Mesa.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TFcad_Mesa.FormShow(Sender: TObject);
begin
   FormAtivo     := Fcad_Mesa;
   VerificaMesas;
   NomeiaPainel;
   MudaPainel(0); // Consultade Mesas
   eCOnsulta.SetFOcus;
end;

procedure TFcad_Mesa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (key = VK_F4) then
      cxSalvarClick(self);
///// Volta para a tela de consulta
   if ((key = Vk_F10) or (key = Vk_Escape)) and (pncad.Visible = true ) then
      MudaPainel(0);
///// Fecha a tela
   if ((key = Vk_F10) or (key = Vk_Escape)) and (pncad.Visible = false ) then
      Close;
///// Cancela item
   if (key = vk_F1) and (cxMeio.Enabled = true) then
      cxCancItemClick(self);
   if key = Vk_F7 then
   begin
      Fcad_Vendedor := TFcad_Vendedor.Create(self);
      Fcad_vendedor.AbreCom('CON');
      Fcad_Vendedor.ShowMOdal;
      eUsuario.Text := NOME;
   end;
end;

procedure TFcad_Mesa.MudaPainel(intMuda: integer);
begin
   if intMuda=0 then // COnsulta
   begin
      pnCon.Visible     := true;
      pnCad.Visible     := false;
      VerificaMesas;
      eConsulta.SetFOcus;
   end else
   if intMuda = 1 then // cadastro
   begin
      pnCon.Visible     := false;
      pnCad.Visible     := true;
   end;
end;

procedure TFcad_Mesa.NomeiaPainel;
var
   j: integer;
begin
   with Fcad_MEsa do
   begin
      for j := 0 to (ComponentCount - 1) do
      begin
         if (Components[j] is TPanel) then
            (Components[j] as TPanel).BevelOuter     := bvNone;
      end;
   end;
end;

procedure TFcad_Mesa.FormResize(Sender: TObject);
begin
   cxCentro.Left := (Fcad_Mesa.ClientWidth div 2) - 423;
   cxMeio.Top  := 1;
   if FPrinc.stBkp.Visible =true then
      cxMeio.Height := pncad.Height-30 else
      cxMeio.Height := pncad.Height-15;
   cxMeio.Left := (Fcad_MEsa.ClientWidth div 2) - 450;
end;

procedure TFcad_Mesa.Timer1Timer(Sender: TObject);
begin
   VerificaPaineis;
end;

procedure TFcad_Mesa.eConsultaExit(Sender: TObject);
begin
   if trim(eConsulta.Text)<>'' then
      VerMesa(eConsulta.Text);
end;

procedure TFcad_Mesa.eCodProdExit(Sender: TObject);
begin
   if (ecodProd.TExt='0') or (ecodProd.TExt='') then
   begin
      LimpaItem;
      exit;
   end;
///// Busca Produto
   eCodProduto.TExt  := BuscaProduto(ecodpRod.Text);
///// Se não achou ou foi mais de um busca tela
   if  eCodProduto.TExt = '0' then
   begin
      Fcon_Prod := TFcon_Prod.Create(Self);
      Fcon_Prod.eConsulta.TExt := eCodProd.TExt;
      Fcon_Prod.ShowModal;
      ///// Se saiu da tela e ainda não achou nenhum avisa
      if Fcon_Prod.CODIGO <> '' then
      begin
         eCodProduto.TExt := Fcon_Prod.CODIGO;
         ecodProd.TExt    := Fcon_Prod.CODIGO;
      end
      else
      begin
         Msg('Produto não encontrado, tente novamente!', 'I');
         abort;
      end;
   end;
///// Se achou traz os dados do prduto   
   if eCodProduto.TExt <> '0' then
   begin
      dmcad.qryAux.Close;
      dmcad.qryAux.CommandText := 'SELECT IDPROD, REFPROD, PRODUTO, MARCAPROD, ESTOQUEDISP, ESTOQUETOTAL, UNPROD, FOTOPROD, PRECOVENDA, PRECOMINIMO, CODBAR, CUSTO FROM PRODUTO WHERE IDPROD='+QuotedStr(eCodProduto.TExt)+' AND ATIVOPROD <> '+QuotedStr('N');
      dmcad.qryAux.Open;

      eCodProduto.TExt  := dmcad.qryAux.Fieldbyname('IDPROD').asString;
      eVlrUnit.Value    := dmcad.qryAux.Fieldbyname('PRECOVENDA').AsFloat;
      cxMsg.Caption     := dmCad.qryAux.Fieldbyname('PRODUTO').asString;
      eUn. text         := dmCad.qryAux.Fieldbyname('UNPROD').asString;
      eRef.TExt         := dmCad.qryAux.Fieldbyname('REFPROD').asString;
      eQtde.Value       := 1; // Padrão
      cxImage.Picture := NIl;
      if FileExists(dmCad.qryAux.Fieldbyname('FOTOPROD').asString) then
         cxImage.Picture.LoadFromFile(dmCad.qryAux.Fieldbyname('FOTOPROD').asString);
   end;
end;

procedure TFcad_Mesa.VerMesa(StrMesa: String);
begin
   if intCaixa < 0 then
   begin
      Msg('O Caixa esta fechado, verifique!', 'I');
      Abort;
   end;
///// Verifica mesa se esta aberta
   dmvenda.cdsVEndas.Close;
   dmvenda.cdsVendas.COmmandText := 'select A.*, B.RAZAO, C.NOMEVENDEDOR '+
      ' from venda A '+
      ' left join CLIENTES B on A.IDCLIE=B.IDCLIE '+
      ' left join VENDEDOR C on A.IDVENDEDOR=C.IDVEND '+
      'where IDMESA='+StrMEsa+' and SITUACAO='+QuotedStr('ABERTO');
   dmvenda.cdsVendas.Open;
   dmVenda.cdsVendas.First;
   if dmVenda.cdsVendasIDMESA.AsInteger > 0 then
   begin
      eCodigo.TExt := dmVenda.cdsVendasIDVENDA.AsString;
   end else

   ///// Senão abre mesa
   if (Msg('Deseja abrir esta mesa/comanda?', 'P') = TRUE) then
   begin
   ///// Parametriza
      eCodClie.Text := BuscaConf('CLIPADRAO');
      if (eCodClie.Text='0') or (eCodClie.Text='') then
      begin
         Msg('Defina um cliente padrão nos paramêtros!', 'I');
         abort;
      end else
         eCodCLieExit(self);
   /////
      ///// Abre Venda
      if not dmvenda.cdsVEndas.Active = true then
         dmvenda.cdsVEndas.Open;
      dmVenda.cdsVendas.Insert;
      eCodigo.Text := dmVenda.cdsVendasIDVENDA.AsString;
      dmVenda.cdsVendasDTVENDA.AsDateTime    := Now;
      dmvenda.cdsVendasUSUARIO.AsString      := FPrinc.UserControl1.CurrentUser.UserName;
      dmvenda.cdsVendasIDMESA.AsInteger      := StrToInt(StrMesa);
      dmvenda.cdsvendasIDCLIE.AsInteger      := StrToint(ecodClie.Text);
      dmVenda.cdsVendasSITUACAO.AsString     := 'ABERTO';
      try
         dmVenda.cdsVEndas.Post;
         dmvenda.cdsVEndas.ApplyUpdates(0);
      except
         dmvenda.cdsVEndas.CancelUpdates;
         abort;
      end;
   end else
      Abort;

///// Abre Mesa;
   EditaMesa(StrMesa);
   MudaPainel(1); // Cadastro
   eCodProd.SetFOcus;
end;

procedure TFcad_Mesa.cxButton1Click(Sender: TObject);
begin
   VerMesa(TcxButton(sender).Caption);
end;

procedure TFcad_Mesa.cxSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFcad_Mesa.eConsultaKeyPress(Sender: TObject; var Key: Char);
begin
  If not (key in ['0'..'9',#8]) then key := #0;
end;

procedure TFcad_Mesa.eCodProdPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   Fcon_Prod := TFcon_Prod.Create(self);
   Fcon_Prod.ShowModal;
   if Fcon_Prod.CODIGO <> '' then
   begin
      eCOdPRod.TExt := Fcon_Prod.CODIGO;
      cxMsg.Caption := Fcon_Prod.NOME;
   end;
   FCOn_Prod.Free;
end;

procedure TFcad_Mesa.FechaCupom;
begin
  //
end;

procedure TFcad_Mesa.cxButton112Click(Sender: TObject);
begin
   if (StrCampo='PROD') then
   begin
      eCodProd.Text := eCodProd.Text + TcxButton(sender).Caption;
   end else
   if (StrCampo='QTDE') then
   begin
      eQtde.Text := eQtde.Text + TcxButton(sender).Caption;
   end else
   if (StrCampo='VLRUNIT')  then
   begin
      eVlrUnit.Text := eVlrUnit.Text + TcxButton(sender).Caption;
   end else
   if (StrCampo='TAXASERVICO')  then
   begin
      eTaxaServico.Text := eTaxaServico.Text + TcxButton(sender).Caption;
   end;
end;

procedure TFcad_Mesa.cxButton116Click(Sender: TObject);
begin
   if (StrCampo='PROD') then
   begin
      eCodProd.Clear;
      eCodProd.SetFocus;
   end else
   if (StrCampo='QTDE') then
   begin
      eQtde.Value := 1;
      eQtde.SetFOcus;
   end else
   if (StrCampo='VLRUNIT') then
   begin
      eVlrUnit.Value := 0;
      eVlrUnit.SetFOcus;
   end else
   if (StrCampo='TAXASERVICO') then
   begin
      eTaxaServico.Value := 0;
      eTaxaServico.SetFOcus;
   end;
end;

procedure TFcad_Mesa.eCodProdEnter(Sender: TObject);
begin
   StrCampo:= 'PROD';
end;

procedure TFcad_Mesa.eQtdeEnter(Sender: TObject);
begin
   StrCampo:= 'QTDE';
end;

procedure TFcad_Mesa.eVlrUnitEnter(Sender: TObject);
begin
   StrCampo:= 'VLRUNIT';
end;

procedure TFcad_Mesa.cxEnterClick(Sender: TObject);
begin
   if (StrCampo='PROD') then
   begin
      eCodProdExit(self);
      eQTde.SetFOcus;
   end else
   if (StrCampo='QTDE') then
      eVlrUnit.SetFocus else
   if (StrCampo='VLRUNIT') then
      eTaxaServico.SetFocus else
   if (StrCampo='TAXASERVICO') then
      eCodProd.SetFocus;
end;

procedure TFcad_Mesa.eCodProdKeyPress(Sender: TObject; var Key: Char);
begin
  If not (key in ['0'..'9',#8]) then key := #0;
end;

procedure TFcad_Mesa.LimpaItem;
begin
   eCodpRod.Clear;
   cxMSg.Caption := '';
   eRef.Clear;
   ecodProduto.Clear;
   eQtde.Value := 1;
   eVlrUnit.Clear;
   if FileExists(ExtractFilePath(Application.ExeName)+'\immagini\Foto.png') then
      cxImage.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\immagini\Foto.png') else
      cxImage.Picture := NIl;
end;

procedure TFcad_Mesa.eVlrUnitExit(Sender: TObject);
begin
   if (eQTde.vAlue>0) and (eCodProduto.text<>'') and (evlrUnit.Value<=0) then
   begin
      Msg('Preencha o campo com um valor válido!', 'I');
      abort;
   end else
   if evlrUnit.value<= 0 then
      exit;
      
   eQtdeExit(self);
   if (eVlrTotal.Value <= 0) or (eQtde.Value <= 0 ) or (eCodProduto.Text='') then
   begin
      Msg('Preencha os campos <<Qtde, Vlr. Unit, Produto>>', 'I');
      abort;
   end;
   InsereItem;
end;

procedure TFcad_Mesa.eQtdeExit(Sender: TObject);
begin
   if eQtde.Value <0 then
   begin
      Msg('Digite um valor maior que zero!', 'I');
      abort;
   end;
    eVlrTotal.value := eQtde.Value * eVlrUnit.VAlue;
end;

procedure TFcad_Mesa.InsereItem;
begin
   dmVenda.cdsItVEnda.Append;
   dmVEnda.cdsitVendaIDPROD.AsInteger  := StrToInt(ecodProduto.TExt);
   dmVenda.cdsItVendaIDVENDA.ASInteger := StrToint(ecodigo.text);
   dmvenda.cdsitVendaPRODUTO.AsString  := cxMsg.Caption;
   dmvenda.cdsitVendaQTDE.Value        := eQtde.Value;
   dmVenda.cdsitVendaVLRUNIT.Value     := eVlrUnit.Value;
   dmvenda.cdsitVendaVLRTOTAL.VAlue    := eVlrTotal.value;
   dmvenda.cdsitVendaALIQICMS.value    := 0;
   dmvenda.cdsitVendaVLRICMS.Value     := 0;
   dmvenda.cdsitVendaVLRCUSTO.value    := 0;
   dmvenda.cdsitVendaVLRDESC.Value     := 0;
   dmvenda.cdsitVendaVLRDVV.value      := 0;
   dmvenda.cdsitVendaSTATUS.AsString   := 'NORMAL';
   try
      dmvenda.cdsitVenda.Post;
      dmvenda.cdsitvenda.ApplyUpdates(0);
   ////// Movimenta Estoque
      Estoque(dmVenda.cdsitVendaIDPROD.AsInteger, 'VENDA', dmVenda.cdsVendasIDVENDA.AsString, 'S', 'VENDA MESA Nº '+eCodMEsa.TExt , dmvenda.cdsitVendaQTDE.AsFloat);
      CalculaTotal;
      AtualizaMesa;
      cxImprimir.Enabled := true;
      LimpaItem;
      dmvenda.cdsitVenda.Refresh;
      dmvenda.cdsitVenda.Last;
   except
      dmvenda.cdsitvenda.CancelUpdates;
   end;
end;

procedure TFcad_Mesa.eCodClieExit(Sender: TObject);
begin
{   if (eCodClie.text = '') or (eCodClie.Text = '0') then
   begin
      eCodCliePropertiesButtonClick(Self,1);
      Abort;
   end; }
   eCliente.text        := BuscaNomeAtivo('CLIENTES',StrToint(eCodClie.text));
   if eCliente.text = 'ERRO' then
   begin
      eCodClie.text := '0';
      eCliente.Text    := 'NENHUM';
      abort;
   end;
end;

procedure TFcad_Mesa.eCodCliePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   Fcon_Cliente := TFcon_Cliente.Create(self);
   Fcon_Cliente.ShowMOdal;
   if CODIGO <> 0 then
   begin
      eCodClie.TExt  := intToStr(CODIGO);
      eCliente.TExt  := NOME;
   end;
   FCon_Cliente.Free;
end;

procedure TFcad_Mesa.AbreItem;
begin
   dmVenda.cdsitVEnda.Close;
   dmVenda.cdsItVenda.CommandText := 'select A.*, B.REFPROD, MARCAPROD, B.UNPROD '+
      ' from ITEMVENDA A '+
      ' left join PRODUTO B on A.IDPROD=B.IDPROD '+
      ' where IDVENDA='+ecodigo.text;
   dmVenda.cdsItVEnda.Open;
   dmVenda.cdsItVenda.First;
   CalculaTotal;
end;

procedure TFcad_Mesa.Limpa;
begin
///// CABECALHO
   eCodClie.TExt     := '0';
   eCliente.TExt     := 'NENHUM';
   eUsuario.TExt     := 'NENHUM';
   eCodigo.Text      := '0';
   eMEsa.Clear;
   cxMsg.Caption     := '*** MESA DISPONÍVEL ***';
///// VALORES
   eVlrTotal.Value   := 0;
   eTOtalVEnda.Value := 0;
end;

procedure TFcad_Mesa.CalculaTotal;
begin
   dmVenda.qryAux.Close;
   dmVenda.qryAux.CommandText := 'select SUM(VLRTOTAL) from ITEMVENDA where IDVENDA='+QuotedStr(eCodigo.text)+' and STATUS='+QuotedStr('NORMAL');
   dmVenda.qryAux.Open;
   eSubTotal.Value := dmvenda.qryAux.Fieldbyname('SUM').AsFLoat;
   eTotalVenda.Value := eTaxaServico.Value + eSubTotal.Value;
end;

procedure TFcad_Mesa.cxCancItemClick(Sender: TObject);
begin
   if dmvenda.cdsItVEnda.RecordCount<=0 then
   begin
      Msg('Não há itens para cancelar nesta mesa!', 'I');
      abort;
   end;
   try
   ////// Movimenta Estoque
      Estoque(dmVenda.cdsitVendaIDPROD.AsInteger, 'VENDA', dmVenda.cdsVendasIDVENDA.AsString, 'E', 'CANC. ITEM VENDA MESA Nº '+eCodMEsa.TExt , dmvenda.cdsitVendaQTDE.AsFloat);
      dmvenda.cdsitVenda.Edit;
      dmvenda.cdsitVendaSTATUS.AsString := 'CANCELADO';
      dmvenda.cdsItvenda.POst;
      dmvenda.cdsitVenda.ApplyUpdates(0);
   except
      dmvenda.cdsItvenda.CancelUpdates;
   end;
end;

procedure TFcad_Mesa.VerificaMesas;
var i: Integer;
begin
   Timer1.Enabled:=False;
   ///// Verifica mesa se esta aberta
   dmvenda.cdsVendas.Close;
   dmvenda.cdsVendas.COmmandText := 'select A.*, B.RAZAO,  C.NOMEVENDEDOR '+
      ' from venda A '+
      ' left join CLIENTES B on A.IDCLIE=B.IDCLIE '+
      ' left join VENDEDOR C on A.IDVENDEDOR=C.IDVEND '+
      ' where A.SITUACAO='+QuotedStr('ABERTO');
   dmvenda.cdsVendas.Open;
   dmvenda.cdsVendas.First;
   for i:=1 to 105 do
   begin
      wMesa[i]:=0;
   end;
   while not dmvenda.cdsVendas.eof do
   begin
      wMesa[dmvenda.cdsVendasIDMESA.AsInteger] := dmvenda.cdsVendasDTVENDA.AsDateTime;
      dmvenda.cdsVendas.Next;
   end;
   Timer1.Enabled:=true;
end;

procedure TFcad_Mesa.VerificaPaineis;
var
   i,J: integer;
begin
   For i := 1 to 105 do
   begin
      if (wMesa[i]<>0) then
      begin
         for j := 0 to (ComponentCount - 1) do
         begin
            if (Components[j] is TPanel) then
            begin
               if (Components[j] as TPanel).Caption = intToStr(i) then
                  (Components[j] as TPanel).Color := FCorSelec;
            end;
         end;
      end
      else
      begin
         for j := 0 to (ComponentCount - 1) do
         begin
            if (Components[j] is TPanel) then
            begin
               if (Components[j] as TPanel).Caption = intToStr(i) then
                  (Components[j] as TPanel).Color := FCorLista;
            end;
         end;
      end;
   end;
end;

procedure TFcad_Mesa.cxVoltarClick(Sender: TObject);
begin
   MudaPainel(0); // Consulta;
   LimpaItem;
   eConsulta.SetFocus;
end;

procedure TFcad_Mesa.cxButton1MouseEnter(Sender: TObject);
begin
   if wMesa[StrToint(TcxButton(sender).caption)]<>0 then
      TempoMesa(TcxButton(sender).caption) else
      TcxButton(sender).Hint := 'Abrir Mesa/Comanda';

end;

procedure TFcad_Mesa.TempoMesa(StrMesa: String);
var
   j: Integer;
   StrCaption :String;
begin
   for j := 0 to (ComponentCount - 1) do
   begin
      if (Components[j] is TcxButton) then
      begin
         if (Components[j] as TcxButton).Caption = StrMesa then
            (Components[j] as TcxButton).Hint := 'Mesa Nº '+StrMesa+' - tempo aberta '+ DifDatasHHHMMSS(now,wMesa[StrToint(StrMesa)]);
      end;
   end;
end;

procedure TFcad_Mesa.cxSalvarClick(Sender: TObject);
begin
///// Validações
   if dmvenda.cdsItVEnda.RecordCount<=0 then
   begin
      Msg('Não há itens para fechar esta mesa, verifique!', 'I');
      abort;
   end;
///// Abre DataSet
   dmFInanceiro.rxSelec.Close;
   dmFinanceiro.rxSelec.Open;

/////
   if Msg('Deseja realmente fechar esta mesa?', 'P') = False then
      abort;

   InsereFinanceiro;
///// Financeiro
   Fcon_Baixa := TFcon_BAixa.Create(Self);
   StrTipoCOnta:= 'R'; // Receber
   Fcon_Baixa.cxSelec.Visible := false;
   Fcon_Baixa.ClientHeight := Fcon_Baixa.ClientHeight - Fcon_Baixa.cxSelec.Height;
   Fcon_Baixa.CalculaBaixa;
   Fcon_Baixa.ShowModal;
   Fcon_Baixa.Free;
   StrTipoCOnta:= '';   
/////

///// calcular
   CalculaTotal;

   dmvenda.qryAux.Close;
   dmvenda.qryAux.Commandtext := 'update venda set '+
      ' IDCLIE=:IDCLIE, '+
      ' SUBTOTAL=:SUB, '+
      ' VLRDESC=:DESC, '+
      ' TOTAL=:TOTAL, '+
      ' IDVENDEDOR=:IDVEND, '+
      ' OBS=:OBS, '+
      ' VLRCOMISSAO=:COMISSAO, '+
      ' ALIQCOMISSAO=:ALIQCOM, '+
      ' ALIQICMS=:ALIQICMS, '+
      ' VLRICMS=:VLRICMS, '+
      ' VLRSERVICO=:VLRSERVICO, '+
      ' SITUACAO=:SITUACAO, '+
      ' IDENTREGA=:IDENTREGA '+
      ' where IDVENDA='+eCodigo.text;
   // Dados
   dmvenda.qryAux.ParambyName('IDCLIE').AsInteger    := StrToInt(eCodClie.Text);
   dmvenda.qryAux.ParambyName('SUB').AsFLoat         := eTotalVEnda.Value;
   dmVenda.qryAux.ParambyName('TOTAL').asFloat       := eTotalVenda.Value;
   dmvenda.qryAux.ParambyName('VLRSERVICO').ASFLoat  := eTaxaServico.VAlue;
   dmVenda.qryAux.ParambyName('IDVEND').AsInteger    := 0; // Não implementado
   dmVenda.qryAux.ParambyName('OBS').AsString        := '';
   dmVenda.qryAux.ParambyName('COMISSAO').asFloat    := 0; // Não implementado
   dmVenda.qryAux.ParambyName('ALIQCOM').asFloat     := 0; // Não implementado
   dmVenda.qryAux.ParambyName('VLRICMS').asFloat     := 0; // Não implementado
   dmVenda.qryAux.ParambyName('ALIQICMS').asFloat    := 0; // Não implementado
   dmVenda.qryAux.ParambyName('DESC').asFloat        := 0; // Não implementado
   dmvenda.qryAux.ParambyName('SITUACAO').AsString   := 'CONCLUÍDA';
   dmvenda.qryAux.ParambyName('IDENTREGA').AsInteger := 0;
   try
      dmVenda.qryAux.ExecSQL();
      dmCad.SQLCon.Commit(TD);
      dmFinanceiro.cdsContas.ApplyUpdates(0);
      MudaPainel(0); // Consulta;
      eConsulta.SetFocus;
   except
      dmFinanceiro.cdsContas.CancelUpdates;   
      dmcad.SQLCon.Rollback(TD);
   end;
end;

procedure TFcad_Mesa.cxCancMesaClick(Sender: TObject);
begin
   if Msg('Deseja realmente cancelar esta mesa?', 'P') = false then
      abort;
   dmvenda.cdsItvenda.First;
   if dmvenda.cdsitVenda.RecordCount>=0 then
   begin
      while not dmvenda.cdsItvenda.Eof do
      begin
         dmvenda.cdsitvenda.edit;
         dmvenda.cdsitVendaSTATUS.AsString := 'CANCELADO';
         dmvenda.cdsitvenda.Post;
      ////// Movimenta Estoque
         Estoque(dmVenda.cdsitVendaIDPROD.AsInteger, 'VENDA', dmVenda.cdsVendasIDVENDA.AsString, 'E', 'CANC. ITEM VENDA MESA Nº '+eCodMEsa.TExt , dmvenda.cdsitVendaQTDE.AsFloat);
         dmvenda.cdsitvenda.Next;
      end;
   end;
   AbreConexao(11);
   try
      dmvenda.qryAux.Close;
      dmvenda.qryAux.CommandText := 'update venda set SITUACAO='+QuotedStr('CANCELADA')+' where IDVENDA='+ecodigo.text;
      dmvenda.qryAux.ExecSQL();
      dmcad.SQLCon.Commit(TD);
      MudaPainel(0); // Consulta;
      eConsulta.Text;
   except
      dmcad.SQLCon.Rollback(TD);
   end;
end;

procedure TFcad_Mesa.cxImprimirClick(Sender: TObject);
begin
///// Abre Venda;
   if (not dmvenda.cdsvendas.Active = true) or (dmvenda.cdsVEndas.RecordCount<=0) then
   begin
      Msg('Não há comandas para imprimir!', 'I');
      abort;
   end;
   dmvenda.cdsVEndas.Close;
   dmvenda.cdsVendas.COmmandText := 'select A.*, B.RAZAO, C.NOMEVENDEDOR '+
      ' from venda A '+
      ' left join CLIENTES B on A.IDCLIE=B.IDCLIE '+
      ' left join VENDEDOR C on A.IDVENDEDOR=C.IDVEND '+
      ' where A.IDVENDA='+ecodigo.text;
   dmvenda.cdsVEndas.Open;
///// Impresso
   Imprime(dmVenda.dsVendas, dmvenda.dsItVenda, 
            'SIM',
            'Comanda de Venda!',
            dmCad.cdsConfPASTASERVIDOR.ASString + '\rapporti\Faturamentos\ppComandaVenda.rtm',
            'SIM','',
            1);
end;

procedure TFcad_Mesa.eTaxaServicoEnter(Sender: TObject);
begin
   StrCampo:= 'TAXASERVICO';
end;

procedure TFcad_Mesa.eTaxaServicoExit(Sender: TObject);
begin
   if eTaxaServico.Value < 0 then
   begin
      Msg('Digite um valor maior que zero!', 'I');
      abort;
   end;
   CalculaTotal;
end;

procedure TFcad_Mesa.AtualizaMesa;
begin
   dmvenda.cdsVEndas.Edit;
   dmvenda.cdsVendasIDCLIE.AsInteger   := StrToint(eCodClie.Text);
   dmvenda.cdsVendasVLRSERVICO.AsFloat := eTaxaServico.Value;
   dmvenda.cdsVendasSUBTOTAL.AsFloat   := eSubTotal.Value;
   dmvenda.cdsVendasTOTAL.asFloat      := eTotalVenda.Value;
   dmvenda.cdsVendasVLRDESC.AsFloat    := 0;
   try
      dmvenda.cdsVEndas.Post;
      dmvenda.cdsVEndas.ApplyUpdates(0);
   except
   end;
end;

procedure TFcad_Mesa.EditaMesa(StrMesa: String);
begin
   dmvenda.cdsVEndas.Close;
   dmvenda.cdsVendas.COmmandText := 'select A.*, B.RAZAO, C.NOMEVENDEDOR '+
      ' from venda A '+
      ' left join CLIENTES B on A.IDCLIE=B.IDCLIE '+
      ' left join VENDEDOR C on A.IDVENDEDOR=C.IDVEND '+
      ' where IDMESA='+StrMEsa+' and SITUACAO='+QuotedStr('ABERTO');
   dmvenda.cdsVendas.Open;
   dmVenda.cdsVendas.First;

   eMEsa.Text        := StrMesa;
   ecodMEsa.text     := StrMesa;
   eSubTotal.Value   := dmvenda.cdsVendasSUBTOTAL.AsFLoat;
   eTotalVenda.Value := dmvenda.cdsVendasTOTAL.AsFloat;
   eTaxaServico.Value:= dmvenda.cdsVendasVLRSERVICO.AsFLoat;
   eCodClie.Text     := dmvenda.cdsVendasIDCLIE.AsString;
   eCodCLieExit(self);
   eUsuario.Text     := dmvenda.cdsVendasUSUARIO.AsString;
   cxImprimir.Enabled:= true;
   AbreItem;
end;

procedure TFcad_Mesa.grConsultaDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
////// Lista GRID
   if AViewInfo.GridRecord.Selected then
   begin
      ACanvas.Brush.Color       := FCorSelec;
      ACanvas.Canvas.Font.Color := clBlack;
      //ACanvas.Canvas.Font.Style :=[fsBold];
   end
   else
   begin
      if AViewInfo.GridRecord.RecordIndex mod 2 = 0 then
         ACanvas.Brush.Color := clWindow
      else
         ACanvas.Brush.Color := FCorLista;
   end;
end;

procedure TFcad_Mesa.InsereFinanceiro;
begin
///// Abre Contas
   dmFinanceiro.cdsContas.Close;
   dmFinanceiro.cdsContas.CommandText           := 'SELECT A.*, B.RAZAO, B.CNPJ, B.CPF, C.descricao CCUSTO, D.DESCRICAO FPAGTO FROM CONTA A '+
      ' left join CLIENTES B on A.IDCLIE=B.IDCLIE '+
      ' left join GENERICA C on A.IDCCUSTO = C.IDGENERICA and C.TABELA= '+QuotedStr('CCUSTO')+
      ' left join GENERICA D on A.idfpagto = D.idgenerica and D.TABELA= '+QuotedStr('FPAGTO')+
      ' where IDCONTA > 0 ';
   dmFinanceiro.cdsContas.Open;
/////
///// insere
   dmFInanceiro.cdsContas.Insert;
   dmFInanceiro.cdsContasORIGEM.ASString        := 'AVULSO';
   dmFinanceiro.cdsContasIDORIGEM.AsInteger     := StrToint(eCodigo.TExt);
   dmFinanceiro.cdsContasIDCLIE.AsInteger       := StrToInt(eCodClie.Text);
   dmFinanceiro.cdsContasIDCCUSTO.ASInteger     := 0;
   dmFinanceiro.cdsContasIDFPAGTO.AsInteger     := 0;
   //dmFinanceiro.cdsContasIDCARTAO.AsInteger   :=
   dmFinanceiro.cdsContasIDPLANOCTA.AsInteger   := 0;

   dmFinanceiro.cdsContasDTEMISSAO.AsDateTime   := Now;
   dmFinanceiro.cdsContasDTLANCTO.ASDateTIme    := Now;
   dmFinanceiro.cdsContasDTVENCTO.AsDateTIme    := Date;
   //dmFinanceiro.cdsContasDTBAIXA.AsDateTime   :=
   //dmFInanceiro.cdsContasDIASATRASO.ASInteger :=
   dmFinanceiro.cdsContasVLRINI.AsFloat         := eTotalVenda.Value;
   dmFinanceiro.cdsContasVLRJUROS.AsFloat       := 0;
   dmFinanceiro.cdsContasVLRMULTA.AsFloat       := 0;
   dmFinanceiro.cdsContasVLRDESC.AsFloat        := 0;
   dmFinanceiro.cdsContasVLRBRUTO.AsFloat       := eTotalVenda.Value;
   //dmFinanceiro.cdsContasVLRPAGO.AsFloat      :=

   dmFinanceiro.cdsContasOBS.ASString           := '';
   dmFinanceiro.cdsContasDOCUMENTO.AsString     := eCodigo.Text;
   dmFinanceiro.cdsContasTIPOCONTA.AsString     := 'R';
   dmFinanceiro.cdsContasSTATUSCONTA.AsString   := 'ABERTO';
/////
   dmFinanceiro.cdsContas.Post;

///// Insere item para pagar
   dmFInanceiro.rxSelec.Append;
   dmFinanceiro.rxSelecIDCONTA.AsInteger        := dmFInanceiro.cdsContasIDCONTA.ASinteger;
   dmFinanceiro.rxSelecIDCLIE.ASInteger         := dmFInanceiro.cdsContasIDCLIE.ASInteger;
   dmFinanceiro.rxSelecIDPLANO.AsInteger        := dmFinanceiro.cdsContasIDPLANOCTA.ASInteger;
   dmFinanceiro.rxSelecIDCCUSTO.ASInteger       := dmFInanceiro.cdsContasIDCCUSTO.ASInteger;
   dmFinanceiro.rxSelecIDFPAGTO.AsInteger       := dMFinanceiro.cdsContasIDFPAGTO.AsInteger;
   dmFinanceiro.rxSelecDOCUMENTO.AsString       := dmFInanceiro.cdsContasDOCUMENTO.AsString;
   dmFinanceiro.rxSelecNOMECLIE.AsString        := dmFinanceiro.cdsContasRAZAO.AsString;
   dmFinanceiro.rxSelecDTVENCTO.AsDateTIme      := dmFinanceiro.cdsContasDTVENCTO.AsDateTIme;
   dmFinanceiro.rxSelecDTEMISSAO.AsDateTime     := dmFinanceiro.cdsContasDTEMISSAO.AsDateTIme;
   dmFinanceiro.rxSelecVLRINI.AsFloat           := dmFinanceiro.cdsContasVLRINI.ASFloat;
   dmFinanceiro.rxSelecVLRJUROS.AsFloat         := dmFinanceiro.cdsContasVLRJUROS.ASFLoat;
   dmFinanceiro.rxSelecVLRMULTA.ASFLoat         := dmFinanceiro.cdsContasVLRMULTA.ASFLoat;
   dmFinanceiro.rxSelecVLRDESC.ASFLoat          := dmFinanceiro.cdsContasVLRDESC.ASFLoat;
   dmFinanceiro.rxSelecVLRBRUTO.ASFLoat         := dmFinanceiro.cdsContasVLRBRUTO.ASFLoat;
   dmFinanceiro.rxSelecDIASATRASO.AsInteger     := dmFinanceiro.cdsContasDIASATRASO.ASInteger;
   dmFinanceiro.rxSelecHISTORICO.ASString       := '';
   dmFInanceiro.rxSelecSTATUS.AsString          := dmFinanceiro.cdsContasSTATUSCONTA.ASString;
   dmFInanceiro.rxSelecVLRPAGO.ASFloat          := dmFinanceiro.cdsContasVLRPAGO.AsFloat;
   dmFInanceiro.rxSelec.Post;
end;

procedure TFcad_Mesa.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
      vk_F7: begin
         
      end;
   end;
end;

end.
