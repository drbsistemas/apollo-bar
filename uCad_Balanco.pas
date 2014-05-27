unit uCad_Balanco;

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
  dxSkinXmas2008Blue, Menus, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLabel, cxGroupBox, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxButtonEdit, cxCurrencyEdit, RxMemDS,
  cxGridCustomPopupMenu, cxGridPopupMenu;

type
  TFcad_Balanco = class(TForm)
    pnCad: TcxGroupBox;
    pnCon: TcxGroupBox;
    cxTopo: TcxGroupBox;
    cxLabel31: TcxLabel;
    cbOrdem: TcxComboBox;
    cxLabel32: TcxLabel;
    eConsulta: TcxTextEdit;
    btnCon: TcxButton;
    cxNovo: TcxButton;
    cxApaga: TcxButton;
    cxPrint: TcxButton;
    cxSair: TcxButton;
    cxQtdeReg: TcxLabel;
    cxMov: TcxButton;
    cxConEstoque: TcxButton;
    cbStatus: TcxComboBox;
    cxLabel1: TcxLabel;
    grConsulta: TcxGrid;
    grConsultaDBTableView1: TcxGridDBTableView;
    IDPROD: TcxGridDBColumn;
    REFPROD: TcxGridDBColumn;
    PRODUTO: TcxGridDBColumn;
    DATA: TcxGridDBColumn;
    ESTOQUETOTAL: TcxGridDBColumn;
    ESTOQUECONT: TcxGridDBColumn;
    ESTOQUEDIF: TcxGridDBColumn;
    SEQUENCIAL: TcxGridDBColumn;
    IDBALANCO: TcxGridDBColumn;
    grConsultaLevel1: TcxGridLevel;
    cxMenuCad: TcxGroupBox;
    cxSalvar: TcxButton;
    cxDesistir: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxLabel6: TcxLabel;
    eCodProd: TcxButtonEdit;
    eProduto: TcxTextEdit;
    eUn: TcxTextEdit;
    cxLabel2: TcxLabel;
    eEstoque: TcxCurrencyEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    eContagem: TcxCurrencyEdit;
    cxLabel5: TcxLabel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    rxCont: TRxMemoryData;
    dsCont: TDataSource;
    rxContIDPROD: TIntegerField;
    rxContREFPROD: TStringField;
    rxContPRODUTO: TStringField;
    rxContUN: TStringField;
    rxContESTOQUETOTAL: TFloatField;
    rxContESTOQUECONT: TFloatField;
    rxContESTOQUEDIF: TFloatField;
    eRef: TcxTextEdit;
    ecodProduto: TcxTextEdit;
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    PopFinaliza: TPopupMenu;
    PorContagem1: TMenuItem;
    PorSequencial1: TMenuItem;
    ///// Privado
    procedure MudaPainel(intMuda: integer);
    procedure Consulta;
    procedure Limpa;
    /////
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cbOrdemPropertiesChange(Sender: TObject);
    procedure btnConClick(Sender: TObject);
    procedure eConsultaPropertiesChange(Sender: TObject);
    procedure cxSairClick(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure eCodProdKeyPress(Sender: TObject; var Key: Char);
    procedure eContagemExit(Sender: TObject);
    procedure cxDesistirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxSalvarClick(Sender: TObject);
    procedure eCodProdExit(Sender: TObject);
    procedure eCodProdPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure grConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxApagaClick(Sender: TObject);
    procedure cxConEstoqueClick(Sender: TObject);
    procedure cxMovClick(Sender: TObject);
    procedure PorContagem1Click(Sender: TObject);
    procedure PorSequencial1Click(Sender: TObject);
    procedure cxPrintClick(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
    indice : String;
  public
    { Public declarations }
  end;

var
  Fcad_Balanco: TFcad_Balanco;

implementation

uses udmCad, Rotinas, uCon_Prod, Math, uPrinc, UCBase, uRel_Padrao,
  uListagens;

{$R *.dfm}

procedure TFcad_Balanco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if pncad.Visible = true then
   begin
      MessageDlg('O registro esta em modo de cadastro, não pode ser fechado!', mtWarning, [mbOK], 0);
      abort;
   end;
   PFundo(1);
   FormAtivo      := Nil;
   Fcad_Balanco   := nil;
   Action         := CaFree;
end;

procedure TFcad_Balanco.FormShow(Sender: TObject);
begin
   MudaPainel(0); // Consulta
   cbOrdem.ItemIndex := 2; // Produto
   cbOrdemPropertiesChange(self);
   eConsulta.SetFocus;
end;

procedure TFcad_Balanco.cbOrdemPropertiesChange(Sender: TObject);
begin
   if cbOrdem.ItemIndex=0 then
      indice := 'IDBALANCO' else
   if cbOrdem.Itemindex=1 then
      indice := 'IDPROD' else
   if cboRdem.Itemindex=2 then
      indice := 'PRODUTO' else
   if cboRdem.Itemindex=3 then
      indice := 'REFPROD' else
   if cbOrdem.itemindex=4 then
      indice := 'DATA' else
   if cbOrdem.itemindex=5 then
      indice := 'IDSEQ';
   Consulta;
   eCOnsulta.SetFOcus;
end;

procedure TFcad_Balanco.btnConClick(Sender: TObject);
begin
   Consulta;
   eConsulta.SetFOcus;
end;

procedure TFcad_Balanco.eConsultaPropertiesChange(Sender: TObject);
begin
   if dmCad.cdsBalanco.Active=true then
   begin
      if (trim(eConsulta.Text)='') then
      begin
         dmCad.cdsBalanco.First;
         Consulta;
      end;
      try
         dmCad.cdsBalanco.Locate(indice,eConsulta.Text,[loPartialKey]);
      except
      end;
   end;
end;

procedure TFcad_Balanco.Consulta;
begin
   dmcad.cdsBalanco.IndexName := '';
   dmcad.cdsBalanco.Close;
   dmcad.cdsBalanco.CommandText := 'select A.*, B.REFPROD, B.PRODUTO from BALANCO A '+
      ' Left join PRODUTO B on A.IDPROD = B.IDPROD where A.IDBALANCO>0 and ';
   if cbOrdem.ItemIndex = 1 then
      dmcad.cdsBalanco.CommandText := dmcad.cdsBalanco.CommandText +'A.'+indice+' like '+QuotedStr('%'+eConsulta.TExt+'%') else
      dmcad.cdsBalanco.CommandText := dmcad.cdsBalanco.CommandText +indice+' like '+QuotedStr('%'+eConsulta.TExt+'%');      
   if cbStatus.Itemindex > 0 then
      dmcad.cdsBalanco.CommandText := dmcad.cdsBalanco.CommandText + 'and STATUS='+QuotedStr(UpperCase(copy(cbStatus.Text,1,1)));
   dmcad.cdsBalanco.Open;
   dmCad.cdsBalanco.First;
   cxQtdeREg.Caption := 'Registros: '+ intToStr(dmCad.cdsBalanco.RecordCount);
end;

procedure TFcad_Balanco.MudaPainel(intMuda: integer);
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

procedure TFcad_Balanco.cxSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFcad_Balanco.cxNovoClick(Sender: TObject);
begin
   SistemaLiberado;
   MudaPainel(1); // Cadastro
   Limpa;
///// Padroniza
   rxCOnt.Close;
   rxCont.Open;
   
   eCodPRod.SetFocus;
end;

procedure TFcad_Balanco.Limpa;
begin
   eCodpRoduto.Text  := '0';
   eCodProd.Text     := '0';
   eProduto.TExt     := 'NENHUM';
   eUn.Text          := 'UN';
   eRef.Clear;
   eEstoque.Value    := 0;
   eContagem.VaLue   := 1;
end;

procedure TFcad_Balanco.eCodProdKeyPress(Sender: TObject; var Key: Char);
begin
  If not (key in ['0'..'9',#8]) then key := #0;
end;

procedure TFcad_Balanco.eContagemExit(Sender: TObject);
begin
///// Validações
   if ecodPRod.TExt='0' then
   begin
      eCodPRod.SetFOcus;
      Abort;
   end;
   if (eContagem.Value <=0) then
   begin
      MessageDlg('Preencha o valor da contagem!', mtWarning, [mbOK], 0);
      Abort;
   end;
   
///// Inicia Balanço
   rxCont.Append;
   rxContIDPROD.Asinteger     := StrToInt(eCodPRod.Text);
   rxContPRODUTO.AsString     := eProduto.TExt;
   rxContUN.AsString          := eUn.TExt;
   rxContREFPROD.AsString     := eRef.Text;
   rxContESTOQUETOTAL.AsFloat := eEstoque.Value;
   rxContESTOQUECONT.ASFloat  := eContagem.Value;
   rxContESTOQUEDIF.AsFloat   := (eContagem.Value - eEstoque.vALue);
   rxCont.Post;
/////
   Limpa;
   eCodPRod.SetFOcus;
end;

procedure TFcad_Balanco.cxDesistirClick(Sender: TObject);
begin
   if (MessageBox(0, 'Deseja realmente desistir?', 'Desistir?', MB_ICONINFORMATION or MB_YESNO or MB_TASKMODAL or MB_DEFBUTTON2) = idNo) then
      abort;
   rxCOnt.Close;
   MudaPainel(0); // COnsulta;
   Consulta;
   eCOnsulta.SetFocus;
end;

procedure TFcad_Balanco.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TFcad_Balanco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if pncad.Visible = true then
   begin
      if key = Vk_Escape then
         if pncad.Visible = true then
            cxDesistirClick(self) else
         if pncon.visible = true then
            cxSairClick(self);
      if Key = VK_F4 then
         cxSalvarClick(self);
      if key = vk_F10 then
         cxDesistirClick(self);
      if key = Vk_F2 then
         cxGridDBTableView1DblClick(self);
   end;

end;

procedure TFcad_Balanco.cxSalvarClick(Sender: TObject);
var
   intSeq: integer;
begin
   if rxCont.RecordCount<=0 then
   begin
      MessageDlg('Não foram inseridos dados, verifique!', mtWarning, [mbOK], 0);
      abort;
   end;
   if Application.messagebox('Deseja realmente fechar este sequencial de balanco? Estes dados não poderão mais serem alterados!', 'Fechar Balanco?', MB_YESNO + MB_DEFBUTTON1) = id_yes then
   begin
      dmcad.qryGen.Close;
      dmcad.qryGen.CommandText:='select GEN_ID(GEN_SEQBALANCO_ID,1) codigo from dual';
      dmcad.qryGen.Open;
      intSeq := dmcad.qryGen.Fieldbyname('CODIGO').asInteger;
   ///// Inicia a inserção do blaanco
      rxCont.First;
      while not rxCont.Eof do
      begin
         dmcad.cdsBalanco.Insert;
         dmcad.cdsBalancoDATA.AsDateTIme        := Date+time;
         dmcad.cdsBalancoIDSEQ.AsInteger        := intSeq; // Padrão
         dmcad.cdsBalancoIDPROD.asInteger       := rxContIDPROD.Asinteger;
         dmcad.cdsBalancoSTATUS.AsString        := 'A';
         dmcad.cdsBalancoESTOQUETOTAL.AsFloat   := rxContESTOQUETOTAL.ASFLoat;
         dmcad.cdsBalancoESTOQUECONT.ASFloat    := rxContESTOQUECONT.ASFLoat;
         dmcad.cdsBalancoESTOQUEDIF.ASFloat     := rxContESTOQUEDIF.ASFLoat;
         dmcad.cdsBalanco.Post;
         rxCont.Next;
      end;
      try
         dmcad.cdsBalanco.ApplyUpdates(0);
         FPrinc.UserControl1.Log('Balanço Concluído no Sequencial Nº:' + IntTOStr(intSeq), 2);
         MudaPainel(0); // COnsulta;
         Consulta;
         eCOnsulta.SetFocus;
      except
         dmcad.cdsBalanco.CancelUpdates;
      end;
   end;
end;

procedure TFcad_Balanco.eCodProdExit(Sender: TObject);
begin
   if (ecodProd.TExt='0') or (ecodProd.TExt='') then
   begin
      Limpa;
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
      eProduto.TExt     := dmCad.qryAux.Fieldbyname('PRODUTO').asString;
      eUn. text         := dmCad.qryAux.Fieldbyname('UNPROD').asString;
      eEstoque.Value    := dmCad.qryAux.Fieldbyname('ESTOQUETOTAL').AsFLoat;
      eRef.TExt         := dmCad.qryAux.Fieldbyname('REFPROD').asString;
   end;
end;

procedure TFcad_Balanco.eCodProdPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   Fcon_Prod := TFcon_Prod.Create(self);
   Fcon_Prod.ShowModal;
   if Fcon_Prod.CODIGO <> '' then
   begin
      eCOdPRod.TExt := Fcon_Prod.CODIGO;
      eProduto.TExt := Fcon_Prod.NOME;
   end;
   FCOn_Prod.Free;
end;

procedure TFcad_Balanco.cxGridDBTableView1DblClick(Sender: TObject);
begin
   if (MessageBox(0, 'Deseja apagar o último registro da contagem? ', 'Apagar? ', MB_ICONINFORMATION or MB_YESNO or MB_TASKMODAL or MB_DEFBUTTON2) = idNo) then
      abort;
   rxCOnt.Last;
   rxCOnt.Delete;
end;

procedure TFcad_Balanco.grConsultaDBTableView1CustomDrawCell(
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

   if (AViewInfo.Item.Index = grConsultaDBTableView1Column1.Index) then
   begin
///// ABERTO
      if dmcad.cdsBalancoSTATUS.AsString = 'A' then
      begin
         ACanvas.Brush.Color        := clGreen;
         ACanvas.Canvas.Font.Color  := clGreen;
      end else
///// SINCRONIZADO
      if dmcad.cdsBalancoSTATUS.AsString = 'F' then
      begin
         ACanvas.Brush.Color        := clBlue;
         ACanvas.Canvas.Font.Color  := clBlue;
      end
   end;
end;

procedure TFcad_Balanco.cxApagaClick(Sender: TObject);
begin
///// validação
   if (dmcad.cdsBalanco.Active = false) or (dmcad.cdsBalanco.RecordCount<=0) then
   begin
      MessageDlg('Não há registros, verifique!', mtWarning, [mbOK], 0);
      Abort;
   end;
   if dmcad.cdsBalancoSTATUS.AsString = 'F' then
   begin
      MessageDlg('Apenas registros abertos podem ser apagados, verifique!', mtWarning, [mbOK], 0);
      Abort;
   end;
   if (MessageBox(0, 'Deseja realmente apagar este sequencial de balanço? É um processo irreversível!', '', MB_ICONINFORMATION or MB_YESNO or MB_TASKMODAL or MB_DEFBUTTON2) = idNo) then
      Abort;
/////
   dmcad.qryAux.Close;
   dmCad.cdsAux.Close;
   dmcad.cdsAux.CommandText := 'delete from BALANCO where IDSEQ='+QuotedStr(dmcad.cdsBalancoIDSEQ.AsString);
   try
      dmcad.cdsAUx.Execute;

      FPrinc.UserControl1.Log('Apagado Sequencial de balanço Nº: '+dmcad.cdsBalancoIDSEQ.AsString,2);
      MessageDlg('Sequencial de balanço apagado com sucesso!', mtInformation, [mbOK], 0);
      dmcad.cdsBalanco.Refresh;
   except
      dmcad.cdsAux.Cancel;
   end;
end;

procedure TFcad_Balanco.cxConEstoqueClick(Sender: TObject);
begin
///// Zera o estoque para balanço
   if Application.messagebox('Deseja realmente zerar o estoque físico dos produtos?', 'Atenção!', MB_YESNO + MB_DEFBUTTON1) = id_yes then
   begin
      if Application.messagebox('É aconselhavel que se faça um backup antes de continuar com essa transação, deseja continuar?', 'Atenção!', MB_YESNO + MB_DEFBUTTON1) = id_yes then
      begin
         ////// Zera o estoque Pedido/Disponível
         dmcad.qryAux.Close;
         dmcad.cdsAux.Close;
         dmcad.cdsAux.CommandText := 'UPDATE PRODUTO SET ESTOQUEDISP=0 WHERE ESTOQUEDISP is null';
         dmcad.cdsAux.Execute;

         dmcad.qryAux.Close;
         dmcad.cdsAux.Close;
         dmcad.cdsAux.Commandtext := 'select * from Produto where IDPROD<>0';
         dmcad.cdsAux.Open;
         dmcad.cdsAux.First;

         ///// usa cdsEstoque
         dmcad.cdsEstoque.Close;
         dmcad.cdsEstoque.Open;

         ///// Começa a zerar o estoque dentro do While
         while not dmcad.cdsAux.EOF do
         begin
            if dmcad.cdsAux.Fieldbyname('ESTOQUETOTAL').AsFloat <> 0 then // Se ja for zero pula
            begin
               ///// Pega o Saldo Anterior
               dmcad.qryAux2.Close;
               dmcad.cdsAux2.Close;
               dmcad.cdsAux2.CommandText := 'select SALDO from ESTOQUE where IDPROD=' + quotedstr(dmcad.cdsAux.Fieldbyname('IDPROD').asString) + ' AND IDESTOQUE =(select max(idestoque) from estoque where idprod=' + quotedstr(dmcad.qryAux.Fieldbyname('idprod').asString) + ')';
               dmcad.cdsAux2.Open;
               ///// Insere o registro de movimentação de estoque
               dmcad.cdsEstoque.Insert;
               dmcad.cdsEstoqueIDPROD.AsString     := dmcad.cdsAux.Fieldbyname('IDPROD').asString;
               dmcad.cdsEstoqueORIGEM.AsString     := 'BALANÇO';
               dmcad.cdsEstoqueDOCUMENTO.AsString  := '';
               dmcad.cdsEstoqueUSUARIO.AsString    := FPrinc.UserControl1.CurrentUser.UserName;
               dmcad.cdsEstoqueDESCRICAO.AsString  := 'ESTOQUE ZERADO POR BALANÇO';
               dmcad.cdsEstoqueDATA.AsDateTime     := Date + Time;
               ///// Verifica o tipo de estoque encontrato
               if dmcad.cdsAux.Fieldbyname('ESTOQUETOTAL').AsFloat < 0 then // Se maior que zero
               begin
                  dmcad.cdsEstoqueENTRADA.AsFloat := dmcad.cdsAux.FieldbyName('ESTOQUETOTAL').asFloat * -1;
                  dmcad.cdsEstoqueSAIDA.AsFloat := 0;
               end;
               if dmcad.cdsAux.Fieldbyname('ESTOQUETOTAL').AsFloat > 0 then // Se menor
               begin
                  dmcad.cdsEstoqueENTRADA.AsFloat := 0;
                  dmcad.cdsEstoqueSAIDA.AsFloat := dmcad.cdsAux.FieldbyName('ESTOQUETOTAL').asFloat;
               end;
               dmcad.cdsEstoqueSALDO.aSFloat       := dmcad.cdsAux2.Fieldbyname('SALDO').asFloat + (dmcad.cdsEstoqueENTRADA.AsFloat - dmcad.cdsEstoqueSAIDA.AsFloat);
               dmCad.cdsEstoque.Post;
               ///// Após ter ajustado muda o registro
               dmcad.cdsAux.NExt;
            end else // Se não tem estoque pula para outro
               dmcad.cdsAux.NExt;
         end;
         try // Tenta salvar os dados
            dmcad.cdsEstoque.ApplyUpdates(0);
            MessageDlg('Estoque zerado com sucesso!', mtInformation, [mbOK], 0);
         except
            MessageDlg('Atenção! Não foi possível zerar o estoque, saida do sistema e tente novamente!', mtInformation, [mbOK], 0);
            dmcad.cdsEstoque.CancelUpdates;
            Abort;
         end;
      end;
   end;
end;

procedure TFcad_Balanco.cxMovClick(Sender: TObject);
begin
   if (dmcad.cdsBalanco.Active = false) or (dmcad.cdsBalanco.RecordCount<=0) then
   begin
      MessageDlg('Não há registros, verifique!', mtWarning, [mbOK], 0);
      Abort;
   end;
   if dmcad.cdsBalancoSTATUS.AsString = 'F' then
   begin
      MessageDlg('Apenas sequenciais em aberto podem ser sincronizados!', mtInformation, [mbOK], 0);
      abort;
   end;
   PopFinaliza.Popup(mouse.cursorpos.x, mouse.cursorpos.y);
end;

procedure TFcad_Balanco.PorContagem1Click(Sender: TObject);
begin
   dmcad.qryAux2.Close;
   dmcad.cdsAux2.Close;
   dmcad.cdsAux2.CommandText := 'select * from BALANCO where IDSEQ='+IntToStr(dmcad.cdsBalancoIDSEQ.AsInteger);
   dmcad.cdsAux2.Open;
   dmcad.cdsAux2.First;
   while not dmcad.cdsAux2.Eof do
   begin
      if dmcad.cdsAux2.Fieldbyname('ESTOQUECONT').AsFloat > 0 then
         Estoque(dmcad.cdsAux2.Fieldbyname('IDPROD').AsInteger, 'BALANCO', 'SEQ Nº :'+dmcad.cdsAux2.Fieldbyname('IDSEQ').AsString, 'E', 'AJUSTE DE BALANÇO PELA CONTAGEM', dmcad.cdsAux2.Fieldbyname('ESTOQUECONT').AsFloat) else
         Estoque(dmcad.cdsAux2.Fieldbyname('IDPROD').AsInteger, 'BALANCO', 'SEQ Nº :'+dmcad.cdsAux2.Fieldbyname('IDSEQ').AsString, 'S', 'AJUSTE DE BALANÇO PELA CONTAGEM', dmcad.cdsAux2.Fieldbyname('ESTOQUECONT').AsFloat);
      ///// Atualiza Balanço
      dmcad.qryAux3.Close;
      dmcad.cdsAux3.Close;
      dmcad.cdsAux3.CommandText := 'update balanco set STATUS='+QuotedStr('F')+' where IDBALANCO='+IntToStr(dmcad.cdsAux2.Fieldbyname('IDBALANCO').AsInteger);
      try
         dmcad.cdsAux3.Execute;
      except
         dmcad.cdsAux3.Cancel;
      end;
      dmcad.cdsAux2.Next;
   end;
   try
      dmcad.cdsBalanco.Refresh;
      MessageDlg('Estoque ajustado com o balanço, realizado com sucesso!', mtInformation, [mbOK], 0);
   except
   end;
end;

procedure TFcad_Balanco.PorSequencial1Click(Sender: TObject);
begin
   dmcad.qryAux2.Close;
   dmcad.cdsAux2.Close;
   dmcad.cdsAux2.CommandText := 'select * from BALANCO where IDSEQ='+IntToStr(dmcad.cdsBalancoIDSEQ.AsInteger);
   dmcad.cdsAux2.Open;
   dmcad.cdsAux2.First;
   while not dmcad.cdsAux2.Eof do
   begin
      if dmcad.cdsAux2.Fieldbyname('ESTOQUEDIF').AsFloat > 0 then
         Estoque(dmcad.cdsAux2.Fieldbyname('IDPROD').AsInteger, 'BALANCO', 'SEQ Nº :'+dmcad.cdsAux2.Fieldbyname('IDSEQ').AsString, 'E', 'AJUSTE DE BALANÇO PELA DIFERENÇA', dmcad.cdsAux2.Fieldbyname('ESTOQUEDIF').AsFloat) else
         Estoque(dmcad.cdsAux2.Fieldbyname('IDPROD').AsInteger, 'BALANCO', 'SEQ Nº :'+dmcad.cdsAux2.Fieldbyname('IDSEQ').AsString, 'S', 'AJUSTE DE BALANÇO PELA DIFERENÇA', dmcad.cdsAux2.Fieldbyname('ESTOQUEDIF').AsFloat);
      ///// Atualiza Balanço
      dmcad.cdsAux3.Close;
      dmcad.cdsAux3.CommandText := 'update balanco set STATUS='+QuotedStr('F')+' where IDBALANCO='+IntToStr(dmcad.cdsAux2.Fieldbyname('IDBALANCO').AsInteger);
      try
         dmcad.cdsAux3.Execute;
      except
         dmcad.cdsAux3.Cancel;
         MessageDlg('Atenção! Não foi possível ajustar o estoque, verifique!', mtInformation, [mbOK], 0);
      end;
      
      dmcad.qryAux2.Next;
   end;
   try
      dmcad.cdsBalanco.Refresh;
      MessageDlg('Estoque ajustado com o balanço, realizado com sucesso!', mtInformation, [mbOK], 0);
   except
   end;
end;

procedure TFcad_Balanco.cxPrintClick(Sender: TObject);
begin
   with Frel_Padrao do
   begin
      FRel_Padrao       := TFRel_Padrao.Create(Self);
///// Mostra cliente/Fornec
      cxClie.Visible := true;      
///// Mostra Produtos
      cxProd.Visible    := true;
///// Mostra agrupamento
      cxAgrupa.Visible  := true;
      cbAgrupa.Properties.Items.Add('Não Agrupar');      
      cbAgrupa.Properties.Items.Add('Grupo');
      cbAgrupa.Properties.Items.Add('SubGrupo');
      cbAgrupa.Properties.Items.Add('Fornecedor');
      cbAgrupa.Itemindex := 0;      
///// Mostra Ordem
      cxOrdem.Visible   := true;
      cbOrdem.Properties.Items.Add('Código');
      cbOrdem.Properties.Items.Add('Referência');
      cbOrdem.Properties.Items.Add('Produto');
      cbOrdem.Properties.Items.Add('Grupo');
      cbOrdem.Properties.Items.Add('SubGrupo');
      cbOrdem.Properties.Items.Add('Fornecedor');
      cbOrdem.Itemindex := 0;
      Frel_Padrao.intCodRel := 1; // Balanço
///// Mostra
      ShowModal;
   end;
end;

procedure TFcad_Balanco.cxGridDBTableView1CustomDrawCell(
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

end.


