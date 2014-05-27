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
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

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
    cxGroupBox8: TcxGroupBox;
    cxSair: TcxButton;
    eConsulta: TcxTextEdit;
    cxLabel1: TcxLabel;
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
    cbMsg: TcxGroupBox;
    cxCupom: TcxRichEdit;
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
    cxImage1: TcxImage;
    cxImage2: TcxImage;
    cxLabel3: TcxLabel;
    cxSalvar: TcxButton;
    cxCancItem: TcxButton;
    cxDesconto: TcxButton;
    eCodigo: TcxTextEdit;
    eCliente: TcxTextEdit;
    eCodClie: TcxButtonEdit;
    eUsuario: TcxTextEdit;
    cxVoltar: TcxButton;
    cxItem: TcxGroupBox;
    grConsulta: TcxGrid;
    grConsultaDBTableView1: TcxGridDBTableView;
    PRODUTO: TcxGridDBColumn;
    UNPROD: TcxGridDBColumn;
    QTDE: TcxGridDBColumn;
    VLRUNIT: TcxGridDBColumn;
    VLRTOTAL: TcxGridDBColumn;
    grConsultaLevel1: TcxGridLevel;
    cxMenuCad: TcxGroupBox;
    cxCancelaItem: TcxButton;
    cxDesistir: TcxButton;
    ///// Privados
    procedure VerificaMesas;
    procedure VerificaPaineis;
    procedure InsereItem;
    procedure LimpaItem;
    procedure Limpa;
    procedure Edita;
    procedure AbreCupom;
    procedure AlimentaCupom;
    procedure FechaCupom;
    procedure ImprimeComanda;
    procedure MudaPainel(intMuda: integer);
    procedure NomeiaPainel;
    procedure VerMesa(StrMesa: String);
    procedure AbreItem;
    procedure CalculaTotal;
    procedure CancelaItem;
    procedure TempoMesa(StrMesa: String);
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
    procedure cxDesistirClick(Sender: TObject);
    procedure cxCancelaItemClick(Sender: TObject);
    procedure cxVoltarClick(Sender: TObject);
    procedure cxButton1MouseEnter(Sender: TObject);
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

uses Rotinas, udmCad, uCon_Prod, udmVenda, uPrinc, uCon_Clie;

{$R *.dfm}

procedure TFcad_Mesa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if pncad.Visible = true then
   begin
      MessageDlg('O registro esta em modo de cadastro, não pode ser fechado!', mtWarning, [mbOK], 0);
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
///// Volta para a tela de consulta
   if ((key = Vk_F10) or (key = Vk_Escape)) and (pncad.Visible = true ) then
      MudaPainel(0);
///// Fecha a tela
   if ((key = Vk_F10) or (key = Vk_Escape)) and (pncad.Visible = false ) then
      Close;
///// Cancela item
   if (key = vk_F1) and (cxMeio.Enabled = true) then
      cxCancItemClick(self);
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
   cxMeio.Height := pncad.Height-15;
   cxMeio.Left := (Fcad_MEsa.ClientWidth div 2) - 450;
end;

procedure TFcad_Mesa.Timer1Timer(Sender: TObject);
begin
   VerificaPaineis;
{   with Fcad_MEsa do
   begin
      for j := 0 to ComponentCount - 1 do
      begin
         if (Components[j] is TPanel) then
         begin
            if (Components[j] as TPanel).Color = $0097E6FD then
               (Components[j] as TPanel).Color := $00F1EDE9 else // CInza
               (Components[j] as TPanel).Color := $0097E6FD; // Laranja/Aberto

            if Panel30.Color = $00C1C1FF then //$009797FF then
               Panel30.Color := $00F1EDE9 else // CInza
               Panel30.Color := $00C1C1FF; // Vermelho/Pedido
         end;
      end;
   end; }
end;

procedure TFcad_Mesa.eConsultaExit(Sender: TObject);
begin
   if trim(eConsulta.Text)<>'' then
      VerMesa(eConsulta.Text);


{   i := StrToInt(eConsulta.TExt);
   with Fcad_MEsa do
   begin
      for j := 0 to (i) do
      begin
         if (Components[j] is TPanel) then
         begin
            if (Components[j] as TPanel).Color = $0097E6FD then
               (Components[j] as TPanel).Color := $00F1EDE9 else // CInza
               (Components[j] as TPanel).Color := $0097E6FD; // Laranja/Aberto

            if Panel30.Color = $00C1C1FF then //$009797FF then
               Panel30.Color := $00F1EDE9 else // CInza
               Panel30.Color := $00C1C1FF; // Vermelho/Pedido
         end;
      end;
   end; }
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
         MessageDlg('Produto não encontrado, tente novamente!', mtWarning, [mbOK], 0);
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
      cxImage.Picture := NIl;
      if FileExists(dmCad.qryAux.Fieldbyname('FOTOPROD').asString) then
         cxImage.Picture.LoadFromFile(dmCad.qryAux.Fieldbyname('FOTOPROD').asString);
   end;
end;

procedure TFcad_Mesa.VerMesa(StrMesa: String);
begin
   if intCaixa < 0 then
   begin
      MessageDlg('O Caixa esta fechado, verifique!', mtWarning, [mbOK], 0);
      Abort;
   end;
///// Verifica mesa se esta aberta
   dmVenda.qryAux.Close;
   dmVenda.qryAux.CommandText := 'select IDVENDA from VENDA where IDMESA='+StrMesa;
   dmVEnda.qryAux.Open;
   if dmVenda.qryAUx.FieldByName('IDVENDA').AsInteger > 0 then
   begin
      eCodigo.TExt := dmVenda.qryAUx.FieldByName('IDVENDA').AsString;
   end else
   ///// Senão abre mesa
   if (MessageBox(0, 'Deseja abrir esta mesa/comanda?', 'Abrir', MB_ICONINFORMATION or MB_YESNO or MB_TASKMODAL or MB_DEFBUTTON1) = idYes) then
   begin
      eCodClie.Text := BuscaConf('CLIPADRAO');
      eCodCLieExit(self);
      ///// Abre Venda
      if not dmvenda.cdsVEndas.Active = true then
         dmvenda.cdsVEndas.Open;
      dmVenda.cdsVendas.Insert;
      eCodigo.Text := dmVenda.cdsVendasIDVENDA.AsString;
      dmVenda.cdsVendasDTVENDA.AsDateTime    := Now;
      dmvenda.cdsVendasUSUARIO.AsString      := FPrinc.UserControl1.CurrentUser.UserName;
      dmvenda.cdsVendasIDMESA.AsInteger      := StrToInt(StrMesa);
      dmVenda.cdsVendasSITUACAO.AsString     := 'ABERTO';
      try
         dmVenda.cdsVEndas.Post;
         dmvenda.cdsVEndas.ApplyUpdates(0);
      except
         dmvenda.cdsVEndas.CancelUpdates;
         abort;
      end;
   end;
   LimpaItem;
   cxMSg.Caption :='Mesa Nº '+StrMesa;
   AbreItem;   
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

procedure TFcad_Mesa.AbreCupom;
begin
   if cxCupom.tag<=0 then
   begin
      cxCupom.Lines.Add(Format('%-40s',[dmcad.cdsCOnfRAZAOEMP.AsString]));
      cxCupom.Lines.Add(Format('%-30s',[dmcad.cdsCOnfENDERECOEMP.AsString])+', '+Format('%-40s',[dmcad.cdsCOnfNUMEROEMP.AsString]));
      cxCupom.Lines.add(Format('%-30s',[dmcad.cdsCOnfCIDADEEMP.AsString])+' - '+Format('%-5s',[dmcad.cdsCOnfUFEMP.AsString])+' - '+Format('%-40s',[dmcad.cdsCOnfCEPEMP.AsString]));
      cxCupom.Lines.add('Cnpj: '+Format('%-30s',[dmcad.cdsCOnfCNPJEMP.AsString]));
      cxCUpom.Lines.add('------------------------------------------------------------'); //60 [62]
      cxCupom.Lines.add(FormatDAteTIme('dd/mm/yyyy hh:mm:ss',Now));
      cxCUpom.Lines.add('------------------------------------------------------------'); //60
      cxCupom.Lines.add('           CUPOM NÃO FISCAL');
      cxCupom.SelStart:=375;
      cxCupom.SelLength := 27;
      cxCupom.Style.Font.Size := 14;
      cxCupom.SelAttributes.Style:= [fsbold];
      cxCupom.Tag:=1;
   end;
end;

procedure TFcad_Mesa.AlimentaCupom;
begin
   cxCupom.Style.Font.Size := 8;
   if cxCupom.Tag=1 then
   begin
      cxCupom.Lines.Add('Cód. Produto                    Qtde  Un   Vl.Unit   Vl.Total');
      cxCUpom.Lines.add('------------------------------------------------------------'); //60
   end;
   cxCupom.Tag:=2;     // 5+27+6+4+10+10
   cxCupom.Lines.Add(Format('%-5s',[ecodProduto.text])+
                     Format('%-27s',[copy(cxMsg.Caption,1,25)])+
                     Format('%-6s',[FormatFloat('###,###,##0.00',eQtde.Value)])+
                     Format('%-5s',[eUn.text])+
                     Format('%-10s',[eVlrUnit.text])+
                     Format('%-10s',[eVlrTotal.text]));
end;

procedure TFcad_Mesa.FechaCupom;
begin
  //
end;

procedure TFcad_Mesa.ImprimeComanda;
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
      eCodProd.SetFocus;
end;

procedure TFcad_Mesa.eCodProdKeyPress(Sender: TObject; var Key: Char);
begin
  If not (key in ['0'..'9',#8]) then key := #0;
end;

procedure TFcad_Mesa.LimpaItem;
begin
   eCodpRod.Clear;
   eRef.Clear;
   ecodProduto.Clear;
   eQtde.Value := 1;
   eVlrUnit.Clear;
   
   cxCupom.Lines.Clear;
end;

procedure TFcad_Mesa.eVlrUnitExit(Sender: TObject);
begin
   eQtdeExit(self);
   InsereItem;
end;

procedure TFcad_Mesa.Edita;
begin
   cxCupom.Tag := 2; // Aberto - Iniciado
end;

procedure TFcad_Mesa.eQtdeExit(Sender: TObject);
begin
    eVlrTotal.value := eQtde.Value * eVlrUnit.VAlue;
end;

procedure TFcad_Mesa.InsereItem;
begin
   AbreCupom;
   dmVenda.cdsItVEnda.Insert;
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
      AlimentaCupom;
      CalculaTotal;
      cxCancItem.tag := 0; // Libera para Cancelar
   except
      dmvenda.cdsitvenda.CancelUpdates;
   end;
end;

procedure TFcad_Mesa.eCodClieExit(Sender: TObject);
begin
   if (eCodClie.text = '') or (eCodClie.Text = '0') then
   begin
      eCodCliePropertiesButtonClick(Self,1);
      Abort;
   end;
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
   if Fcon_Cliente.CODIGO <> '' then
   begin
      eCodClie.TExt := FCon_Cliente.CODIGO;
      eCliente.TExt    := Fcon_Cliente.NOME;
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
end;

procedure TFcad_Mesa.Limpa;
begin
///// CABECALHO
   eCodClie.TExt     := '0';
   eCliente.TExt     := 'NENHUM';
   eUsuario.TExt     := 'NENHUM';
   eCodigo.Text      := '0';
///// VALORES
   eVlrTotal.Value   := 0;
   eTOtalVEnda.Value := 0;
end;

procedure TFcad_Mesa.CalculaTotal;
begin
   dmVenda.qryAux.Close;
   dmVenda.qryAux.CommandText := 'select SUM(VLRTOTAL) from ITEMVENDA where IDVENDA='+QuotedStr(eCodigo.text);
   dmVenda.qryAux.Open;
   eTotalVenda.Value := dmvenda.qryAux.Fieldbyname('SUM').AsFLoat;
end;

procedure TFcad_Mesa.CancelaItem;
begin
   if cxCancItem.tag = 1 then
   begin
      {seleciona o item a cancelar }
      cxCupom.Lines.Add(Format('%-5s',[dmVenda.cdsitVendaIDPROD.AsString])+
                        Format('%-27s',[copy(dmVenda.cdsitVendaPRODUTO.ASString,1,25)])+
                        Format('%-6s',[FormatFloat('###,###,##0.00',dmVenda.cdsitVendaQTDE.AsFloat)])+
                        Format('%-5s',[dmVenda.cdsitVendaUNPROD.AsString])+
                        Format('%-10s',[dmvenda.cdsitVendaVLRUNIT.AsString])+
                        Format('%-10s',[dmVenda.cdsitVendaVLRTOTAL.AsString]));
      cxCancItem.tag := 1;
      try
         dmvenda.cdsitVenda.Delete;
         dmvenda.cdsitVenda.ApplyUpdates(0);
      except
         dmvenda.cdsItvenda.CancelUpdates;
      end;
   end;
end;

procedure TFcad_Mesa.cxCancItemClick(Sender: TObject);
begin
   if dmVenda.cdsitVenda.RecordCount<=0 then
   begin
      MessageDlg('Não há itens para cancelar!', mtWarning, [mbOK], 0);
      abort;
   end;
   cxMeio.Enabled  := false;
   cxItem.BringToFront;
   cxItem.Visible    := true;
   cxItem.Left       := (Fcad_mesa.ClientWidth div 2) - 380;
   grConsulta.SetFocus;
   while cxItem.Visible = true do
   begin
      Application.ProcessMessages;
   end;
   cxMeio.Enabled := true;
end;

procedure TFcad_Mesa.cxDesistirClick(Sender: TObject);
begin
   cxCancelaItem.Tag := 0;
   cxItem.Visible := false;
end;

procedure TFcad_Mesa.cxCancelaItemClick(Sender: TObject);
begin
   if (MessageBox(0, 'Deseja realmente cancelar este item ?', 'Cancelar', MB_ICONINFORMATION or MB_YESNO or MB_TASKMODAL or MB_DEFBUTTON2) = idNo) then
      abort;
   cxCancelaItem.Tag := 1;
   cxItem.Visible := false;
end;

procedure TFcad_Mesa.VerificaMesas;
var i: Integer;
begin
   Timer1.Enabled:=False;
   ///// Verifica mesa se esta aberta
   dmvenda.cdsVendas.Close;
   dmvenda.cdsVendas.CommandText := 'select A.*, B.RAZAO '+
      ' from venda A '+
      ' left join CLIENTES B on A.IDCLIE=B.IDCLIE where A.SITUACAO='+QuotedStr('ABERTO');
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
                  (Components[j] as TPanel).Color := $0097E6FD;
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
                  (Components[j] as TPanel).Color := $00F1EDE9;
            end;
         end;
      end;
   end;
end;

procedure TFcad_Mesa.cxVoltarClick(Sender: TObject);
begin
   MudaPainel(0); // Consulta;
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

end.
