unit uCad_Prod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxSkinsCore, dxSkinsdxBarPainter, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxBar, cxClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Menus,
  StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxCheckBox,
  cxButtonEdit, cxPC, cxCalendar, cxCurrencyEdit, cxGroupBox, cxMemo,
  cxImage, dxGDIPlusClasses, ComCtrls, ShlObj, cxShellCommon,
  cxShellListView, cxShellBrowserDialog, UCBase, ExtDlgs;

type
  TFcad_Prod = class(TForm)
    pnCad: TcxGroupBox;
    cxGroupBox1: TcxGroupBox;
    cxLabel4: TcxLabel;
    eCodigo: TcxTextEdit;
    cxLabel5: TcxLabel;
    eRef: TcxTextEdit;
    cxLabel6: TcxLabel;
    eProduto: TcxTextEdit;
    eAtivo: TcxCheckBox;
    eMarca: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    eUn: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    eCodFornec: TcxButtonEdit;
    eFornec: TcxTextEdit;
    eGrupo: TcxTextEdit;
    eCodGrupo: TcxButtonEdit;
    eSubGrupo: TcxTextEdit;
    eCodSub: TcxButtonEdit;
    cxLabel11: TcxLabel;
    eCodbar: TcxTextEdit;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    eDtCad: TcxDateEdit;
    pnCon: TcxGroupBox;
    cxPage: TcxPageControl;
    cxVenda: TcxTabSheet;
    ePrecoCpr: TcxCurrencyEdit;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    eCustoCpr: TcxCurrencyEdit;
    cxLabel16: TcxLabel;
    eCustoProd: TcxCurrencyEdit;
    eMl: TcxCurrencyEdit;
    cxLabel17: TcxLabel;
    cxLabel19: TcxLabel;
    eDescMax: TcxCurrencyEdit;
    cxLabel18: TcxLabel;
    ePrecoVenda: TcxCurrencyEdit;
    cxLabel20: TcxLabel;
    ePrecoMin: TcxCurrencyEdit;
    cxLabel21: TcxLabel;
    eCustoMedio: TcxCurrencyEdit;
    cxLabel22: TcxLabel;
    eComissao: TcxCurrencyEdit;
    cxEstoque: TcxTabSheet;
    eEstoqueDisp: TcxCurrencyEdit;
    cxLabel23: TcxLabel;
    eEstoqueTotal: TcxCurrencyEdit;
    cxLabel24: TcxLabel;
    eQtdeMin: TcxCurrencyEdit;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    eQtdeMax: TcxCurrencyEdit;
    cxLabel27: TcxLabel;
    ePesoL: TcxCurrencyEdit;
    ePesoB: TcxCurrencyEdit;
    cxLabel28: TcxLabel;
    eObs: TcxMemo;
    cxLabel29: TcxLabel;
    cxImage: TcxImage;
    btnCancelar: TcxButton;
    btnGravar: TcxButton;
    eFoto: TcxTextEdit;
    UCControls1: TUCControls;
    cxMenuCad: TcxGroupBox;
    cxSalvar: TcxButton;
    cxDesistir: TcxButton;
    eFile2: TOpenPictureDialog;
    grConsulta: TcxGrid;
    grConsultaDBTableView1: TcxGridDBTableView;
    IDPROD: TcxGridDBColumn;
    REFPROD: TcxGridDBColumn;
    PRODUTO: TcxGridDBColumn;
    UNPROD: TcxGridDBColumn;
    MARCAPROD: TcxGridDBColumn;
    ESTOQUEDISP: TcxGridDBColumn;
    ESTOQUETOTAL: TcxGridDBColumn;
    CUSTO: TcxGridDBColumn;
    PRECOVENDA: TcxGridDBColumn;
    CODBAR: TcxGridDBColumn;
    grConsultaLevel1: TcxGridLevel;
    eDescricao: TcxMemo;
    cxLabel30: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxLabel31: TcxLabel;
    cbOrdem: TcxComboBox;
    cxLabel32: TcxLabel;
    eConsulta: TcxTextEdit;
    cxLabel33: TcxLabel;
    cbAtivo: TcxComboBox;
    btnCon: TcxButton;
    cxNovo: TcxButton;
    cxEditar: TcxButton;
    cxVisualiza: TcxButton;
    cxApaga: TcxButton;
    cxPrint: TcxButton;
    cxSair: TcxButton;
    cxQtdeReg: TcxLabel;
    cxMov: TcxButton;
    cxConEstoque: TcxButton;
    ///// Privados
    procedure MudaPainel(intMuda: integer);
    procedure Limpa;
    procedure Consulta;
    procedure Validar;
    procedure Editar;
    /////
    procedure dxSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cbOrdemPropertiesChange(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure eConsultaPropertiesChange(Sender: TObject);
    procedure cbAtivoClick(Sender: TObject);
    procedure btnConClick(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure cxSairClick(Sender: TObject);
    procedure cxApagaClick(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
    procedure cxDesistirClick(Sender: TObject);
    procedure ePrecoCprExit(Sender: TObject);
    procedure eCustoProdExit(Sender: TObject);
    procedure eMlExit(Sender: TObject);
    procedure ePrecoVendaExit(Sender: TObject);
    procedure ePrecoMinExit(Sender: TObject);
    procedure eDescMaxExit(Sender: TObject);
    procedure eCustoCprExit(Sender: TObject);
    procedure cxEditarClick(Sender: TObject);
    procedure cxVisualizaClick(Sender: TObject);
    procedure grConsultaDBTableView1DblClick(Sender: TObject);
    procedure cxPrintClick(Sender: TObject);
    procedure eCodGrupoExit(Sender: TObject);
    procedure eCodSubExit(Sender: TObject);
    procedure eCodGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure eCodFornecKeyPress(Sender: TObject; var Key: Char);
    procedure eCodbarExit(Sender: TObject);
    procedure eCodGrupoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodSubPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxConEstoqueClick(Sender: TObject);
    procedure cxMovClick(Sender: TObject);
    procedure eCodFornecPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodFornecExit(Sender: TObject);
    procedure grConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
    indice : String;
  public
    { Public declarations }
  end;

var
  Fcad_Prod: TFcad_Prod;

implementation

uses Rotinas, udmCad, uPrinc, uCon_Generico, uCon_Estoque,
  uCon_Clie;

{$R *.dfm}

procedure TFcad_Prod.dxSairClick(Sender: TObject);
begin
   Close;
end;
procedure TFcad_Prod.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if pncad.Visible = true then
   begin
      MessageDlg('O registro esta em modo de cadastro, não pode ser fechado!', mtWarning, [mbOK], 0);
      abort;
   end;
   PFundo(1);
   FormAtivo      := Nil;
   Fcad_Prod      := nil;
   Action         := CaFree;
end;

procedure TFcad_Prod.FormShow(Sender: TObject);
begin
   CarregaLyoutForm(Fcad_Prod);
   if (BUSCACONF('MOSTRACUSTO') = 'NÃO') then
      grConsultaDBTableView1.Columns[7].Visible := false;
   FormAtivo     := Fcad_Prod;
   MudaPainel(0); // Consulta   
   indice        := 'PRODUTO';
   cbOrdem.ItemIndex:=2;
   cbOrdemPropertiesChange(sender);
end;

procedure TFcad_Prod.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TFcad_Prod.cbOrdemPropertiesChange(Sender: TObject);
begin
   if cbOrdem.ItemIndex=0 then
      indice := 'IDPROD' else
   if cbOrdem.Itemindex=1 then
      indice := 'REFPROD' else
   if cboRdem.Itemindex=2 then
      indice := 'PRODUTO' else
   if cboRdem.Itemindex=3 then
      indice := 'MARCAPROD' else
   if cbOrdem.itemindex=4 then
      indice := 'CODBAR';
   Consulta;
   eCOnsulta.SetFOcus;
end;

procedure TFcad_Prod.MudaPainel(intMuda: integer);
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

procedure TFcad_Prod.Limpa;
var j: integer;
begin
   with Fcad_Prod do
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
         if (Components[j] is TcxMemo) then
         (Components[j] as TcxMemo).Lines.Text := '';
         if (Components[j] is TcxCheckBox) then
         (Components[j] as TcxCheckBox).Checked := False;
         if (Components[j] is TcxComboBox) then
         (Components[j] as TcxComboBox).ItemIndex :=0;
      end;
   end;
end;

procedure TFcad_Prod.btnCancelarClick(Sender: TObject);
begin
   DeleteFile(eFOto.Text);
   eFoto.Clear;
   cxImage.Picture := NIl;
end;

procedure TFcad_Prod.btnGravarClick(Sender: TObject);
var DIR: String;
begin
   eFile2.Execute;
   Dir := ExtractFilePath(Application.ExeName)+'Fotos\FotosProd';
   if not DirectoryExists(Dir) then
      ForceDirectories(Dir);
   try
      if FileExists(eFile2.FileName) then
      begin
         if FileExists(Dir+'\'+eCodigo.Text+'.jpg') then
         begin
            if (MessageBox(0, 'Já existe um arquivo com o mesmo nome, deseja substituir?', 'Diretório já existe!', MB_ICONWARNING or MB_YESNO or MB_DEFBUTTON2) = idYes) then
            begin
               DeleteFile(eFOto.Text);
               cxImage.Picture := Nil;
               CopyFile(PChar(eFile2.FileName), PChar(Dir+'\'+eCodigo.Text+'.jpg'), true);
               Application.ProcessMessages;
            end
         end
         else
            CopyFile(PChar(eFile2.FileName), PChar(Dir+'\'+eCodigo.Text+'.jpg'), true);
         eFoto.Text := Dir+'\'+eCodigo.Text+'.jpg';
         cxImage.Picture.LoadFromFile(eFoto.Text);
      end;
   except
   end;
end;

procedure TFcad_Prod.Consulta;
begin
   dmcad.cdsProd.IndexName    :='';
   dmcad.cdsProd.Close;
   dmcad.cdsProd.CommandText := 'select A.*, B.RAZAO, C.DESCRICAO GRUPO, D.DESCRICAO SUBGRUPO '+
   ' from produto A '+
   ' LEFT JOIN CLIENTES B ON A.IDFORNEC=B.IDCLIE '+
   ' LEFT JOIN GENERICA C ON A.IDGRUPO=C.IDGENERICA AND C.TABELA='+QuotedStr('GRUPOS')+
   ' LEFT JOIN GENERICA D ON A.IDSUBGRUPO=D.IDGENERICA AND D.TABELA='+QuotedStr('SUBGRUPO')+
   ' where IDPROD>0';
   
   if cbAtivo.Itemindex=1 then dmCad.cdsProd.CommandText := dmCad.cdsProd.CommandText + ' and ATIVOPROD='+QuotedStr('S');
   if cbAtivo.Itemindex=2 then dmCad.cdsProd.CommandText := dmCad.cdsProd.CommandText + ' and ATIVOPROD='+QuotedStr('N');
   dmcad.cdsProd.Commandtext  := dmcad.cdsProd.CommandText + ' and '+indice+' like '+ QuotedStr('%'+eConsulta.Text+'%');
   dmcad.cdsProd.Commandtext  := dmcad.cdsProd.CommandText + ' order by '+indice+ ' DESC';
   dmCad.CdsProd.open;
   dmcad.cdsProd.First;
   cxQtdeREg.Caption := 'Registros: '+ intToStr(dmCad.cdsProd.RecordCount); 
end;

procedure TFcad_Prod.eConsultaPropertiesChange(Sender: TObject);
begin
   if dmCad.cdsProd.Active=true then
   begin
      if (trim(eConsulta.Text)='') then
      begin
         dmCad.cdsProd.First;
         Consulta;
      end;
      try
         dmCad.cdsProd.Locate(indice,eConsulta.Text,[loPartialKey]);
      except
      end;
   end;
end;

procedure TFcad_Prod.cbAtivoClick(Sender: TObject);
begin
   eConsulta.SetFOcus;
end;

procedure TFcad_Prod.btnConClick(Sender: TObject);
begin
   Consulta;
   eCOnsulta.SetFocus;
end;

procedure TFcad_Prod.cxNovoClick(Sender: TObject);
begin
   SistemaLiberado;
   MudaPainel(1); // Cadastro
   Limpa;
///// Padroniza
   cxSalvar.Tag      := 1; // Incluir
   dmcad.cdsProd.Insert;
   eCodigo.TExt      := dmcad.cdsProdIDPROD.AsString;
   cxPage.ActivePageIndex:=0;
   eAtivo.Checked    := true;
   eun.Text          := 'UN';
   eDtCad.Date       := date;
   cxImage.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\immagini\Foto.png');
   eRef.SetFocus;
end;

procedure TFcad_Prod.cxSairClick(Sender: TObject);
begin
   CLose;
end;

procedure TFcad_Prod.cxApagaClick(Sender: TObject);
begin
   SistemaLiberado;
   if (dmCad.CdsProd.Active = false) or (dmcad.cdsProd.RecordCount<1) then
   begin
      MessageDlg('Não há registros identificados, verifique!', mtInformation, [mbOK], 0);
      abort;
   end;
   if (MessageBox(0, 'Tem certeza que deseja apagar este registro?', 'Apagar?', MB_ICONINFORMATION or MB_YESNO or MB_TASKMODAL or MB_DEFBUTTON2) = idNo) then
      abort;
   try
      dmcad.cdsProd.Delete;
      dmCad.cdSProd.ApplyUpdates(0);
   except
      dmcad.cdsProd.CancelUpdates;
      MessageDlg('Não foi possível apagar este registro, tente novamente!', mtInformation, [mbOK], 0);
   end;
end;

procedure TFcad_Prod.cxSalvarClick(Sender: TObject);
begin
//// Validações
   Validar;
///// Inclui ou edita;
   if cxSalvar.Tag = 0 then // Editar
      dmCad.cdsProd.Edit;
///// Dados Gerais
   dmcad.cdsProdPRODUTO.AsString       := eProduto.Text;
   dmcad.cdsProdREFPROD.ASString       := eRef.TExt;
   dmCad.cdsProdDESCRICAO.AsString     := eDescricao.Lines.TExt;
   dmcad.cdsProdIDFORNEC.ASINteger     := StrToInt(eCodFornec.TExt);
   dmcad.cdsProdIDGRUPO.AsInteger      := StrToInt(eCodGrupo.Text);
   dmcad.cdsProdIDSUBGRUPO.ASinteger   := StrToInt(eCodSub.Text);
   dmcad.cdsProdCODBAR.ASString        := eCOdBar.TExt;
   dmcad.cdsProdFOTOPROD.ASString      := eFoto.TExt;
   dmcad.cdsProdUNPROD.ASString        := eUn.TExt;
   dmCad.cdsProdMARCAPROD.AsString     := eMarca.TExt;
   dmcad.cdsProdDTCADASTRO.AsDateTime  := eDtCad.Date+Time;
   dmcad.cdsProdDTATUALIZADO.AsDateTIme:= Now;
   if eAtivo.Checked = true then
      dmcad.cdsProdATIVOPROD.AsString  := 'S' else
      dmcad.cdsProdATIVOpRod.AsString  := 'N';
///// Dados VEnda
   dmcad.cdsProdPRECOCPR.AsFloat       := ePrecoCpr.Value;
   dmCad.cdsProdPRECOVENDA.AsFLoat     := ePrecoVenda.Value;
   dmcad.cdsProdCUSTOCPR.AsFLoat       := eCustoCpr.VAlue;
   dmcad.cdsProdCUSTO.AsFloat          := eCustoProd.Value;
   dmcad.cdsProdPRECOMINIMO.ASFloat    := ePrecoMin.VALue;
   dmcad.cdsProdMARGEMLUCRO.AsFloat    := eMl.Value;
   dmcad.cdsProdALIQCOMISSAO.AsFLoat   := eComissao.Value;
///// Dados Estoque
   if cxSalvar.TAg = 1 then
   begin
      dmcad.cdsProdESTOQUEORCAMENTO.AsFloat  := 0;
      dmcad.cdsProdESTOQUEPEDIDO.AsFloat     := 0;
   end;
   dmcad.cdsProdESTOQUEDISP.AsFloat    := eEstoqueDisp.Value;
   dmcad.cdsProdESTOQUETOTAL.AsFloat   := eEstoqueTotal.Value;
   dmcad.cdsProdESTOQUEMIN.AsFloat     := eQtdeMin.Value;
   dmcad.cdsProdESTOQUEMAX.AsFloat     := eQtdeMax.VALue;
   dmcad.cdsProdPESOBRUTO.AsFloat      := ePesoB.Value;
   dmcad.cdsProdPESOLIQ.AsFloat        := ePesoL.Value;
///// Historico
   dmCad.cdsProdHISTORICO.AsString     := eObs.Lines.TExt;
   try
      dmcad.cdsProd.Post;
      dmCad.cdsProd.ApplyUpdates(0);
      MudaPainel(0);
      Consulta;
      eCOnsulta.SetFOcus;
   except
   end;
end;

procedure TFcad_Prod.Validar;
begin
   if eRef.text = '' then
   begin
     MessageDlg('Complete o campo Referência!', mtWarning, [mbOK], 0);
     eRef.SetFocus;
     abort;
   end;

   if eProduto.text = '' then
   begin
     MessageDlg('Complete o nome do produto!', mtWarning, [mbOK], 0);
     eUn.SetFocus;
     abort;
   end;

   if eUn.text = '' then
   begin
     MessageDlg('Complete o campo Unidade!', mtWarning, [mbOK], 0);
     eUn.SetFocus;
     abort;
   end;

   If (eCodGrupo.Text = '0') or (eCodSub.text = '0') then
   begin
      MessageDlg('Informe o Grupo/SubGrupo!', mtWarning, [mbOK], 0);
      eCodGrupo.SetFocus;
      Abort;
   end;

   if eCodFornec.Text = '0' then
   begin
      MessageDlg('Informe o fornecedor!', mtWarning, [mbOK], 0);
      eCodFornec.SetFocus;
      Abort;
   end;
end;

procedure TFcad_Prod.cxDesistirClick(Sender: TObject);
begin
   if (MessageBox(0, 'Deseja realmente desistir?', 'Desistir?', MB_ICONINFORMATION or MB_YESNO or MB_TASKMODAL or MB_DEFBUTTON2) = idNo) then
      abort;
   if cxSalvar.Tag=1 then
      dmcad.cdsProd.CancelUpdates;
    MudaPainel(0); // COnsulta;
    Consulta;
    eCOnsulta.SetFocus;
end;

procedure TFcad_Prod.ePrecoCprExit(Sender: TObject);
begin
   if eCustoCpr.Value > 0 then
      eCustoCprExit(self);
end;

procedure TFcad_Prod.eCustoProdExit(Sender: TObject);
begin
   if eMl.Value>0 then
      eMlExit(self);
end;

procedure TFcad_Prod.eMlExit(Sender: TObject);
begin
   ePrecoVenda.value := eCustoProd.value + (eCustoProd.value *(eMl.value/100));
end;

procedure TFcad_Prod.ePrecoVendaExit(Sender: TObject);
begin
   if (ePrecoVenda.Value >0) and (eCustoProd.VAlue>0) then
      eMl.Value := (((ePrecoVenda.Value/eCustoProd.Value)-1)*100) else
      eMl.Value := 0;
end;

procedure TFcad_Prod.ePrecoMinExit(Sender: TObject);
begin
   if (ePrecoMin.Value>0) and (ePrecoVenda.Value>0) then
      eDescMax.value := 100-(ePrecoMin.value/ePrecoVenda.value)*100 else
      eDescMax.Value := 0;
end;

procedure TFcad_Prod.eDescMaxExit(Sender: TObject);
begin
   ePrecoMin.value := ePrecoVenda.value - (ePrecoVenda.value * (eDescMax.value/100));
end;

procedure TFcad_Prod.eCustoCprExit(Sender: TObject);
begin
   eCustoProd.value := ePrecoCpr.value + eCustoCpr.value;
   eCustoProdExit(self);
end;

procedure TFcad_Prod.cxEditarClick(Sender: TObject);
begin
   SistemaLiberado;
   if (dmCad.CdsProd.Active = false) or (dmcad.cdsProd.RecordCount<1) then
   begin
      MessageDlg('Não há registros identificados, verifique!', mtInformation, [mbOK], 0);
      abort;
   end;
   MudaPainel(1); // Cadastro
   Editar;
   cxSalvar.tag := 0; // Editar
   eRef.SetFocus;
end;

procedure TFcad_Prod.Editar;
begin
///// Dados Gerais
   ecodigo.text         := IntTOStr(dmcad.cdsProdIDPROD.AsINteger);
   eProduto.Text        := dmcad.cdsProdPRODUTO.AsString;
   eRef.TExt            := dmcad.cdsProdREFPROD.ASString;
   eDescricao.Lines.TExt:= dmCad.cdsProdDESCRICAO.AsString;
   eCodFornec.TExt      := IntTOStr(dmcad.cdsProdIDFORNEC.ASINteger);
   eCodGrupo.Text       := IntTOStr(dmcad.cdsProdIDGRUPO.AsInteger);
   ecodGrupoExit(self);
   eCodSub.Text         := IntToStr(dmcad.cdsProdIDSUBGRUPO.ASinteger);
   ecodSubExit(self);
   eCOdBar.TExt         := dmcad.cdsProdCODBAR.ASString;
   eFoto.TExt           := dmcad.cdsProdFOTOPROD.ASString;
   if FileExists(eFOto.TExt) then
      cxImage.Picture.LoadFromFile(eFOto.TExt);
   eUn.TExt             := dmcad.cdsProdUNPROD.ASString;
   eMarca.TExt          := dmCad.cdsProdMARCAPROD.AsString;
   eDtCad.Date          := dmcad.cdsProdDTCADASTRO.AsDateTime;
   if dmcad.cdsProdATIVOPROD.AsString = 'S' then
      eAtivo.Checked    := true else
      eAtivo.Checked    := false;
///// Dados VEnda
   ePrecoCpr.Value      := dmcad.cdsProdPRECOCPR.AsFloat;
   ePrecoVenda.Value    := dmCad.cdsProdPRECOVENDA.AsFLoat;
   eCustoCpr.VAlue      := dmcad.cdsProdCUSTOCPR.AsFLoat;
   eCustoProd.Value     := dmcad.cdsProdCUSTO.AsFloat;
   ePrecoMin.VALue      := dmcad.cdsProdPRECOMINIMO.ASFloat;
   eMl.Value            := dmcad.cdsProdMARGEMLUCRO.AsFloat;
   eComissao.Value      := dmcad.cdsProdALIQCOMISSAO.AsFLoat;
///// Dados Estoque
   eEstoqueDisp.Value   := dmcad.cdsProdESTOQUEDISP.AsFloat;
   eEstoqueTotal.Value  := dmcad.cdsProdESTOQUETOTAL.AsFloat;
   eQtdeMin.Value       := dmcad.cdsProdESTOQUEMIN.ASFLoat;
   eQtdeMax.VALue       := dmcad.cdsProdESTOQUEMAX.ASFloat;
   ePesoB.Value         := dmcad.cdsProdPESOBRUTO.AsFLoat;
   ePesoL.Value         := dmcad.cdsProdPESOLIQ.asFloat;
///// Historico
   eObs.Lines.TExt      := dmCad.cdsProdHISTORICO.AsString;
///// Padroniza
   cxPage.ActivePageIndex:=0;
end;

procedure TFcad_Prod.cxVisualizaClick(Sender: TObject);
begin
   cxSalvar.Enabled := false;
   cxEditarClick(Self);
end;

procedure TFcad_Prod.grConsultaDBTableView1DblClick(Sender: TObject);
begin
   cxEditarClick(self);
end;

procedure TFcad_Prod.cxPrintClick(Sender: TObject);
var
   IDPROD : Integer;
begin
   IDPROD := dmcad.cdsProdIDPROD.Asinteger;
   dmCad.cdsProd.Close;
   dmCad.cdSProd.CommandText := 'select A.*, B.RAZAO, C.DESCRICAO GRUPO, D.DESCRICAO SUBGRUPO '+
   ' from produto A '+
   ' LEFT JOIN CLIENTES B ON A.IDFORNEC=B.IDCLIE '+
   ' LEFT JOIN GENERICA C ON A.IDGRUPO=C.IDGENERICA AND C.TABELA='+QuotedStr('GRUPOS')+
   ' LEFT JOIN GENERICA D ON A.IDSUBGRUPO=D.IDGENERICA AND D.TABELA='+QuotedStr('SUBGRUPO')+
   ' where IDPROD='+IntTOStr(IDPROD);
   dmCad.cdsProd.Open;

   Imprime(dmcad.dsProd,NIl,
            'SIM',
            'Ficha de Produto',
            dmCad.cdsConfPASTASERVIDOR.ASString + '\rapporti\Impressos\ppFichaProd.rtm',
            'SIM','',
            1);

   Consulta;
end;

procedure TFcad_Prod.eCodGrupoExit(Sender: TObject);
begin
   if (eCodGrupo.text = '') or (eCodGrupo.Text = '0') then
   begin
      eCodGrupo.text := '0';
      eGrupo.Text    := 'NENHUM';
      exit;
   end;
   eGrupo.text          := BuscaNomeGen('GRUPOS',StrToint(eCodGrupo.text));
   if eGrupo.text = 'ERRO' then
   begin
      eCodGrupo.text := '0';
      eGrupo.Text    := 'NENHUM';
      exit;
   end;
end;

procedure TFcad_Prod.eCodSubExit(Sender: TObject);
begin
   if (eCodSub.text = '') or (eCodSub.Text = '0') then
   begin
      eCodSub.text := '0';
      eSubGrupo.Text    := 'NENHUM';
      exit;
   end;
   eSubGrupo.text          := BuscaNomeGen('SUBGRUPO',StrToint(eCodSub.text));
   if eSubGrupo.text = 'ERRO' then
   begin
      eCodSub.text := '0';
      eSubGrupo.Text    := 'NENHUM';
      exit;
   end;
end;

procedure TFcad_Prod.eCodGrupoKeyPress(Sender: TObject; var Key: Char);
begin
  If not (key in ['0'..'9',#8]) then key := #0;
end;

procedure TFcad_Prod.eCodFornecKeyPress(Sender: TObject; var Key: Char);
begin
  If not (key in ['0'..'9',#8]) then key := #0;
end;

procedure TFcad_Prod.eCodbarExit(Sender: TObject);
begin
   if cxPage.ActivePageIndex=0 then
      ePrecoCpr.SetFocus else
      eQtdeMin.SetFocus;
end;

procedure TFcad_Prod.eCodGrupoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   Fcon_Generico := TFcon_Generico.Create(self);
   Fcon_Generico.AbreCom('CAD');
   Fcon_Generico.TABELA :='GRUPOS';
   Fcon_Generico.ShowModal;
   if CODIGO<>0 then
   begin
      eCodGrupo.Text := intTOStr(CODIGO);
      eGRupo.Text    := NOME;
   end;
   FCon_Generico.Free;
end;

procedure TFcad_Prod.eCodSubPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   Fcon_Generico := TFcon_Generico.Create(self);
   Fcon_Generico.AbreCom('CON');   
   Fcon_Generico.TABELA :='SUBGRUPO';
   Fcon_Generico.ShowModal;
   if CODIGO<>0 then
   begin
      eCodSub.Text   := intTOStr(CODIGO);
      eSubGrupo.Text := NOME;
   end;
   FCon_Generico.Free;
end;

procedure TFcad_Prod.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Key = VK_F3) and (pnCon.Visible=true) then
      btnConClick(self);
   if (key = Vk_F2) then
   begin
      if cbORdem.Itemindex=  4 then
         cbORdem.Itemindex:= 0 else
         cbOrdem.Itemindex:= cbOrdem.ItemIndex +1;
      cbOrdemPropertiesChange(self);
   end;
   if ((key = 40) or (key = 38)) and (not (grConsulta.Focused = true)) then
   begin
      If key = 40 then dmcad.cdsProd.Next;
      If key = 38 then dmcad.cdsProd.Prior;
      grCOnsulta.SetFocus;
   end;
   if (Key = VK_DOWN) or (Key = VK_UP) then   
      cxQtdeREg.Caption := 'Registros: '+ intToStr(dmCad.cdsProd.RecordCount);
end;

procedure TFcad_Prod.cxConEstoqueClick(Sender: TObject);
begin
   Fcon_Estoque := TFcon_Estoque.Create(self);
   Fcon_Estoque.eEstoqueDisp.Value := dmcad.cdsProdESTOQUEDISP.Value;
   Fcon_Estoque.eEstoqueTotal.Value:= dmCad.cdsProdESTOQUETOTAL.Value;
   Fcon_Estoque.ShowModal;
end;

procedure TFcad_Prod.cxMovClick(Sender: TObject);
begin
   Msg('Em Desenvolvimento','I');
end;

procedure TFcad_Prod.eCodFornecPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   Fcon_Cliente := TFcon_Cliente.Create(self);
   Fcon_Cliente.ShowMOdal;
   if CODIGO <> 0 then
   begin
      eCodFornec.TExt := intToStr(CODIGO);
      eFornec.TExt    := NOME;
   end;
   FCon_Cliente.Free;
end;

procedure TFcad_Prod.eCodFornecExit(Sender: TObject);
begin
   if (eCodFornec.text = '') or (eCodFornec.Text = '0') then
   begin
      eCodFornec.text := '0';
      eFornec.Text    := 'NENHUM';
      exit;
   end;
   eFornec.text        := BuscaNomeAtivo('CLIENTES',StrToint(eCodFornec.text));
   if eFornec.text = 'ERRO' then
   begin
      eCodFornec.text := '0';
      eFornec.Text    := 'NENHUM';
      exit;
   end;
end;

procedure TFcad_Prod.grConsultaDBTableView1CustomDrawCell(
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

end.
