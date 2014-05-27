unit uCad_Conta;

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
  dxSkinXmas2008Blue, Menus, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, StdCtrls, cxButtons, cxMaskEdit,
  cxDropDownEdit, cxTextEdit, cxLabel, cxGroupBox, cxButtonEdit, cxCalendar,
  cxCurrencyEdit, cxColorComboBox, ACBrBoleto, ACBrBase, ACBrBoletoFCFortesFr;

type
  TFcad_Conta = class(TForm)
    pnCad: TcxGroupBox;
    pnCon: TcxGroupBox;
    pnConsulta: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    eConsulta: TcxTextEdit;
    btnCon: TcxButton;
    cxNovo: TcxButton;
    cxEditar: TcxButton;
    cxVisualiza: TcxButton;
    cxCancela: TcxButton;
    cxSeleciona: TcxButton;
    cxSair: TcxButton;
    cxQtdeReg: TcxLabel;
    cxLimpa: TcxButton;
    cbOrdem: TcxComboBox;
    grConsulta: TcxGrid;
    grConsultaDBTableView1: TcxGridDBTableView;
    IDCONTA: TcxGridDBColumn;
    CLIENTE: TcxGridDBColumn;
    EMISSAO: TcxGridDBColumn;
    ORIGEM: TcxGridDBColumn;
    STATUS: TcxGridDBColumn;
    VENCTO: TcxGridDBColumn;
    VLRINI: TcxGridDBColumn;
    VLRJUROS: TcxGridDBColumn;
    VLRMULTA: TcxGridDBColumn;
    VLRBRUTO: TcxGridDBColumn;
    DTBAIXA: TcxGridDBColumn;
    grConsultaLevel1: TcxGridLevel;
    cxMenuCad: TcxGroupBox;
    cxSalvar: TcxButton;
    cxDesistir: TcxButton;
    cbStatus: TcxComboBox;
    cxLabel3: TcxLabel;
    cxSelec: TcxGroupBox;
    cxLabel10: TcxLabel;
    eCodigo: TcxTextEdit;
    cxLabel26: TcxLabel;
    eDtCad: TcxDateEdit;
    edtEmissao: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    eDtVencto: TcxDateEdit;
    cxLabel7: TcxLabel;
    eDocumento: TcxTextEdit;
    cxLabel9: TcxLabel;
    eCusto: TcxTextEdit;
    eCodCusto: TcxButtonEdit;
    cxLabel6: TcxLabel;
    eCodPlano: TcxButtonEdit;
    ePlano: TcxTextEdit;
    cxLabel8: TcxLabel;
    eCodClie: TcxButtonEdit;
    eCliente: TcxTextEdit;
    cxNome: TcxLabel;
    eHistorico: TcxTextEdit;
    cxLabel11: TcxLabel;
    eCodFpagto: TcxButtonEdit;
    eFpagto: TcxTextEdit;
    cxLabel25: TcxLabel;
    eVlrini: TcxCurrencyEdit;
    cxLabel12: TcxLabel;
    eVlrJuros: TcxCurrencyEdit;
    eVlrMulta: TcxCurrencyEdit;
    cxLabel13: TcxLabel;
    eVlrDesc: TcxCurrencyEdit;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    eVlrTotal: TcxCurrencyEdit;
    cxLabel16: TcxLabel;
    eVlrPago: TcxCurrencyEdit;
    eDtPagto: TcxDateEdit;
    cxLabel17: TcxLabel;
    eObs: TcxTextEdit;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    eOrigem: TcxTextEdit;
    cxLabel20: TcxLabel;
    eCodOrigem: TcxTextEdit;
    cxGroupBox1: TcxGroupBox;
    eTotalContas: TcxLabel;
    cxContas: TcxLabel;
    cxAgrupa: TcxButton;
    cxConLote: TcxButton;
    cxBaixa: TcxButton;
    cxEstorna: TcxButton;
    eTipoConta: TcxComboBox;
    cxLabel22: TcxLabel;
    eStatusConta: TcxTextEdit;
    cxLabel23: TcxLabel;
    VLRPAGO: TcxGridDBColumn;
    grSelec: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    XVENCTO: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    XSTATUS: TcxGridDBColumn;
    DOCUMENTO: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    VLRDESC: TcxGridDBColumn;
    XPAGO: TcxGridDBColumn;
    cxBoleto: TcxButton;
    procedure Consulta;
    procedure MudaPainel(intMuda: integer);
    procedure Limpar;
    procedure Editar;
    procedure Validacoes;
    procedure TotalContas(Fvalor: Double);
    procedure SomaVlrini;
    procedure Marca(intTipo: Integer); // Verifica se existem status que não podem ser baixados ou misturados
    procedure ValidaBaixa;
  /////
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxSairClick(Sender: TObject);
    procedure eConsultaPropertiesChange(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure cxEditarClick(Sender: TObject);
    procedure cxVisualizaClick(Sender: TObject);
    procedure cxCancelaClick(Sender: TObject);
    procedure cxLimpaClick(Sender: TObject);
    procedure cxDesistirClick(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
    procedure eCodCliePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodClieExit(Sender: TObject);
    procedure eCodCustoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodFpagtoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodFpagtoExit(Sender: TObject);
    procedure btnConClick(Sender: TObject);
    procedure cbOrdemPropertiesChange(Sender: TObject);
    procedure eCodCustoExit(Sender: TObject);
    procedure eVlriniExit(Sender: TObject);
    procedure eDtVenctoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxSelecionaClick(Sender: TObject);
    procedure eCodPlanoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure grConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure eCodPlanoExit(Sender: TObject);
    procedure grConsultaDBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxBaixaClick(Sender: TObject);
    procedure eCodCustoKeyPress(Sender: TObject; var Key: Char);
    procedure cxEstornaClick(Sender: TObject);
    procedure cxBoletoClick(Sender: TObject);
  private
    { Private declarations }
    indice: String;
    FtotalContas: Double;
  public
    { Public declarations }
  end;

var
  Fcad_Conta: TFcad_Conta;

implementation

uses udmFinanceiro, Rotinas, uCon_Clie, uCon_Generico, uCad_Plano, uPrinc,
  uCon_Baixa;

{$R *.dfm}

procedure TFcad_Conta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if pncad.Visible = true then
   begin
      MessageDlg('O registro esta em modo de cadastro, não pode ser fechado!', mtWarning, [mbOK], 0);
      abort;
   end;
   PFundo(1);
   StrTIpoConta   := '';
   FormAtivo      := Nil;
   Fcad_Conta     := nil;
   Action         := CaFree;
end;

procedure TFcad_Conta.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = #27) and (pncon.Visible=true) then Close;
   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TFcad_Conta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Key = VK_F3) and (pnCon.Visible = true) then
      btnConClick(self);
   if (key = Vk_F2) then
   begin
      if cbOrdem.Itemindex=  7 then
         cbORdem.Itemindex:= 0 else
         cbOrdem.Itemindex:= cbOrdem.ItemIndex +1;
      cbOrdemPropertiesChange(self);
   end;
   if (key = VK_DOWN) and (not grConsulta.Focused = true) then
      dmFinanceiro.cdsContas.Next else
   if (key = VK_Up) and (not grConsulta.Focused = true) then
      dmFinanceiro.cdsContas.Prior;
   if (Key = VK_DOWN) or (Key = VK_UP) then
      cxQtdeREg.Caption := 'Registros: '+ intToStr(dmFinanceiro.cdsContas.RecordCount);
end;

procedure TFcad_Conta.Consulta;
begin
   dmFinanceiro.cdsContas.IndexNAme := '';
   dmFinanceiro.cdsContas.Close;
   dmFinanceiro.cdsContas.CommandText := 'SELECT A.*, B.RAZAO, B.CNPJ, B.CPF, C.descricao CCUSTO, D.DESCRICAO FPAGTO FROM CONTA A '+
      ' left join CLIENTES B on A.IDCLIE=B.IDCLIE '+
      ' left join GENERICA C on A.IDCCUSTO = C.IDGENERICA and C.TABELA= '+QuotedStr('CCUSTO')+
      ' left join GENERICA D on A.idfpagto = D.idgenerica and D.TABELA= '+QuotedStr('FPAGTO')+
      ' where A.TIPOCONTA = '+QuotedStr(StrTipoConta);

   if cbStatus.Itemindex >0 then
      dmFinanceiro.cdsContas.CommandText := dmFinanceiro.cdsContas.CommandText + ' and A.STATUSCONTA='+QUotedStr(cbStatus.Text);

   if (indice <> 'DTEMISSAO') and (indice <> 'DTLANCTO') and (indice <> 'DTVENCTO') and (indice<>'DTBAIXA') then
      dmFinanceiro.cdsContas.CommandText := dmFinanceiro.cdsContas.CommandText + ' and ' + indice + ' like ' + QuotedStr('%' + eConsulta.Text + '%') else
   begin
      if not DataValida(eConsulta.text) then
         dmFinanceiro.cdsContas.CommandText := dmFinanceiro.cdsContas.CommandText + ' and ' + indice + ' >= ' + QuotedStr(DataSql(Date) + ' 00:00:00') + '  and ' + indice + ' <= ' + QuotedStr(DataSql(Date) + ' 23:59:59')
      else
         dmFinanceiro.cdsContas.CommandText := dmFinanceiro.cdsContas.CommandText + ' and ' + indice + ' >= ' + QuotedStr(DataSql(StrToDate(eConsulta.Text)) + ' 00:00:00') + ' and ' + indice + ' <= ' + QuotedStr(DataSql(StrToDate(eConsulta.Text)) + ' 23:59:59')
   end;
   dmFinanceiro.CdsCOntas.CommandText := dmFinanceiro.CdsCOntas.CommandText + ' order by ' + indice;
   try
      dmFinanceiro.cdsContas.Open;
      dmFinanceiro.CdsCOntas.Last;
      cxQtdeReg.CAption := 'Qtde. Registros: '+IntToStr(dmFinanceiro.cdsContas.RecordCount);
   except
   end;
end;

procedure TFcad_Conta.MudaPainel(intMuda: integer);
begin
   if intMuda=0 then // COnsulta
   begin
      pnCon.Visible     := true;
      pnCad.Visible     := false;
      cxSalvar.Enabled  := true;
      cxSalvar.Tag      := 0;
   end else
   if intMuda = 1 then // cadastro
   begin
      pnCon.Visible     := false;
      pnCad.Visible     := true;
   end;
end;

procedure TFcad_Conta.cxSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFcad_Conta.eConsultaPropertiesChange(Sender: TObject);
begin
   if (dmFinanceiro.cdsContas.Active=true) and (dmFinanceiro.cdsContas.RecordCount > 0) then
   begin
      if (trim(eConsulta.Text)<>'') then
      begin
         dmFinanceiro.cdsContas.First;
         Consulta;
      end;
      try
         dmFinanceiro.cdsContas.Locate(indice,eConsulta.Text,[loPartialKey]);
      except
      end;
   end;
end;

procedure TFcad_Conta.cxNovoClick(Sender: TObject);
begin
   SistemaLiberado;
   MudaPainel(1); // Cadastro
   Limpar;
///// Padroniza
   edtCad.Date       := Date;
   edtEMissao.Date   := Date;
   ecodOrigem.text   := '0'; //
   if StrTipoConta = 'R' then
      eTipoConta.Itemindex := 1 else
      eTipoConta.Itemindex := 0;
   eStatusConta.TExt := 'ABERTO';
   eorigem.Text      := 'AVULSO';
/////
   cxSalvar.Tag      := 1; // Incluir
   dmFinanceiro.cdsContas.Insert;
   eCodigo.TExt      := dmFinanceiro.cdsContasIDCONTA.AsString;
   eDocumento.SetFocus;
end;

procedure TFcad_Conta.cxEditarClick(Sender: TObject);
begin
   SistemaLiberado;
   if (dmFinanceiro.cdsContas.Active = false) or (dmFinanceiro.cdsContas.RecordCount<1) then
   begin
      MessageDlg('Não há registros identificados, verifique!', mtInformation, [mbOK], 0);
      abort;
   end;
   MudaPainel(1); // Cadastro
   Editar;
   cxSalvar.tag := 0; // Editar
   eDocumento.SetFocus;
end;

procedure TFcad_Conta.cxVisualizaClick(Sender: TObject);
begin
   cxSalvar.Enabled := false;
   cxEditarClick(Self);
end;

procedure TFcad_Conta.Limpar;
var j: integer;
begin
   with Fcad_Conta do
   begin
      for j := 0 to ComponentCount - 1 do
      begin
         if (Components[j] is TcxTextEdit) then
            (Components[j] as TcxTextEdit).text := '';
         if (Components[j] is TcxDateEdit) then
            (Components[j] as TcxDateEdit).Clear;
         if (Components[j] is TcxButtonEdit) then
            (Components[j] as TcxButtonEdit).TExt := '0';
         if (Components[j] is TcxMaskEdit) then
            (Components[j] as TcxMaskEdit).TExt := '';
         if (Components[j] is TcxCurrencyEdit) then
            (Components[j] as TcxCurrencyEdit).Value := 0;
         //if (Components[j] is TcxMemo) then
         //(Components[j] as TcxMemo).Lines.Text := '';
         //if (Components[j] is TcxCheckBox) then
         //   (Components[j] as TcxCheckBox).Checked := False;
         if (Components[j] is TcxComboBox) then
            (Components[j] as TcxComboBox).ItemIndex :=0;
      end;
   end;
end;

procedure TFcad_Conta.cxCancelaClick(Sender: TObject);
begin
   SistemaLiberado;
   if cxSelec.Visible = true then
   begin
      Messagedlg('Não selecione o registro!' + #13 + 'Apenas posicione no desejado.', mtInformation, [mbok], 0);
      abort;
   end;
   if dmFinanceiro.cdsContasSTATUSCONTA.AsString = 'QUITADO' then
   begin
      MessageDlg('Registro Quitado! Estorne-o antes, para depois poder excluir!', mtError, [mbok], 0);
      abort;
   end;
   if dmFInanceiro.cdsContas.RecordCount < 1 then
   begin
      MessageDlg('Registro não encontrado, verifique!', mtError, [mbok], 0);
      abort;
   end;
   if (MessageBox(0, 'Deseja realmente cancelar este registro?', 'Atenção!', MB_ICONWARNING or MB_YESNO or MB_DEFBUTTON2) = mrYes) then
   begin
      try
         if dmFinanceiro.cdsContasTIPOCONTA.AsString = 'P' then // Pagar
            FPrinc.UserControl1.Log('Cancelado Contas á Pagar Nº:' + IntTOStr(dmFInanceiro.cdsContasIDCONTA.AsInteger) + ' do Cliente :' + dmFinanceiro.cdsContasRAZAO.AsString, 1) else
            FPrinc.UserControl1.Log('Cancelado Contas á Receber Nº:' + IntTOStr(dmFInanceiro.cdsContasIDCONTA.AsInteger) + ' do Cliente :' + dmFinanceiro.cdsCOntasRAZAO.AsString, 1);
         dmFinanceiro.cdsContas.Edit;
         dmFinanceiro.cdsContasSTATUSCONTA.AsString := 'CANCELADO';
         dmFinanceiro.cdsContas.POst;
         dmFinanceiro.cdsContas.ApplyUpdates(0);
         MessageDlg('Registro cancelado com sucesso!', mtInformation, [mbOK], 0);
      except
         MessageDlg('Não foi possível cancelar, verifique!', mtInformation, [mbOK], 0);
      end;
   end;
end;

procedure TFcad_Conta.cxLimpaClick(Sender: TObject);
begin
   TotalContas(0);
   dmFinanceiro.rxSelec.Close;
   dmFinanceiro.rxSelec.open;
   cxSelec.Visible := false;
end;

procedure TFcad_Conta.cxDesistirClick(Sender: TObject);
begin
   if (MessageBox(0, 'Deseja realmente desistir?', 'Desistir?', MB_ICONINFORMATION or MB_YESNO or MB_TASKMODAL or MB_DEFBUTTON2) = idNo) then
      abort;
   if cxSalvar.Tag=1 then
      dmFinanceiro.cdsCOntas.CancelUpdates;
    MudaPainel(0); // COnsulta;
    Consulta;
    eCOnsulta.SetFocus;
end;

procedure TFcad_Conta.Editar;
begin
   eOrigem.Text      := dmFInanceiro.cdsContasORIGEM.ASString;
   eCodOrigem.Text   := IntToStr(dmFinanceiro.cdsContasIDORIGEM.AsInteger);
   ecodigo.TExt      := IntToStr(dmFinanceiro.cdsContasIDCONTA.AsInteger);
   ecodClie.Text     := IntToStr(dmFinanceiro.cdsContasIDCLIE.AsInteger);
   eCodClieExit(self);
   eCodCusto.Text    := IntToStr(dmFinanceiro.cdsContasIDCCUSTO.ASInteger);
   eCodCustoExit(self);
   eCodFpagto.Text   := IntToStr(dmFinanceiro.cdsContasIDFPAGTO.AsInteger);
   eCodFpagtoExit(self);
   //dmFinanceiro.cdsContasIDCARTAO.AsInteger  :=
   eCodPlano.Text    := IntToStr(dmFinanceiro.cdsContasIDPLANOCTA.AsInteger);
   eCodPlanoExit(self);

   edtEmissao.Date   := dmFinanceiro.cdsContasDTEMISSAO.AsDateTime;
   edtCad.Date       := dmFinanceiro.cdsContasDTLANCTO.ASDateTIme;
   edtVencto.Date    := dmFinanceiro.cdsContasDTVENCTO.AsDateTIme;
   //dmFinanceiro.cdsContasDTBAIXA.AsDateTime  :=
   //dmFInanceiro.cdsContasDIASATRASO.ASInteger:=
   eVlrini.Value     := dmFinanceiro.cdsContasVLRINI.AsFloat;
   eVlrJuros.Value   := dmFinanceiro.cdsContasVLRJUROS.AsFloat;
   eVlrMulta.Value   := dmFinanceiro.cdsContasVLRMULTA.AsFloat;
   eVlrDesc.Value    := dmFinanceiro.cdsContasVLRDESC.AsFloat;
   eVlrTotal.VAlue   := dmFinanceiro.cdsContasVLRBRUTO.AsFloat;
   //dmFinanceiro.cdsContasVLRPAGO.AsFloat     :=

   eobs.Text         := dmFinanceiro.cdsContasOBS.ASString;
   eDocumento.Text   := dmFinanceiro.cdsContasDOCUMENTO.AsString;
   if dmFinanceiro.cdsContasTIPOCONTA.AsString = 'P' then
      eTipoConta.itemindex := 0 else   // pagar
      eTipoConta.itemindex := 1;       // receber
   eStatusConta.Text := dmFinanceiro.cdsContasSTATUSCONTA.AsString;
end;

procedure TFcad_Conta.Validacoes;
begin
   if (not DAtaVAlida(edtEmissao.text)) or (not DAtaValida(eDtVencto.Text)) then
   begin
      MessageDlg('Data de emissão inválida, verifique!', mtWarning, [mbOK], 0);
      edtEmissao.SetFOcus;
      abort;
   end;
   if (not DAtaValida(eDtVencto.Text)) then
   begin
      MessageDlg('Data de vencimento inválida, verifique!', mtWarning, [mbOK], 0);
      eDtVencto.SetFOcus;
      abort;
   end;
   if (eCodClie.TExt = '0') then
   begin
      MessageDlg('Cliente é Obrigatório, verifique!', mtInformation, [mbOK], 0);
      eCodClie.SetfOcus;
      abort;
   end;
   if (trim(eDocumento.TExt) = '') then
   begin
      MessageDlg('Complete o campo documento!', mtInformation, [mbOK], 0);
      eDocumento.SetfOcus;
      abort;
   end;
   if (eVlrTotal.Value <= 0)then
   begin
      MessageDlg('Valor inválido, verifique!', mtWarning, [mbOK], 0);
      eVlrini.Value;
      abort;
   end;
end;

procedure TFcad_Conta.cxSalvarClick(Sender: TObject);
begin
///// Validações
   Validacoes;

   if cxSalvar.Tag=0 then
      dmFinanceiro.cdsContas.Edit;

   dmFInanceiro.cdsContasORIGEM.ASString     := eOrigem.Text;
   dmFinanceiro.cdsContasIDORIGEM.AsInteger  := StrToint(eCodOrigem.Text);
   dmFinanceiro.cdsContasIDCLIE.AsInteger    := StrToInt(ecodClie.Text);
   dmFinanceiro.cdsContasIDCCUSTO.ASInteger  := StrToInt(eCodCusto.Text);
   dmFinanceiro.cdsContasIDFPAGTO.AsInteger  := StrToint(eCodFpagto.Text);
   //dmFinanceiro.cdsContasIDCARTAO.AsInteger  :=
   dmFinanceiro.cdsContasIDPLANOCTA.AsInteger:= StrToInt(eCodPlano.Text);

   dmFinanceiro.cdsContasDTEMISSAO.AsDateTime:= edtEmissao.Date;
   dmFinanceiro.cdsContasDTLANCTO.ASDateTIme := eDtCad.date + time;
   dmFinanceiro.cdsContasDTVENCTO.AsDateTIme := edtVencto.Date;
   //dmFinanceiro.cdsContasDTBAIXA.AsDateTime  :=
   //dmFInanceiro.cdsContasDIASATRASO.ASInteger:=
   dmFinanceiro.cdsContasVLRINI.AsFloat      := eVlrini.Value;
   dmFinanceiro.cdsContasVLRJUROS.AsFloat    := eVlrJuros.Value;
   dmFinanceiro.cdsContasVLRMULTA.AsFloat    := eVlrMulta.Value;
   dmFinanceiro.cdsContasVLRDESC.AsFloat     := eVlrMulta.Value;
   dmFinanceiro.cdsContasVLRBRUTO.AsFloat    := eVlrTotal.VAlue;
   //dmFinanceiro.cdsContasVLRPAGO.AsFloat     :=

   dmFinanceiro.cdsContasOBS.ASString        := eobs.Text;
   dmFinanceiro.cdsContasDOCUMENTO.AsString  := eDocumento.Text;
   dmFinanceiro.cdsContasTIPOCONTA.AsString  := StrTipoConta;
   dmFinanceiro.cdsContasSTATUSCONTA.AsString:= eStatusConta.Text;
   try
      dmFinanceiro.cdsContas.POst;
      dmFinanceiro.cdsContas.ApplyUpdates(0);
      dmFinanceiro.cdsContas.Refresh;
      MudaPainel(0); // Consulta;
   except
      dmFinanceiro.cdsContas.CancelUpdates;
   end;
end;

procedure TFcad_Conta.TotalContas(FValor: Double);
begin
   if Fvalor = 0 then
      FTotalContas := 0 else
      FTotalContas:= FTotalContas + FValor;

   eTotalContas.Caption := 'Total de Contas R$: '+FormatFloat('###,###,##0.00',FTotalContas);
end;

procedure TFcad_Conta.eCodCliePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   Fcon_Cliente := TFcon_Cliente.Create(self);
   Fcon_Cliente.ShowMOdal;
   if CODIGO <> 0 then
   begin
      eCodClie.TExt     := intToStr(CODIGO);
      eCliente.TExt     := NOME;
   end;
   FCon_Cliente.Free;
end;

procedure TFcad_Conta.eCodClieExit(Sender: TObject);
begin
   if (eCodClie.text = '') or (eCodClie.Text = '0') then
   begin
      eCodClie.text := '0';
      eCliente.Text    := 'NENHUM';
      exit;
   end;
   eCliente.text        := BuscaNomeAtivo('CLIENTES',StrToint(eCodClie.text));
   if eCliente.text = 'ERRO' then
   begin
      eCodClie.text := '0';
      eCliente.Text    := 'NENHUM';
      exit;
   end;
end;

procedure TFcad_Conta.eCodCustoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   Fcon_Generico := TFcon_Generico.Create(self);
   Fcon_Generico.TABELA :='CCUSTO';
   Fcon_Generico.ShowModal;
   if CODIGO<>0 then
   begin
      eCodCusto.Text := intTOStr(CODIGO);
      eCusto.Text    := NOME;
   end;
   FCon_Generico.Free;
end;

procedure TFcad_Conta.eCodFpagtoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   Fcon_Generico := TFcon_Generico.Create(self);
   Fcon_Generico.TABELA :='FPAGTO';
   Fcon_Generico.ShowModal;
   if CODIGO<>0 then
   begin
      eCodFpagto.Text := intTOStr(CODIGO);
      eFpagto.Text    := NOME;
   end;
   FCon_Generico.Free;
end;

procedure TFcad_Conta.eCodFpagtoExit(Sender: TObject);
begin
   if (eCodFpagto.text = '') or (eCodFpagto.Text = '0') then
   begin
      eCodFpagto.text := '0';
      eFpagto.Text    := 'NENHUM';
      exit;
   end;
   eFpagto.text          := BuscaNomeGen('FPAGTO',StrToint(eCodFpagto.text));
   if eFpagto.text = 'ERRO' then
   begin
      eCodFpagto.text := '0';
      eFpagto.Text    := 'NENHUM';
      exit;
   end;
end;

procedure TFcad_Conta.btnConClick(Sender: TObject);
begin
   Consulta;
   eConsulta.SetFocus;
end;

procedure TFcad_Conta.cbOrdemPropertiesChange(Sender: TObject);
begin
   if cbOrdem.ItemIndex = 0 then
      indice := 'IDCONTA' else
   if cbOrdem.ItemIndex = 1 then
      indice := 'DOCUMENTO' else
   if cbOrdem.ItemIndex = 2 then
      indice := 'RAZAO' else
   if cbOrdem.ItemIndex = 3 then
      indice := 'CNPJ' else
   if cbOrdem.ItemIndex = 4 then
      indice := 'CPF' else
   if cbOrdem.ItemIndex = 5 then
      indice := 'DTEMISSAO' else
   if cbOrdem.ItemIndex = 6 then
      indice := 'DTBAIXA' else
   if cbOrdem.ItemIndex = 7 then
      indice := 'DTVENCTO';

   Consulta;
   if pncon.Visible = true then
   begin
      if cbOrdem.itemindex in [5,6,7] then
         eCOnsulta.TExt := DateToStr(Date);
      eCOnsulta.SetFOcus;
   end;
end;

procedure TFcad_Conta.eCodCustoExit(Sender: TObject);
begin
   if (eCodCusto.text = '') or (eCodCusto.Text = '0') then
   begin
      eCodCusto.text := '0';
      eCusto.Text    := 'NENHUM';
      exit;
   end;
   eCusto.text          := BuscaNomeGen('CCUSTO',StrToint(eCodCusto.text));
   if eCusto.text = 'ERRO' then
   begin
      eCodCusto.text := '0';
      eCusto.Text    := 'NENHUM';
      exit;
   end;
end;

procedure TFcad_Conta.eVlriniExit(Sender: TObject);
begin
   SomaVlrini;
end;

procedure TFcad_Conta.SomaVlrini;
begin
   eVlrTotal.value := (eVlrini.value + eVlrJuros.value + eVlrMulta.value) - eVlrDesc.value;
end;

procedure TFcad_Conta.eDtVenctoExit(Sender: TObject);
begin
   if (edtvencto.text<>'') and (cxSalvar.Tag<>0) then
   begin
      if (not DataValida(eDtVencto.text)) or (eDtVencto.Date < Date) then
      begin
         MessageDlg('Data de vencimento inválida, verifique!', mtWarning, [mbOK], 0);
         eDtVencto.Clear;
      end;
   end;
end;

procedure TFcad_Conta.FormShow(Sender: TObject);
begin
   FormAtivo     := Fcad_Conta;
   MudaPainel(0); // Consulta

///// Abre DataSet
   dmFInanceiro.rxSelec.Close;
   dmFinanceiro.rxSelec.Open;

   if StrTipoConta = 'R' then
      pnConsulta.Caption := 'CONTAS Á RECEBER' else
      pnConsulta.Caption := 'CONTAS Á PAGAR';

   indice            := 'DTEMISSAO';
   eCOnsulta.Text    := DateToStr(Date);
   cbOrdem.ItemIndex :=5;
   cbOrdemPropertiesChange(sender);
end;

procedure TFcad_Conta.cxSelecionaClick(Sender: TObject);
begin
   if (not dmfinanceiro.cdsContas.Active = False) and (dmFinanceiro.cdsCONtas.RecordCount < 1) then
   begin
      MessageDlg('Não há registros, verifique!', mtInformation, [mbOK], 0);
      abort;
   end;
   cxLimpaClick(self);
   dmFinanceiro.cdsCOntas.first;
   while not dmFinanceiro.cdsCOntas.eof do
   begin
      Marca(0); // Marca
      dmFinanceiro.cdsContas.NExt;
   end;
end;

procedure TFcad_Conta.eCodPlanoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   Fcad_Plano := TFcad_Plano.Create(self);
   Fcad_Plano.AbreCom('CON');
   Fcad_Plano.ShowmOdal;
   if Fcad_Plano.CODIGO <> 0 then
   begin
      eCOdPlano.Text := IntToStr(Fcad_Plano.CODIGO);
      ePlano.Text    := Fcad_PLano.DESCRICAO;
   end;
   Fcad_Plano.Free;
end;

procedure TFcad_Conta.grConsultaDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
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

   if (AViewInfo.Item.Index = STATUS.Index) then
   begin
   ////// ABERTO
      if (AViewInfo.GridRecord.Values[STATUS.Index] <> 'QUITADO') and (AViewInfo.GridRecord.Values[VLRPAGO.Index]<=0) and (AViewInfo.GridRecord.Values[VENCTO.Index] > DATE) then
      begin
         ACanvas.Canvas.Brush.Color := clRed;
         ACanvas.Canvas.Font.Color := clWhite;
         //ACanvas.Canvas.Font.Style:=[fsBold];
      end
      else
   ///// VENCIDO
      if (AViewInfo.GridRecord.Values[VENCTO.Index] <= Date) and (AViewInfo.GridRecord.Values[STATUS.Index] <> 'QUITADO') and (AViewInfo.GridRecord.Values[VLRPAGO.Index] <= 0)then
      begin
         ACanvas.Canvas.Brush.Color := clRed;
         ACanvas.Canvas.Font.Color := clWhite;
         //ACanvas.Canvas.Font.Style:=[fsBold];
      end
      else
      if (AViewInfo.GridRecord.Values[VLRPAGO.Index] > 0) and (AViewInfo.GridRecord.Values[STATUS.Index] = 'QUITADO')then
      begin
         ACanvas.Canvas.Brush.Color := clBlue;
         ACanvas.Canvas.Font.Color := clWhite;
         //ACanvas.Canvas.Font.Style:=[fsBold];
      end else
      if (AViewInfo.GridRecord.Values[STATUS.Index] = 'CANCELADO') then
      begin
         ACanvas.Canvas.Brush.Color := clPurple;
         ACanvas.Canvas.Font.Color := clWhite;
         //ACanvas.Canvas.Font.Style:=[fsBold];
      end
   end;
end;

procedure TFcad_Conta.eCodPlanoExit(Sender: TObject);
begin
   if (eCodPlano.text = '') or (eCodPlano.Text = '0') then
   begin
      eCodPlano.text := '0';
      ePlano.Text    := 'NENHUM';
      exit;
   end;
   ePlano.text          := BuscaNomeStr('PLANOCONTA', eCodPlano.text);
   if ePlano.text = 'ERRO' then
   begin
      eCodPlano.text := '0';
      ePlano.Text    := 'NENHUM';
      exit;
   end;
end;

procedure TFcad_Conta.grConsultaDBTableView1DblClick(Sender: TObject);
begin
   if (dmFinanceiro.cdsContas.Active = true) and (dmFinanceiro.cdsContas.RecordCount < 1) then
   begin
      MessageDlg('Atenção! Não há contas para selecionar, verifique.', mtWarning, [mbOK], 0);
      abort;
   end;
   if dmFinanceiro.cdsContasSTATUSCONTA.AsString = 'QUITADO' then
   begin
      MessageDlg('Contas quitadas não podem ser selecionadas!', mtWarning, [mbOK], 0);
      abort;
   end;
   if dmFinanceiro.rxSelec.locate('IDCONTA', dmFinanceiro.cdsContasIDCONTA.AsInteger, []) then
      Marca(1) else  // Desmarca
      Marca(0);      // Marca
end;

procedure TFcad_Conta.Marca(intTipo: Integer);
begin
   if IntTipo=0 then // Marca
   begin
      dmFInanceiro.rxSelec.Append;
      dmFinanceiro.rxSelecIDCONTA.AsInteger     := dmFInanceiro.cdsContasIDCONTA.ASinteger;
      dmFinanceiro.rxSelecIDCLIE.ASInteger      := dmFInanceiro.cdsContasIDCLIE.ASInteger;
      dmFinanceiro.rxSelecIDPLANO.AsInteger     := dmFinanceiro.cdsContasIDPLANOCTA.ASInteger;
      dmFinanceiro.rxSelecIDCCUSTO.ASInteger    := dmFInanceiro.cdsContasIDCCUSTO.ASInteger;
      dmFinanceiro.rxSelecIDFPAGTO.AsInteger    := dMFinanceiro.cdsContasIDFPAGTO.AsInteger;
      dmFinanceiro.rxSelecDOCUMENTO.AsString    := dmFInanceiro.cdsContasDOCUMENTO.AsString;
      dmFinanceiro.rxSelecNOMECLIE.AsString     := dmFinanceiro.cdsContasRAZAO.AsString;
      dmFinanceiro.rxSelecDTVENCTO.AsDateTIme   := dmFinanceiro.cdsContasDTVENCTO.AsDateTIme;
      dmFinanceiro.rxSelecDTEMISSAO.AsDateTime  := dmFinanceiro.cdsContasDTEMISSAO.AsDateTIme;
      dmFinanceiro.rxSelecVLRINI.AsFloat        := dmFinanceiro.cdsContasVLRINI.ASFloat;
      dmFinanceiro.rxSelecVLRJUROS.AsFloat      := dmFinanceiro.cdsContasVLRJUROS.ASFLoat;
      dmFinanceiro.rxSelecVLRMULTA.ASFLoat      := dmFinanceiro.cdsContasVLRMULTA.ASFLoat;
      dmFinanceiro.rxSelecVLRDESC.ASFLoat       := dmFinanceiro.cdsContasVLRDESC.ASFLoat;
      dmFinanceiro.rxSelecVLRBRUTO.ASFLoat      := dmFinanceiro.cdsContasVLRBRUTO.ASFLoat;
      dmFinanceiro.rxSelecDIASATRASO.AsInteger  := dmFinanceiro.cdsContasDIASATRASO.ASInteger;
      dmFinanceiro.rxSelecHISTORICO.ASString    := '';
      dmFInanceiro.rxSelecSTATUS.AsString       := dmFinanceiro.cdsContasSTATUSCONTA.ASString;
      dmFInanceiro.rxSelecVLRPAGO.ASFloat       := dmFinanceiro.cdsContasVLRPAGO.AsFloat;
      dmFInanceiro.rxSelec.Post;
      TotalContas(dmFInanceiro.cdsContasVLRBRUTO.AsFLoat);      
   end else
   if IntTipo=1 then // Desmarca
   begin
      dmFinanceiro.rxSelec.Locate('IDCONTA', dmFinanceiro.cdsContasIDCONTA.AsINteger, []);
      TotalContas((dmFinanceiro.cdsContasVLRBRUTO.AsFloat*-1));
      dmFinanceiro.rxSelec.DELETE;
   end;

///// Controla Paineis
   if dmFinanceiro.rxSelec.RecordCount<=0 then
   begin
      cxSelec.Visible  := false;
      TotalContas(0);
   end
   else
      cxSelec.Visible   := true;
end;

procedure TFcad_Conta.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
   if (AViewInfo.Item.Index = STATUS.Index) then
   begin
   ////// ABERTO
      if (AViewInfo.GridRecord.Values[XSTATUS.Index] <> 'QUITADO') and (AViewInfo.GridRecord.Values[XPAGO.Index]<=0) and (AViewInfo.GridRecord.Values[XVENCTO.Index] > DATE) then
      begin
         ACanvas.Canvas.Brush.Color := clRed;
         ACanvas.Canvas.Font.Color := clWhite;
         //ACanvas.Canvas.Font.Style:=[fsBold];
      end
      else
   ///// VENCIDO
      if (AViewInfo.GridRecord.Values[XVENCTO.Index] <= Date) and (AViewInfo.GridRecord.Values[XSTATUS.Index] <> 'QUITADO') and (AViewInfo.GridRecord.Values[XPAGO.Index] <= 0)then
      begin
         ACanvas.Canvas.Brush.Color := clRed;
         ACanvas.Canvas.Font.Color := clWhite;
         //ACanvas.Canvas.Font.Style:=[fsBold];
      end
      else
      if (AViewInfo.GridRecord.Values[XPAGO.Index] > 0) and (AViewInfo.GridRecord.Values[XSTATUS.Index] = 'QUITADO')then
      begin
         ACanvas.Canvas.Brush.Color := clBlue;
         ACanvas.Canvas.Font.Color := clWhite;
         //ACanvas.Canvas.Font.Style:=[fsBold];
      end else
      if (AViewInfo.GridRecord.Values[XSTATUS.Index] = 'CANCELADO') then
      begin
         ACanvas.Canvas.Brush.Color := clPurple;
         ACanvas.Canvas.Font.Color := clWhite;
         //ACanvas.Canvas.Font.Style:=[fsBold];
      end
   end;
end;

procedure TFcad_Conta.cxGridDBTableView1DblClick(Sender: TObject);
begin
   TotalContas((dmFInanceiro.rxSelecVLRBRUTO.AsFLoat*-1));
   dmFinanceiro.rxSelec.Delete;
   if dmFinanceiro.rxSelec.RecordCount<=0 then
      cxSelec.Visible := false;

end;

procedure TFcad_Conta.cxBaixaClick(Sender: TObject);
begin
///// validação de baixa
   ContaBaixa;
   ValidaBaixa;

   dmFinanceiro.rxSelec.First;
   while not dmFinanceiro.rxSelec.eof do
   begin
      if dmFinanceiro.rxSelecSTATUS.AsString <> 'ABERTO' then
      begin
         MessageDlg('Atenção! Apenas contas  em ABERTO são válidas para esta ação, verifique!', mtWarning, [mbOK], 0);
         abort;
      end;
      dmFinanceiro.rxSelec.Next;
   end;

///// Abre Baixa
   Fcon_Baixa := TFcon_baixa.Create(self);
   Fcon_Baixa.CalculaBaixa;
   Fcon_Baixa.ShowMOdal;
   Fcon_baixa.Free;
   cxLimpaClick(self);
   Consulta;
end;

procedure TFcad_Conta.eCodCustoKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in ['0'..'9', #8, ',']) then key := #0;
end;

procedure TFcad_Conta.cxEstornaClick(Sender: TObject);
begin
////// validação
   ContaBaixa;
end;

procedure TFcad_Conta.cxBoletoClick(Sender: TObject);
var
   intConta: Integer;
   Titulo : TACBrTitulo;
begin
///// Validação
   ValidaBaixa;
   GeraBoletosGB(1, 1);
end;

procedure TFcad_Conta.ValidaBaixa;
begin
   if (dmfinanceiro.cdsContas.Active = False) or (dmFinanceiro.cdsCONtas.RecordCount < 1) then
   begin
      MessageDlg('Não há registros, verifique!', mtInformation, [mbOK], 0);
      abort;
   end;
   if (dmFinanceiro.rxSelec.RecordCount < 1) or (FtotalContas <= 0) then
   begin
      MessageDlg('O valor das contas não pode ser zero ou não há registros selecionados, verifique!', mtInformation, [mbOK], 0);
      abort;
   end;
end;

end.
