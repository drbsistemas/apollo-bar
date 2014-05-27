unit uCad_Caixa;

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
  cxGridCustomView, cxGrid, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLabel, cxGroupBox, cxCalendar, cxButtonEdit, cxCheckBox,
  cxCurrencyEdit, RxMemDS;

type
  TFcad_Caixa = class(TForm)
    pnCad: TcxGroupBox;
    pnCon: TcxGroupBox;
    pnConsulta: TcxGroupBox;
    cxLabel1: TcxLabel;
    cbOrdem: TcxComboBox;
    cxLabel2: TcxLabel;
    eConsulta: TcxTextEdit;
    btnCon: TcxButton;
    cxNovo: TcxButton;
    cxEditar: TcxButton;
    cxVisualiza: TcxButton;
    cxApaga: TcxButton;
    cxSair: TcxButton;
    cxLabel3: TcxLabel;
    eCodigo: TcxTextEdit;
    cxLabel4: TcxLabel;
    eAgencia: TcxTextEdit;
    cxLabel5: TcxLabel;
    eTitular: TcxTextEdit;
    eAtivo: TcxCheckBox;
    cxLabel9: TcxLabel;
    eCodBanco: TcxButtonEdit;
    eBanco: TcxTextEdit;
    cxLabel12: TcxLabel;
    eDtCad: TcxDateEdit;
    cxMenuCad: TcxGroupBox;
    cxSalvar: TcxButton;
    cxDesistir: TcxButton;
    cxLabel8: TcxLabel;
    eConta: TcxTextEdit;
    cxLabel10: TcxLabel;
    eContaDig: TcxTextEdit;
    cxLabel13: TcxLabel;
    edtFechado: TcxDateEdit;
    cxLabel14: TcxLabel;
    eSaldo: TcxCurrencyEdit;
    eSaldoConciliado: TcxCurrencyEdit;
    cxLabel15: TcxLabel;
    cbTipo: TcxComboBox;
    cxLabel6: TcxLabel;
    grConsulta: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    SALDOCONC: TcxGridDBColumn;
    cbBottom: TcxGroupBox;
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGridDBTableView3Column2: TcxGridDBColumn;
    cxGridDBTableView3Column3: TcxGridDBColumn;
    cxGridDBTableView3Column4: TcxGridDBColumn;
    RxResumo: TRxMemoryData;
    dsResumo: TDataSource;
    RxResumoDESCRICAO: TStringField;
    RxResumoVALOR: TFloatField;
    eAgenciaDig: TcxTextEdit;
    cxLabel7: TcxLabel;
    eInst1: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    eInst2: TcxTextEdit;
    cxLabel18: TcxLabel;
    eInst3: TcxTextEdit;
    cxLabel19: TcxLabel;
    eInst4: TcxTextEdit;
    eEspecieDoc: TcxTextEdit;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    eLocaPagto: TcxTextEdit;
    cxLabel23: TcxLabel;
    ePercJuros: TcxCurrencyEdit;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    ePercMulta: TcxCurrencyEdit;
    cxLabel26: TcxLabel;
    eDiasProtesto: TcxTextEdit;
    cxLabel27: TcxLabel;
    eNossoNum: TcxTextEdit;
    cbAceite: TcxComboBox;
    cxLabel20: TcxLabel;
    eDiasCarencia: TcxTextEdit;
    cxLabel28: TcxLabel;
    eCodCarteira: TcxTextEdit;
    eTamNosso: TcxTextEdit;
    cxLabel29: TcxLabel;
    eCodCedente: TcxTextEdit;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    eModDoc: TcxTextEdit;
    ///// Privados
    procedure MudaPainel(intMuda: integer);
    procedure Limpa;
    procedure Editar;
    procedure Consulta;
    procedure COnsultaItem;
    procedure SomaFpagto;
    /////
    procedure cxSairClick(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure cxDesistirClick(Sender: TObject);
    procedure cxEditarClick(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbOrdemPropertiesChange(Sender: TObject);
    procedure cxApagaClick(Sender: TObject);
    procedure btnConClick(Sender: TObject);
    procedure eConsultaPropertiesChange(Sender: TObject);
    procedure cxGridDBTableView3CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView2CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure eAgenciaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
     indice : String;
  public
    { Public declarations }
  end;

var
  Fcad_Caixa: TFcad_Caixa;

implementation

uses udmFinanceiro, Rotinas;

{$R *.dfm}

procedure TFcad_Caixa.cxSairClick(Sender: TObject);
begin
   close;
end;

procedure TFcad_Caixa.Limpa;
var j: integer;
begin
   with Fcad_Caixa do
   begin
      for j := 0 to ComponentCount - 1 do
      begin
         if (Components[j] is TcxTextEdit) then
         (Components[j] as TcxTextEdit).text := '';
         if (Components[j] is TcxDateEdit) then
         (Components[j] as TcxDateEdit).text := '';
         if (Components[j] is TcxButtonEdit) then
         (Components[j] as TcxButtonEdit).TExt := '0';
         if (Components[j] is TcxCurrencyEdit) then
         (Components[j] as TcxCurrencyEdit).Value := 0;
         if (Components[j] is TcxCheckBox) then
         (Components[j] as TcxCheckBox).Checked := False;
         if (Components[j] is TcxComboBox) then
         (Components[j] as TcxComboBox).ItemIndex :=0;
      end;
   end;
end;

procedure TFcad_Caixa.MudaPainel(intMuda: integer);
begin
   if intMuda=0 then // COnsulta
   begin
      pnCon.Visible     := true;
      pnCad.Visible     := false;
      cxSalvar.Enabled  := true;
   end else
   if intMuda = 1 then // cadastro
   begin
      pnCon.Visible     := false;
      pnCad.Visible     := true;
   end;
end;

procedure TFcad_Caixa.cxNovoClick(Sender: TObject);
begin
   SistemaLiberado;
   MudaPainel(1); // Cadastro
   Limpa;
///// Padroniza
   eCodigo.Text      := '0';
   cxSalvar.Tag      := 1; // Incluir
   eAtivo.Checked    := true;
   eDtCad.Date       := date;
end;

procedure TFcad_Caixa.cxDesistirClick(Sender: TObject);
begin
   if not Msg('Deseja realmente desistir?', 'P') then
      abort;
    MudaPainel(0); // COnsulta;
    Consulta;
    eCOnsulta.SetFocus;
end;

procedure TFcad_Caixa.cxEditarClick(Sender: TObject);
begin
   SistemaLiberado;
   if (dmFinanceiro.cdsCaixa.Active = false) or (dmFinanceiro.cdsCaixa.RecordCount<1) then
   begin
      MessageDlg('Não há registros identificados, verifique!', mtInformation, [mbOK], 0);
      abort;
   end;
   MudaPainel(1); // Cadastro
   Editar;
   cxNovo.tag := 0; // Editar
   eAgencia.SetFocus;
end;

procedure TFcad_Caixa.Editar;
begin
   eCOdigo.TExt := dmFInanceiro.cdsCaixaIDCAIXA.AsString;

   ecodBanco.Text         := dmFinanceiro.cdsCaixaIDBANCO.AsString;
   eAgencia.TExt          := dmFinanceiro.cdsCaixaAGENCIA.AsString;
   eAgenciaDig.TExt       := dmFinanceiro.cdsCaixaAGENCIA_DIG.AsString;
   eConta.TExt            := dmFinanceiro.cdsCaixaCONTA.AsString;
   eContaDig.TExt         := dmFinanceiro.cdsCaixaCONTA_DIG.AsString;
   eTitular.TExt          := dmFinanceiro.cdsCaixaTITULAR.AsString;
   eDtCad.Date            := dmFinanceiro.cdsCaixaDTABERTURA.AsDateTime;
   edtFechado.Date        := dmFInanceiro.cdsCaixaDTFECHADO.AsDateTIme;
   eSaldo.Value           :=dmFInanceiro.cdsCaixaSALDOCAIXA.ASFloat;
   eSaldoConciliado.Value := dmFinanceiro.cdsCaixaSALDOCONCILIADO.ASFLoat;
   if dmFInanceiro.cdsCaixaTIPOCAIXA.AsString = 'S' then
      cbTIpo.Itemindex := 0 else
      cbTipo.ItemIndex := 1;

   ///// Boletos
   eEspecieDoc.Text        := dmFinanceiro.cdsCaixaBOL_ESPECIEDOC.AsString;
   if dmFinanceiro.cdsCaixaBOL_ACEITE.AsString = 'S' then
      cbAceite.ItemIndex :=0 else
      cbAceite.ItemIndex :=1;
   eNossoNum.TExt          := dmFinanceiro.cdsCaixaBOL_NOSSONUMERO.AsString;
   eLocaPagto.Text         := dmFinanceiro.cdsCaixaBOL_LOCALPAGTO.AsString;
   ePercJuros.Value        := dmFinanceiro.cdsCaixaBOL_PERCJUROS.ASFloat;
   ePercMulta.Value        := dmFinanceiro.cdsCaixaBOL_PERCMULTA.AsFLoat;
   eDiasProtesto.Text      := dmFinanceiro.cdsCaixaBOL_DIASPROTESTO.AsString;
   eInst1.Text             := dmFinanceiro.cdsCaixaBOL_INST1.AsString;
   eInst2.Text             := dmFinanceiro.cdsCaixaBOL_INST2.AsString;
   eInst3.Text             := dmFinanceiro.cdsCaixaBOL_INST3.AsString;
   eInst4.Text             := dmFinanceiro.cdsCaixaBOL_INST4.AsString;
   eTamNosso.Text          := dmfinanceiro.cdsCaixaBOL_TAMNOSSONUMERO.AsString;
   eCodCarteira.Text       := dmfinanceiro.cdsCaixaBOL_CARTEIRA.AsString;
   eCodCedente.Text        := dmfinanceiro.cdsCaixaBOL_CODCEDENTE.AsString;
   eModDoc.Text            := dmFinanceiro.cdsCaixaBOL_ESPECIEMOD.AsString;
   eDiasCarencia.Text      := dmfinanceiro.cdsCaixaBOL_DIASCARENCIA.AsString;
   /////
end;

procedure TFcad_Caixa.cxSalvarClick(Sender: TObject);
begin
   if eCodigo.text='0' then
      dmFinanceiro.cdsCaixa.Insert else
      dmFInanceiro.cdsCAixa.Edit;

   dmFinanceiro.cdsCaixaIDBANCO.ASinteger       := StrToInt(ecodBanco.Text);
   dmFinanceiro.cdsCaixaAGENCIA.AsString        := eAgencia.TExt;
   dmFinanceiro.cdsCaixaAGENCIA_DIG.AsString    := eAgenciaDig.TExt;
   dmFinanceiro.cdsCaixaCONTA.AsString          := eConta.TExt;
   dmFinanceiro.cdsCaixaCONTA_DIG.AsString      := eContaDig.TExt;
   dmFinanceiro.cdsCaixaTITULAR.AsString        := eTitular.TExt;
   dmFinanceiro.cdsCaixaDTABERTURA.AsDateTime   := eDtCad.Date+Time;
   if edtFEchado.Text <> '' then
      dmFInanceiro.cdsCaixaDTFECHADO.AsDateTIme := edtFechado.Date;
   dmFInanceiro.cdsCaixaSALDOCAIXA.ASFloat      := eSaldo.Value;
   dmFinanceiro.cdsCaixaSALDOCONCILIADO.ASFLoat := eSaldoConciliado.Value;
   if cbTIpo.Itemindex= 0 then
      dmFInanceiro.cdsCaixaTIPOCAIXA.AsString      := 'S' else
      dmFInanceiro.cdsCaixaTIPOCAIXA.AsString      := 'N';

   ///// Boletos
   dmFinanceiro.cdsCaixaBOL_ESPECIEDOC.AsString    := eEspecieDoc.Text;
   if cbAceite.ItemIndex=0 then
      dmFinanceiro.cdsCaixaBOL_ACEITE.AsString     := 'S' else
      dmFinanceiro.cdsCaixaBOL_ACEITE.AsString     := 'N';
   dmFinanceiro.cdsCaixaBOL_NOSSONUMERO.AsString   := eNossoNum.TExt;
   dmFinanceiro.cdsCaixaBOL_LOCALPAGTO.AsString    := eLocaPagto.Text;
   dmFinanceiro.cdsCaixaBOL_PERCJUROS.ASFloat      := ePercJuros.Value;
   dmFinanceiro.cdsCaixaBOL_PERCMULTA.AsFLoat      := ePercMulta.Value;
   dmFinanceiro.cdsCaixaBOL_DIASPROTESTO.AsInteger := StrToint(eDiasProtesto.Text);
   dmFinanceiro.cdsCaixaBOL_INST1.AsString         := eInst1.Text;
   dmFinanceiro.cdsCaixaBOL_INST2.AsString         := eInst2.Text;
   dmFinanceiro.cdsCaixaBOL_INST3.AsString         := eInst3.Text;
   dmFinanceiro.cdsCaixaBOL_INST4.AsString         := eInst4.Text;
   dmfinanceiro.cdsCaixaBOL_TAMNOSSONUMERO.AsString:= eTamNosso.Text;
   dmfinanceiro.cdsCaixaBOL_CARTEIRA.AsString      := eCodCarteira.Text;
   dmfinanceiro.cdsCaixaBOL_CODCEDENTE.AsString    := eCodCedente.Text;
   dmFinanceiro.cdsCaixaBOL_ESPECIEMOD.AsString    := eModDoc.Text;
   dmfinanceiro.cdsCaixaBOL_DIASCARENCIA.AsInteger := StrToint(eDiasCarencia.Text);
   /////
   try
      dmFinanceiro.cdsCaixa.POst;
      dmFinanceiro.cdsCaixa.ApplyUpdates(0);
      Consulta;
      MudaPainel(0); // Consulta;
      eConsulta.SetFocus;
   except
      dmFinanceiro.cdsCaixa.CancelUpdates();
   end;
end;

procedure TFcad_Caixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if pnCad.Visible = true then
   begin
      MessageDlg('O registro esta em modo de cadastro, não pode ser fechado!', mtWarning, [mbOK], 0);
      abort;
   end;
   PFundo(1);
   FormAtivo      := Nil;
   Fcad_Caixa     := nil;
   Action         := CaFree;
end;

procedure TFcad_Caixa.FormShow(Sender: TObject);
begin
   FormAtivo     := Fcad_Caixa;
   MudaPainel(0); // Consulta
   indice        := 'IDCAIXA';
   cbOrdem.ItemIndex:=1;
   cbOrdemPropertiesChange(sender);
end;

procedure TFcad_Caixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then Close;
   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TFcad_Caixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (key = VK_DOWN) and (not grConsulta.Focused = true) then
      dmFinanceiro.cdsCaixa.Next else
   if (key = VK_Up) and (not grConsulta.Focused = true) then
      dmFinanceiro.cdsCaixa.Prior;
end;

procedure TFcad_Caixa.cbOrdemPropertiesChange(Sender: TObject);
begin
   if cbOrdem.ItemIndex = 0 then
      indice := 'IDCAIXA' else
   if cbOrdem.Itemindex = 1 then
      indice := 'BANCO';
   Consulta;
   if pncon.Visible = true then
      econSulta.SetFocus;   
end;

procedure TFcad_Caixa.Consulta;
begin
   dmFinanceiro.cdsCaixa.Close;
   dmFinanceiro.cdsCaixa.CommandText := 'Select A.*, B.BANCO from CAIXA A '+
   ' left join BANCO B on A.IDBANCO=B.IDBANCO where IDCAIXA>0 '+
   ' and '+indice+' like '+QuotedStr('%'+eConsulta.TExt+'%');
   dmFInanceiro.cdsCaixa.Open;
   dmFinanceiro.cdsCAixa.First;

   COnsultaItem;
end;

procedure TFcad_Caixa.cxApagaClick(Sender: TObject);
begin
   SistemaLiberado;
   if (dmFinanceiro.cdsCaixa.Active = false) or (dmFinanceiro.cdsCaixa.RecordCount<1) then
   begin
      MessageDlg('Não há registros identificados, verifique!', mtInformation, [mbOK], 0);
      abort;
   end;
   if (MessageBox(0, 'Tem certeza que deseja apagar este registro?', 'Apagar?', MB_ICONINFORMATION or MB_YESNO or MB_TASKMODAL or MB_DEFBUTTON2) = idNo) then
      abort;
   try
      dmFinanceiro.cdsCaixa.Delete;
      dmFinanceiro.cdsCaixa.ApplyUpdates(0);
   except
      dmFinanceiro.cdsCaixa.CancelUpdates;
      MessageDlg('Não foi possível apagar este registro, tente novamente!', mtInformation, [mbOK], 0);
   end;
end;

procedure TFcad_Caixa.COnsultaItem;
begin
   dmFinanceiro.cdsItCaixa.Close;
   dmFinanceiro.cdsItCaixa.CommandText := 'Select * from ITEMCAIXA '+
   ' where IDITEMCAIXA>0 and IDCAIXA='+dmFInanceiro.cdsCaixaIDCAIXA.ASString +
   ' order by DATAITEM ';
   dmFinanceiro.cdsItCaixa.Open;
   dmFinanceiro.cdsItCaixa.Last;
   SomaFPagto;
end;

procedure TFcad_Caixa.btnConClick(Sender: TObject);
begin
   COnsulta;
   eCOnsulta.SetFOcus;
end;

procedure TFcad_Caixa.eConsultaPropertiesChange(Sender: TObject);
begin
   if dmFinanceiro.cdsCaixa.Active=true then
   begin
      if (trim(eConsulta.Text)='') then
      begin
         dmFinanceiro.cdsCaixa.First;
         Consulta;
      end;
      try
         dmFinanceiro.cdsCaixa.Locate(indice,eConsulta.Text,[loPartialKey]);
      except
      end;
   end;
end;

procedure TFcad_Caixa.cxGridDBTableView3CustomDrawCell(
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
end;

procedure TFcad_Caixa.cxGridDBTableView1CustomDrawCell(
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
end;

procedure TFcad_Caixa.cxGridDBTableView2CustomDrawCell(
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
end;

procedure TFcad_Caixa.SomaFpagto;
begin
   dmFinanceiro.qryAux.Close;
   dmFinanceiro.qryAux.CommandText := 'select Sum(A.CREDITO-A.DEBITO) VALOR, A.IDFPAGTO, B.DESCRICAO from ITEMCAIXA A '+
      ' left join GENERICA B on A.IDFPAGTO=B.IDGENERICA and B.TABELA='+QuotedStr('FPAGTO')+
      ' where A.IDCAIXA='+dmFinanceiro.cdsCaixaIDCAIXA.AsString +
      ' group by IDFPAGTO, DESCRICAO ';
   dmFinanceiro.qryAux.Open;
   dmFinanceiro.qryAux.First;
   ///// Abre Rx
   RxResumo.Close;
   RxResumo.Open;
   while not dmFinanceiro.qryAux.Eof do
   begin
      RxResumo.Append;
      RxResumoDESCRICAO.AsString := dmFinanceiro.qryAux.Fieldbyname('DESCRICAO').asString;
      RxResumoVALOR.AsFloat      := dmFinanceiro.qryAux.Fieldbyname('VALOR').AsFloat;
      RxResumo.Post;
      dmFinanceiro.qryAux.Next;
   end;
end;

procedure TFcad_Caixa.eAgenciaKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in ['0'..'9', #8, ',']) then key := #0;
end;

end.
