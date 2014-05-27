unit uCon_Baixa;

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
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxLabel, cxGroupBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  Menus, StdCtrls, cxButtons, RxMemDS, cxCurrencyEdit, ComCtrls, cxListView,
  cxListBox, cxCheckGroup, cxRadioGroup, Grids, DBGrids, DBXpress;

type
  TFcon_Baixa = class(TForm)
    cxSelec: TcxGroupBox;
    cxGroupBox1: TcxGroupBox;
    grSelec: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    STATUS: TcxGridDBColumn;
    IDCONTA: TcxGridDBColumn;
    NOMECLIE: TcxGridDBColumn;
    DTEMISSAO: TcxGridDBColumn;
    DCUMENTO: TcxGridDBColumn;
    VENCTO: TcxGridDBColumn;
    VLRINI: TcxGridDBColumn;
    VLRJUROS: TcxGridDBColumn;
    VLRMULTA: TcxGridDBColumn;
    VLRBRUTO: TcxGridDBColumn;
    DIASATRASO: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    eData: TcxDateEdit;
    cxLabel5: TcxLabel;
    pnBottom: TcxGroupBox;
    cxSeleciona: TcxButton;
    cxFechar: TcxButton;
    cxContas: TcxLabel;
    dsBaixa: TDataSource;
    rxBaixa: TRxMemoryData;
    cxLeft: TcxGroupBox;
    cxBaixa: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    cxGroupBox6: TcxGroupBox;
    cxGroupBox7: TcxGroupBox;
    cxGroupBox8: TcxGroupBox;
    rxBaixaDATAMOV: TDateTimeField;
    rxBaixaIDCAIXA: TIntegerField;
    rxBaixaIDPLANO: TIntegerField;
    rxBaixaIDCARTAO: TFloatField;
    rxBaixaTXCARTAO: TFloatField;
    rxBaixaVLRPAGO: TFloatField;
    rxBaixaIDFPAGTO: TIntegerField;
    eJuros: TcxCurrencyEdit;
    eDesc: TcxCurrencyEdit;
    eTotal: TcxCurrencyEdit;
    ePago: TcxCurrencyEdit;
    eRestante: TcxCurrencyEdit;
    eVlrIni: TcxCurrencyEdit;
    rxBaixaDESCRICAOFPAGTO: TStringField;
    pnCond: TcxGroupBox;
    eFPagto: TcxTextEdit;
    eCodFpagto: TcxTextEdit;
    cxLabel6: TcxLabel;
    eVlrPago: TcxCurrencyEdit;
    cxLabel1: TcxLabel;
    cxOpcao: TcxRadioGroup;
    rxBaixaHISTORICO: TStringField;
    rxBaixaDOC: TStringField;
    VLRPAGO: TcxGridDBColumn;
    DBGrid1: TDBGrid;
    rxFpagto: TRxMemoryData;
    dsFpagto: TDataSource;
    rxFpagtoCODIGO: TIntegerField;
    rxFpagtoDESCRICAO: TStringField;
    ///// Privados
    procedure CalculaBaixa;  // Busca a forma de pagamento
    procedure ValidaBaixa;  // valida a baixa
    procedure BaixaFPagto;  // insere o tipo de fpagto para baixa
    procedure CalculaFPagto; // calcula o que ja foi baixado
    procedure ApagaBaixa;
    procedure GeraTroco;
    procedure ValidaFinalizacao;
    procedure LancaCaixa(intLote: Integer);
    procedure LancaCheques(intLote: Integer);
    procedure QuitaContas(intLote: Integer);
    procedure ImprimeRecibo;
    procedure MenorValor;
    /////
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eVlrPagoExit(Sender: TObject);
    procedure eCodFpagtoExit(Sender: TObject);
    procedure cxGridDBTableView2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure eCodFpagtoKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxSelecionaClick(Sender: TObject);
  private
    { Private declarations }
     idContaMenor, intDocPai: Integer;    
  public
    { Public declarations }
  end;

var
  Fcon_Baixa: TFcon_Baixa;

implementation

uses udmFinanceiro, Rotinas, udmCad, Math;

{$R *.dfm}

procedure TFcon_Baixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := CaFree;
end;

procedure TFcon_Baixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TFcon_Baixa.cxFecharClick(Sender: TObject);
begin
   if (MessageBox(0, 'Deseja realmente desistir desta baixa!', 'Desistir!', MB_ICONWARNING or MB_YESNO or MB_DEFBUTTON2) = idNo) then
      abort;
   Close;
end;

procedure TFcon_Baixa.FormShow(Sender: TObject);
begin
///// organiza
   if StrTipoConta = 'R' then
      cxContas.Caption := 'CONTAS Á RECEBER' else
      cxContas.Caption := 'CONTAS Á PAGAR';
   eData.DAte := Date;
   rxBaixa.Close;
   rxBaixa.Open;
/////
   dmFinanceiro.qryAux.Close;
   dmFinanceiro.qryAux.CommandText := 'select * from GENERICA where TABELA='+QuotedStr('FPAGTO')+' order by IDGENERICA';
   dmFInanceiro.qryAux.Open;
   dmFinanceiro.qryAux.First;
   rxFpagto.Close;
   rxFpagto.Open;
   while not dmFinanceiro.qryAux.Eof do
   begin
      if (StrTipoConta = 'R') and (dmFInanceiro.qryAux.fieldbyname('IDGENERICA').AsInteger=4) then
         dmFinanceiro.qryAux.Next else
         begin
            rxFPagto.Append;
            rxFpagtoCODIGO.AsInteger   := dmFInanceiro.qryAux.fieldbyname('IDGENERICA').AsInteger;
            rxFpagtoDESCRICAO.AsString := dmFInanceiro.qryAux.fieldbyname('DESCRICAO').asString;
            rxFpagto.Post;
         end;
      dmFinanceiro.qryAux.Next;
   end;
   eCOdFpagto.SetFocus;
end;

procedure TFcon_Baixa.CalculaBaixa;
begin
   dmFinanceiro.rxSelec.DisableControls;
   dmFinanceiro.rxSelec.first;
///// Zera os CAmpos
   eVlrini.Value  := 0;
   eJuros.VAlue   := 0;
   eDesc.Value    := 0;
   eTotal.Value   := 0;
   eRestante.VAlue:= 0;
   ePago.Value    := 0;
/////
   while not dmFinanceiro.rxSelec.eof do
   begin
      eVlrIni.Value     := eVlrIni.Value + dmFinanceiro.rxSelecVLRINI.Value;
      eJuros.Value      := ejuros.VAlue + (dmFinanceiro.rxSelecVLRJUROS.Value + dmFinanceiro.rxSelecVLRMULTA.Value);
      eDesc.Value       := eDesc.Value + dmFinanceiro.rxSelecVLRDESC.Value;
      eTotal.Value      := (eVlrini.Value + eJuros.Value) - eDesc.Value;
      eRestante.Value   := eTotal.Value - ePago.Value;
      dmFinanceiro.rxSelec.Next;
   end;
   dmFinanceiro.rxSelec.first;
   dmFinanceiro.rxSelec.EnableControls;
end;

procedure TFcon_Baixa.eVlrPagoExit(Sender: TObject);
begin
   if (eCodFpagto.Text<>'0') and (eVlrPago.value>0) then
   begin
      BaixaFPagto;
   ///// Troco
      if eResTante.Value < 0 then
         GeraTroco;
   ///// Limpa
      ecodFpagto.Text   := '0';
      eFPagto.Clear;
      eVlrPago.Value    := 0;
      eCodFpagto.SetFocus;
   ///// Finaliza
      if eRestante.Value = 0 then
         pnCOnd.VIsible := false;
   end;
end;

procedure TFcon_Baixa.BaixaFPagto;
begin
   rxBaixa.Append;
   rxBaixaDOC.AsString              := Dmfinanceiro.rxSelecIDCONTA.AsString;
   rxBaixaIDFPAGTO.AsInteger        := StrToInt(eCodFpagto.Text);
   rxBaixaDESCRICAOFPAGTO.AsString  := eFpagto.Text;
   rxBaixaDATAMOV.AsDateTime        := eData.Date + Time;
   rxBaixaIDCAIXA.AsInteger         := StrToInt(BUSCACONF('IDCAIXAPADRAO'));
   rxBaixaIDPLANO.AsInteger         := StrToint(BUSCACONF('IDPLANOPADRAO'));
   rxBaixaIDCARTAO.AsInteger        := 0;
   rxBaixaTXCARTAO.AsFloat          := 0;                                 
   rxBaixaVLRPAGO.AsFloat           := eVlrPago.Value;
   if StrTipoConta = 'R' then
      rxBaixaHISTORICO.AsString        := UpperCase('Receb. '+rxBaixaDESCRICAOFPAGTO.AsString) else
   if StrTipoConta = 'P' then
      rxBaixaHISTORICO.AsString        := UpperCase('Pagto. '+rxBaixaDESCRICAOFPAGTO.AsString);
   rxBaixa.Post;
   CalculaFPagto
end;

procedure TFcon_Baixa.ValidaBaixa;
begin
   if (eCodFpagto.Text ='0') or (eCodFpagto.Text='') then
   begin
      MessageDlg('Preencha o campo Forma de Pagamento!', mtWarning, [mbOK], 0);
      eCodFpagto.SetFocus;
      Abort;
   end;
   if (eVlrPago.Value<=0) then
   begin
      MessageDlg('Preencha o campo Forma de Pagamento!', mtWarning, [mbOK], 0);
      eVlrPago.SetFocus;
      Abort;
   end;
end;

procedure TFcon_Baixa.eCodFpagtoExit(Sender: TObject);
begin
///// BuscaFpagto
   if eCodFpagto.text ='0' then
      Exit;
   dmFinanceiro.qryAux.Close;
   dmFinanceiro.qryAux.CommandText := 'select * from GENERICA where TABELA='+QuotedStr('FPAGTO')+' and IDGENERICA='+QuotedStr(eCodFpagto.TExt)+' order by IDGENERICA';
   dmFInanceiro.qryAux.Open;

   if (dmFInanceiro.qryAux.fieldbyname('IDGENERICA').AsInteger<=0) or ((StrTipoConta='R') and (dmFInanceiro.qryAux.fieldbyname('IDGENERICA').AsInteger=4)) then
   begin
      MessageDlg('Forma de Pagamento inválida, verifique!', mtWarning, [mbOK], 0);
      eCodFpagto.Text := '0';
      eFpagto.Clear;
      ecodFpagto.SetFocus;
      abort;
   end;
   if (eCodFPagto.Text = dmFInanceiro.qryAux.fieldbyname('IDGENERICA').asString) then
      eFPagto.Text := dmFInanceiro.qryAux.fieldbyname('DESCRICAO').asString else
   begin
      eCodFPagto.Text := '0';
      eFpagto.CLear;
   end;
end;

procedure TFcon_Baixa.cxGridDBTableView2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (Key = VK_DELETE) and (cxOpcao.Visible = true) then
   begin
      ApagaBaixa;
      pnCond.Visible := true;      
   end;
end;

procedure TFcon_Baixa.CalculaFPagto;
var FpValor: Double;
begin
   FpValor := 0;

   rxBaixa.First;
   while not rxBaixa.Eof do
   begin
      FpValor := FpValor + rxBaixaVLRPAGO.VAlue;
      rxBaixa.Next;
   end;
   ePago.Value := FpValor;
   eRestante.Value := eTotal.Value - FpValor;
end;

procedure TFcon_Baixa.cxGridDBTableView2DblClick(Sender: TObject);
begin
   ApagaBaixa;
end;

procedure TFcon_Baixa.eCodFpagtoKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in ['0'..'9', #8, ',']) then key := #0;
end;

procedure TFcon_Baixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
///// Deletar formas de pagamento
   if Key = VK_F2 then
   begin
      RxBAixa.Last;
      ApagaBaixa;
   end;
///// opção (F2)
   if Key = VK_F1 then
   begin
      if cxOpcao.Itemindex = 0 then
         cxOpcao.ItemIndex := 1 else
         cxOpcao.Itemindex  := 0;
   end;
//// Baixar (F4)
   if Key = Vk_F4 then
      cxSelecionaClick(self);

///// Cancelar (F10)
   if key = VK_F10 then
      cxFecharClick(self);
end;

procedure TFcon_Baixa.ApagaBaixa;
begin
   if Rxbaixa.RecordCount > 0 then
   begin
      RxBaixa.Delete;
      CalculaFPagto;
   end;
   pnCond.Visible := true;
   eCodFpagto.SetFocus;
end;

procedure TFcon_Baixa.GeraTroco;
begin
   rxBaixa.Append;
   rxBaixaIDFPAGTO.AsInteger        := 0;
   rxBaixaDESCRICAOFPAGTO.AsString  := 'TROCO';
   rxBaixaDATAMOV.AsDateTime        := eData.Date + Time;
   rxBaixaIDCAIXA.AsInteger         := StrToInt(BUSCACONF('IDCAIXAPADRAO'));
   rxBaixaIDPLANO.AsInteger         := StrToint(BUSCACONF('IDPLANOPADRAO'));
   rxBaixaIDCARTAO.AsInteger        := 0;
   rxBaixaTXCARTAO.AsFloat          := 0;
   rxBaixaVLRPAGO.AsFloat           := eResTante.VAlue;
   rxBaixa.Post;
   CalculaFPagto;
end;

procedure TFcon_Baixa.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
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

procedure TFcon_Baixa.cxSelecionaClick(Sender: TObject);
var
   intLote: Integer;
begin
///// Valida Baixa
   ValidaFinalizacao;

///// Determina o Numero do Lote
   dmFinanceiro.qryGen.Close;
   dmFinanceiro.qryGen.CommandText := 'SELECT GEN_ID(GEN_IDLOTE,1) CODIGO FROM DUAL';
   dmFinanceiro.qryGen.Open;
   intLote := dmFinanceiro.qryGen.FieldByName('CODIGO').asInteger;
   if intLote > 0 then
   begin
   ///// Lanca no banco
      LancaCaixa(intLote);
   ///// Lança Cheques
      LancaCheques(intLote);
   ///// Baixa duplicatas
      QuitaContas(intLote);
   ///// Imprime Recibo se tiver marcado
   if cxOpcao.ItemIndex =1 then
      ImprimeRecibo;
   ///// Fecha o FOrm
      close;
   end else
   begin
      MessageDlg('Não foi gerado lote para baixa, verifique!', mtInformation, [mbOK], 0);
      abort;
   end;
end;

procedure TFcon_Baixa.ValidaFinalizacao;
begin
   if eRestante.Value <> 0 then
   begin
      MessageDlg('Existe valor restante, verifique!', mtWarning, [mbOK], 0);
      ecodFpagto.SetFocus;
      abort;
   end;
   if Copy(eData.text, 1, 2) = '  ' then
   begin
      MessageDlg('Existe valor restante, verifique!', mtWarning, [mbOK], 0);
      eData.Date := now;
      eData.SetFocus;
      abort;
   end; 
end;

procedure TFcon_Baixa.ImprimeRecibo;
begin
//
end;

procedure TFcon_Baixa.LancaCaixa(intLote: Integer);
begin
   rxBaixa.First;
   while not RxBaixa.Eof do
   begin
      if StrTipoCOnta = 'R' then
      begin
      ///// DINHEIRO
         if rxBaixaIDFPAGTO.AsInteger = 1  then
            LancamentoCaixa(Date + Time, rxBaixaDOC.AsString, rxBaixaHISTORICO.AsString, rxBaixaIDPLANO.AsString, rxBaixaVLRPAGO.AsFloat, 0, rxBaixaIDFPAGTO.AsInteger, rxBaixaIDCAIXA.AsInteger, intLote);
      ///// CARTÂO
         if rxBaixaIDFPAGTO.AsInteger = 2 then
         begin
            LancamentoCaixa(Date + Time, rxBaixaDOC.AsString, rxBaixaHISTORICO.AsString, rxBaixaIDPLANO.AsString, rxBaixaVLRPAGO.AsFloat, 0, rxBaixaIDFPAGTO.AsInteger, rxBaixaIDCAIXA.AsInteger, intLote);
         end;
      ///// CHEQUES TERCEIROS
         if dmFinanceiro.rxSelecIDFPAGTO.AsInteger = 3 then
            LancamentoCaixa(Date + Time, rxBaixaDOC.AsString, rxBaixaHISTORICO.AsString, rxBaixaIDPLANO.AsString, rxBaixaVLRPAGO.AsFloat, 0, rxBaixaIDFPAGTO.AsInteger, rxBaixaIDCAIXA.AsInteger, intLote);
      end else
      if StrTipoCOnta = 'P' then
      begin
      ///// DINHEIRO
         if rxBaixaIDFPAGTO.AsInteger = 1 then
            LancamentoCaixa(Date + Time, rxBaixaDOC.AsString, rxBaixaHISTORICO.AsString, rxBaixaIDPLANO.AsString, rxBaixaVLRPAGO.AsFloat, 0, rxBaixaIDFPAGTO.AsInteger, rxBaixaIDCAIXA.AsInteger, intLote);
      ///// CARTÂO
         if rxBaixaIDFPAGTO.AsInteger = 2 then
         begin
            LancamentoCaixa(Date + Time, rxBaixaDOC.AsString, rxBaixaHISTORICO.AsString, rxBaixaIDPLANO.AsString, rxBaixaVLRPAGO.AsFloat, 0, rxBaixaIDFPAGTO.AsInteger, rxBaixaIDCAIXA.AsInteger, intLote);
         end;
      ///// CHEQUES TERCEIROS
         if dmFinanceiro.rxSelecIDFPAGTO.AsInteger = 3 then
            LancamentoCaixa(Date + Time, rxBaixaDOC.AsString, rxBaixaHISTORICO.AsString, rxBaixaIDPLANO.AsString, rxBaixaVLRPAGO.AsFloat, 0, rxBaixaIDFPAGTO.AsInteger, rxBaixaIDCAIXA.AsInteger, intLote);
      ///// CHEQUES PROPRIOS
         if dmFinanceiro.rxSelecIDFPAGTO.AsInteger = 4 then
            LancamentoCaixa(Date + Time, rxBaixaDOC.AsString, rxBaixaHISTORICO.AsString, rxBaixaIDPLANO.AsString, rxBaixaVLRPAGO.AsFloat, 0, rxBaixaIDFPAGTO.AsInteger, rxBaixaIDCAIXA.AsInteger, intLote);
      end;
      rxBaixa.Next;
   end;
end;

procedure TFcon_Baixa.LancaCheques(intLote: Integer);
begin
//
end;

procedure TFcon_Baixa.QuitaContas(intLote: Integer);
begin
   dmFInanceiro.rxSelec.First;
   while not dmFinanceiro.rxSelec.Eof do
   begin
      dmFinanceiro.qryAux.Close;
      dmFinanceiro.cdsAux.Close;
      dmFinanceiro.cdsAux.Commandtext := 'update conta set DTBAIXA=:DTBAIXA, VLRPAGO=:VLRPAGO, STATUSCONTA=:STATUS, IDCARTAO=:IDCARTAO, ' +
         ' VLRJUROS=:JUROS, VLRMULTA=:MULTA, HISTORICO=:HISTORICO, VLRDESC=:DESCONTO, IDLOTE=:IDLOTE, DIASATRASO=:DIASATRASO where IDCONTA=:ID';
      dmFinanceiro.cdsAux.Params.Parambyname('DTBAIXA').AsDate        := edata.date + Time;
      dmFinanceiro.cdsAux.Params.Parambyname('VLRPAGO').AsFloat       := (dmFinanceiro.rxSelecVLRINI.value + dmFinanceiro.rxSelecVLRJUROS.Value + dmFinanceiro.rxSelecVLRMULTA.value) - dmFinanceiro.rxSelecVLRDESC.Value;
      dmFinanceiro.cdsAux.Params.Parambyname('STATUS').AsString       := 'QUITADO';
      dmFinanceiro.cdsAux.Params.Parambyname('DIASATRASO').asInteger  := dmFinanceiro.rxSelecDIASATRASO.Asinteger;
      dmFinanceiro.cdsAux.Params.Parambyname('JUROS').AsFloat         := dmFinanceiro.rxSelecVLRJUROS.AsFloat;
      dmFinanceiro.cdsAux.Params.Parambyname('MULTA').AsFloat         := dmFinanceiro.rxSelecVLRMULTA.AsFLoat;
      if eRestante.Value > 0 then
         dmFinanceiro.cdsAux.Params.Parambyname('HISTORICO').AsString := 'Quitado Parcialmente no Lote: ' + IntTOStr(intLote) else
         dmFinanceiro.cdsAux.Params.Parambyname('HISTORICO').AsString := 'Quitado Totalmente no lote Lote: ' + IntTOStr(intLote);

      dmFinanceiro.cdsAux.Params.Parambyname('DESCONTO').AsFloat      := dmFinanceiro.rxSelecVLRDESC.AsFloat;
      dmFinanceiro.cdsAux.Params.Parambyname('ID').AsInteger          := dmFinanceiro.rxSelecIDCONTA.AsInteger;
      dmFInanceiro.cdsAux.Params.Parambyname('IDCARTAO').asInteger    := 0;
      dmFinanceiro.cdsAux.Params.Parambyname('IDLOTE').asInteger      := intLote;
      try
         dmFinanceiro.cdsAux.Execute;
         cxSeleciona.Tag := 1; // Foi baixado
      except
         dmFinanceiro.cdsAux.Cancel;
      end;
      dmFinanceiro.rxSelec.Next;
   end;
end;

procedure TFcon_Baixa.MenorValor;
var
   idCLie: Integer;
   FMenorValor: Double;
begin
///// Limpa as Variaveis
   idClie := 0;
   FMenorValor := 0;
/////
   dmFinanceiro.rxSelec.First;
   while (not dmFinanceiro.rxSelec.EOF) do // Verifica valor de duplicata se o restante não é maior que o menor valor!
   begin
      if ((dmFinanceiro.rxSelecVLRINI.Value + dmFinanceiro.rxSelecVLRJUROS.Value + dmFinanceiro.rxSelecVLRMULTA.Value) - dmFinanceiro.rxSelecVLRDESC.value) > (FMenorValor) then
      begin
         ///// Verifica é baixa agrupada de varios clientes (nao pode para parcial)
         if (idClie <> 0) then
            if idClie <> dmFinanceiro.rxSelecIDCLIE.AsInteger then
            begin
               MessageDlg('Atenção! Esta baixa agrupada não pode ser completada com clientes diferentes e gerando (crédito, baixa parcial ou desconto).', mtInformation, [mbOK], 0);
               abort;
            end;
   ///// pega o Codigo do menor registro para baixa parcial
         if FMenorValor <= 0 then //  Se o menor valor é igual a zero pega a primeira conta
            idContaMenor := dmFinanceiro.rxSelecIDCONTA.AsInteger else
            if FMenorVAlor > 0 then // se for maior que zero então pega o valor da menor conta se houver
            if FMenorValor < ((dmFinanceiro.rxSelecVLRINI.Value + dmFinanceiro.rxSelecVLRJUROS.Value + dmFinanceiro.rxSelecVLRMULTA.Value) - dmFinanceiro.rxSelecVLRDESC.value) then
               idContaMenor := dmFinanceiro.rxSelecIDCONTA.AsInteger;
         FMenorValor := ((dmFinanceiro.rxSelecVLRINI.Value + dmFinanceiro.rxSelecVLRJUROS.Value + dmFinanceiro.rxSelecVLRMULTA.Value) - dmFinanceiro.rxSelecVLRDESC.value);
         dmFinanceiro.rxSelec.NExt;
      end else
         dmFinanceiro.rxSelec.NExt;
   end;
end;

end.
