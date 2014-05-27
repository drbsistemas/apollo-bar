unit uCon_Prod;

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
  dxSkinXmas2008Blue, dxGDIPlusClasses, cxImage, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, Menus, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLabel, cxGroupBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  FMTBcd, SqlExpr, Provider, DBClient, cxMemo, cxDBEdit;

type
  TFcon_Prod = class(TForm)
    pnImg: TcxImage;
    pnCon: TcxGroupBox;
    pnConsulta: TcxGroupBox;
    cxLabel1: TcxLabel;
    cbOrdem: TcxComboBox;
    cxLabel2: TcxLabel;
    eConsulta: TcxTextEdit;
    cxLabel3: TcxLabel;
    cbAtivo: TcxComboBox;
    btnCon: TcxButton;
    cxPrint: TcxButton;
    cxSair: TcxButton;
    cxCad: TcxButton;
    qryProd: TSQLDataSet;
    qryProdIDPROD: TIntegerField;
    qryProdPRODUTO: TStringField;
    qryProdDESCRICAO: TStringField;
    qryProdREFPROD: TStringField;
    qryProdMARCAPROD: TStringField;
    qryProdIDGRUPO: TIntegerField;
    qryProdIDFORNEC: TIntegerField;
    qryProdIDSUBGRUPO: TIntegerField;
    qryProdPRECOCPR: TFloatField;
    qryProdCUSTOCPR: TFloatField;
    qryProdCUSTO: TFloatField;
    qryProdESTOQUEDISP: TFloatField;
    qryProdESTOQUETOTAL: TFloatField;
    qryProdESTOQUEMIN: TFloatField;
    qryProdESTOQUEMAX: TFloatField;
    qryProdDTCADASTRO: TSQLTimeStampField;
    qryProdPESOBRUTO: TFloatField;
    qryProdPESOLIQ: TFloatField;
    qryProdATIVOPROD: TStringField;
    qryProdMARGEMLUCRO: TFloatField;
    qryProdUNPROD: TStringField;
    qryProdHISTORICO: TStringField;
    qryProdFOTOPROD: TStringField;
    qryProdPRECOVENDA: TFloatField;
    qryProdESTOQUEPEDIDO: TFloatField;
    qryProdESTOQUEORCAMENTO: TFloatField;
    qryProdALIQCOMISSAO: TFloatField;
    qryProdPRECOMINIMO: TFloatField;
    qryProdDTATUALIZADO: TSQLTimeStampField;
    qryProdCODBAR: TStringField;
    qryProdGRUPO: TStringField;
    qryProdSUBGRUPO: TStringField;
    dspProd: TDataSetProvider;
    cdsProd: TClientDataSet;
    cdsProdIDPROD: TIntegerField;
    cdsProdPRODUTO: TStringField;
    cdsProdDESCRICAO: TStringField;
    cdsProdREFPROD: TStringField;
    cdsProdMARCAPROD: TStringField;
    cdsProdIDGRUPO: TIntegerField;
    cdsProdIDFORNEC: TIntegerField;
    cdsProdIDSUBGRUPO: TIntegerField;
    cdsProdPRECOCPR: TFloatField;
    cdsProdCUSTOCPR: TFloatField;
    cdsProdCUSTO: TFloatField;
    cdsProdESTOQUEDISP: TFloatField;
    cdsProdESTOQUETOTAL: TFloatField;
    cdsProdESTOQUEMIN: TFloatField;
    cdsProdESTOQUEMAX: TFloatField;
    cdsProdDTCADASTRO: TSQLTimeStampField;
    cdsProdPESOBRUTO: TFloatField;
    cdsProdPESOLIQ: TFloatField;
    cdsProdATIVOPROD: TStringField;
    cdsProdMARGEMLUCRO: TFloatField;
    cdsProdUNPROD: TStringField;
    cdsProdHISTORICO: TStringField;
    cdsProdFOTOPROD: TStringField;
    cdsProdPRECOVENDA: TFloatField;
    cdsProdESTOQUEPEDIDO: TFloatField;
    cdsProdESTOQUEORCAMENTO: TFloatField;
    cdsProdALIQCOMISSAO: TFloatField;
    cdsProdPRECOMINIMO: TFloatField;
    cdsProdDTATUALIZADO: TSQLTimeStampField;
    cdsProdCODBAR: TStringField;
    cdsProdGRUPO: TStringField;
    cdsProdSUBGRUPO: TStringField;
    dsProd: TDataSource;
    cbFoto: TcxGroupBox;
    cxImage: TcxImage;
    qryProdRAZAO: TStringField;
    cdsProdRAZAO: TStringField;
    grConsulta: TcxGrid;
    grConsultaDBTableView1: TcxGridDBTableView;
    IDPROD: TcxGridDBColumn;
    REFPROD: TcxGridDBColumn;
    PRODUTO: TcxGridDBColumn;
    UNPROD: TcxGridDBColumn;
    MARCAPROD: TcxGridDBColumn;
    CODBAR: TcxGridDBColumn;
    grConsultaLevel1: TcxGridLevel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel12: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel13: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel14: TcxLabel;
    ///// Privado
    procedure Consulta;
    procedure Verfoto;
    procedure clicou(sender: TObject);
    /////
    procedure cxSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grConsultaDBTableView1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxCadClick(Sender: TObject);
    procedure btnConClick(Sender: TObject);
    procedure cbAtivoClick(Sender: TObject);
    procedure cbOrdemPropertiesChange(Sender: TObject);
    procedure eConsultaPropertiesChange(Sender: TObject);
    procedure grConsultaDBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxPrintClick(Sender: TObject);
    procedure cxImageClick(Sender: TObject);
    procedure grConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
    indice : String; 
  public
    { Public declarations }
    CODIGO, NOME: String;
  end;

var
  Fcon_Prod: TFcon_Prod;
  fVisualizaImagem: TForm;

implementation

uses udmCad, uCad_Prod, Rotinas;

{$R *.dfm}

procedure TFcon_Prod.Consulta;
begin
   cdsProd.Close;
   cdsProd.CommandText := 'SELECT A.*, B.DESCRICAO GRUPO, C.DESCRICAO SUBGRUPO, D.RAZAO '+
      ' FROM PRODUTO A '+
      ' LEFT JOIN GENERICA B ON A.idgrupo=B.IDGENERICA AND  b.TABELA='+QuotedStr('GRUPOS')+
      ' LEFT JOIN GENERICA C ON A.idSUBgrupo=B.IDGENERICA AND C.TABELA='+QuotedStr('SUBGRUPO') +
      ' LEFT JOIN CLIENTES D ON A.IDFORNEC=D.IDCLIE ';
   if cbAtivo.Itemindex=1 then
      cdsProd.CommandText := cdsProd.CommandText + ' and ATIVOPROD='+QuotedStr('S');
   if cbAtivo.Itemindex=2 then
      cdsProd.CommandText := cdsProd.CommandText + ' and ATIVOPROD='+QuotedStr('N');
   cdsProd.Commandtext  := cdsProd.CommandText + ' and '+indice+' like '+ QuotedStr('%'+eConsulta.Text+'%');
   cdsProd.Commandtext  := cdsProd.CommandText + ' order by '+indice+ ' DESC';

   cdsPRod.Open;
   cdsPRod.First;
end;

procedure TFcon_Prod.cxSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFcon_Prod.FormShow(Sender: TObject);
begin
   CarregaLyoutForm(Fcon_Prod);
   try
      pnImg.Picture.LoadFromFile(dmCad.cdsConfPASTASERVIDOR.ASString +'\immagini\cons.png');
   except
      pnImg.Visible := false;
   end;
   cbOrdem.ItemIndex := 2;
   indice            := 'PRODUTO';
   Consulta;
   eConsulta.SetFocus;
end;

procedure TFcon_Prod.grConsultaDBTableView1DblClick(Sender: TObject);
begin
   try
      CODIGO    := cdsPRodIDPROD.AsString;
      NOME   := cdsProdPRODUTO.ASString;
      Close;
   except
   end;
end;

procedure TFcon_Prod.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TFcon_Prod.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = Vk_F5 then
      cxCadClick(Self);
   if (key = vk_F6) then
      cxPrintClick(self);
   if Key = Vk_F3 then
      btnCOnCLick(self);
   if (key = vK_F10) then
      cxSairClick(self);

   if (key = Vk_F2) then
   begin
      if cbORdem.Itemindex=  4 then
         cbORdem.Itemindex:= 0 else
         cbOrdem.Itemindex:= cbOrdem.ItemIndex +1;
      cbOrdemPropertiesChange(self);
   end;

   If (key = 13) then
   begin
      CODIGO      := cdsProdIDPROD.AsString;
      NOME        := cdsProdPRODUTO.AsString;
   end;

   if ((key = 40) or (key = 38)) and (not (grConsulta.Focused = true)) then
   begin
      If key = 40 then cdsProd.Next;
      If key = 38 then cdsProd.Prior;
      grCOnsulta.SetFocus;
   end;

   if key = 27 then
      Close;
   VerFOto;
end;

procedure TFcon_Prod.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := CaFree;
end;

procedure TFcon_Prod.cxCadClick(Sender: TObject);
begin
   if Fcad_Prod = nil then
   begin
      Fcad_Prod := TFcad_Prod.Create(self);
      Fcad_Prod.FormStyle := fsNormal;
      Fcad_Prod.WindowState := wsNormal;
      Fcad_Prod.Visible:=false;
      Fcad_Prod.Position := poMainFormCenter;
      Fcad_Prod.cbOrdem.Itemindex := 0;
      Fcad_Prod.eConsulta.Text := cdsProdIDPROD.ASString;
      Fcad_Prod.ShowModal;
   end else
      MessageDlg('O cadastro já esta ativo, verifique!', mtWarning, [mbOK], 0);  
end;

procedure TFcon_Prod.btnConClick(Sender: TObject);
begin
   Consulta;
   eCOnsulta.SetFOcus;
end;

procedure TFcon_Prod.cbAtivoClick(Sender: TObject);
begin
   btnConClick(self);
end;

procedure TFcon_Prod.cbOrdemPropertiesChange(Sender: TObject);
begin
   if cbOrdem.Itemindex=0 then
      indice := 'IDPROD' else
   if cbOrdem.Itemindex=1 then
      indice := 'REFPROD' else
   if cbOrdem.Itemindex=2 then
      indice := 'PRODUTO' else
   if cbORdem.itemindex=3 then
      indice := 'MARCAPROD' else
   if cbORdem.Itemindex=4 then
      indice := 'CODBAR';
   Consulta;
   eCOnsulta.SetFOcus;
end;

procedure TFcon_Prod.eConsultaPropertiesChange(Sender: TObject);
begin
   if cdsProd.Active=true then
   begin
      if (trim(eConsulta.Text)='') then
      begin
         cdsProd.First;
         Consulta;
      end;
      try
         cdsProd.Locate(indice,eConsulta.Text,[]);
      except
      end;
   end;
end;

procedure TFcon_Prod.grConsultaDBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   VerFOto;
end;

procedure TFcon_Prod.Verfoto;
begin
   if cdsProdFOTOPROD.AsString <> '' then
   begin
      try
         cxImage.Picture.LoadFromFile(cdsProdFOTOPROD.AsString);
      except
         cxImage.Picture := nil;
      end;
   end
   else
      cxImage.Picture := nil;
end;

procedure TFcon_Prod.cxPrintClick(Sender: TObject);
begin
   MessageDlg('Em Desenvolvimento!', mtWarning, [mbOK], 0);
end;

procedure TFcon_Prod.cxImageClick(Sender: TObject);
var
   fImagemZoom: TcxImage;
begin
   if cdsProdFOTOPROD.AsString <> '' then
   begin
      fVisualizaImagem := TForm.Create(Self);
      with fVisualizaImagem do begin
         Position := poScreenCenter;
         BorderStyle := bsSizeToolWin;
         BorderIcons := [biSystemMenu];
         Color := clWhite;
         Width := 800;
         Height := 800;
         Caption := 'Visualizador de Imagem';
         fImagemZoom := TcxImage.Create(fVisualizaImagem);
         with fImagemZoom do begin
            Parent := fVisualizaImagem;
            Align := alClient;
            AutoSize := False;
            Properties.Center := True;
            Picture.LoadFromFile(cdsProdFOTOPROD.AsString);
            Properties.Stretch := true;
            fImagemZoom.OnClick := Clicou;
         end;
         ShowModal;
      end;
   end;
end;

procedure TFcon_Prod.clicou(sender: TObject);
begin
   fVisualizaImagem.Close;
end;

procedure TFcon_Prod.grConsultaDBTableView1CustomDrawCell(
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
