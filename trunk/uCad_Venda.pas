unit uCad_Venda;

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
  cxDropDownEdit, cxTextEdit, cxLabel, cxGroupBox, ExtCtrls, Grids,
  DBGrids, cxCurrencyEdit, cxButtonEdit, dxGDIPlusClasses, cxImage,
  cxCalendar;

type
  TFcad_Venda = class(TForm)
    pnCon: TPanel;
    pnConsulta: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    eConsulta: TcxTextEdit;
    btnCon: TcxButton;
    cxNovo: TcxButton;
    cxEditar: TcxButton;
    cxVisualiza: TcxButton;
    cxApaga: TcxButton;
    cxPrint: TcxButton;
    cxSair: TcxButton;
    cxMov: TcxButton;
    cbOrdem: TcxComboBox;
    grConsulta: TcxGrid;
    grConsultaDBTableView1: TcxGridDBTableView;
    grConsultaDBTableView1IDCLIE: TcxGridDBColumn;
    grConsultaDBTableView1RAZAO: TcxGridDBColumn;
    grConsultaDBTableView1FONE: TcxGridDBColumn;
    grConsultaDBTableView1CELULAR: TcxGridDBColumn;
    STATUS: TcxGridDBColumn;
    grConsultaDBTableView1ENDERECO: TcxGridDBColumn;
    grConsultaDBTableView1NUM: TcxGridDBColumn;
    grConsultaDBTableView1CIDADE: TcxGridDBColumn;
    grConsultaDBTableView1UF: TcxGridDBColumn;
    grConsultaDBTableView1BAIRRO: TcxGridDBColumn;
    grConsultaDBTableView1OBS: TcxGridDBColumn;
    grConsultaLevel1: TcxGridLevel;
    pnCad: TcxGroupBox;
    cxMeio: TcxGroupBox;
    cxGroupBox8: TcxGroupBox;
    cxImage: TcxImage;
    cxGroupBox9: TcxGroupBox;
    cxEnter: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
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
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    eCliente: TcxTextEdit;
    eCodClie: TcxButtonEdit;
    eUsuario: TcxTextEdit;
    cxGroupBox10: TcxGroupBox;
    eTaxaServico: TcxCurrencyEdit;
    cxGroupBox11: TcxGroupBox;
    eSubTotal: TcxCurrencyEdit;
    eMesa: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    cxMSg: TcxLabel;
    eCodigo: TcxTextEdit;
    eCodMesa: TcxTextEdit;
    pnBotoes: TcxGroupBox;
    cxSalvar: TcxButton;
    cxCancItem: TcxButton;
    cxImprimir: TcxButton;
    cxVoltar: TcxButton;
    cxCancMesa: TcxButton;
    cxItem: TcxGroupBox;
    DBGrid1: TDBGrid;
    eDataFim: TcxDateEdit;
    eDataIni: TcxDateEdit;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    ///// Privado
    procedure Consulta;
    procedure MudaPainel(intMuda: integer);
    procedure AbreItem;
    procedure CalculaTotal;    
    /////
    procedure cxSairClick(Sender: TObject);
    procedure btnConClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure eConsultaPropertiesChange(Sender: TObject);
    procedure cbOrdemPropertiesChange(Sender: TObject);
    procedure grConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxVoltarClick(Sender: TObject);
  private
    { Private declarations }
    indice: String;
  public
    { Public declarations }
  end;

var
  Fcad_Venda: TFcad_Venda;

implementation

uses udmVenda, Rotinas;

{$R *.dfm}

procedure TFcad_Venda.AbreItem;
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

procedure TFcad_Venda.CalculaTotal;
begin
   dmVenda.qryAux.Close;
   dmVenda.qryAux.CommandText := 'select SUM(VLRTOTAL) from ITEMVENDA where IDVENDA='+QuotedStr(eCodigo.text)+' and STATUS='+QuotedStr('NORMAL');
   dmVenda.qryAux.Open;
   eSubTotal.Value := dmvenda.qryAux.Fieldbyname('SUM').AsFLoat;
   eTotalVenda.Value := eTaxaServico.Value + eSubTotal.Value;
end;

procedure TFcad_Venda.Consulta;
begin
   dmVenda.cdsVendas.Close;
   dmVenda.cdsVendas.CommandText :='select A.*, B.RAZAO, C.NOMEVENDEDOR '+
      ' from venda A '+
      ' left join CLIENTES B on A.IDCLIE=B.IDCLIE'+
      ' left join VENDEDOR C on A.IDVENDEDOR=C.IDVEND '+
      ' where '+indice+' like '+QuotedStr('%'+eConsulta.Text+'%')+
      ' and DTVENDA>='+ QuotedStr(DataSql(edataini.date)+' 00:00:00')+' and DTVENDA<='+QuotedStr(DataSql(edataFim.date)+' 23:59:59')+  
      ' order by '+indice+' desc';
   dmVenda.cdsVendas.open;
end;

procedure TFcad_Venda.cxSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFcad_Venda.MudaPainel(intMuda: integer);
begin
   if intMuda=0 then // COnsulta
   begin
      pnCon.Visible     := true;
      pnCad.Visible     := false;
      eConsulta.SetFOcus;
   end else
   if intMuda = 1 then // cadastro
   begin
      pnCon.Visible     := false;
      pnCad.Visible     := true;
   end;
end;

procedure TFcad_Venda.btnConClick(Sender: TObject);
begin
   Consulta;
   eConsulta.SetFocus;
end;

procedure TFcad_Venda.FormShow(Sender: TObject);
begin
   FormAtivo     := Fcad_Venda;
   MudaPainel(0); // Consulta
   indice        := 'RAZAO';
   eDataIni.Date := Date;
   eDataFim.Date := Date;
   cbOrdem.ItemIndex:=1;
   cbOrdemPropertiesChange(sender);
end;

procedure TFcad_Venda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if pncad.Visible = true then
   begin
      MessageDlg('O registro esta em modo de cadastro, não pode ser fechado!', mtWarning, [mbOK], 0);
      abort;
   end;
   PFundo(1);
   FormAtivo      := Nil;
   Fcad_Venda     := nil;
   Action         := CaFree;
end;

procedure TFcad_Venda.eConsultaPropertiesChange(Sender: TObject);
begin
   if dmVenda.cdsVendas.Active=true then
   begin
      if (trim(eConsulta.Text)='') then
      begin
         dmVenda.cdsVendas.First;
         Consulta;
      end;
      try
         dmVenda.cdsVendas.Locate(indice,eConsulta.Text,[loPartialKey]);
      except
      end;
   end;
end;

procedure TFcad_Venda.cbOrdemPropertiesChange(Sender: TObject);
begin
   case cbOrdem.Itemindex of
      0: indice :='IDVENDA';
      1: indice :='RAZAO';
      2: indice :='NOMEVENDEDOR';
      3: indice :='USUARIO';
   end;
   Consulta;
   if pncon.Visible = true then
   econSulta.SetFocus;
end;

procedure TFcad_Venda.grConsultaDBTableView1CustomDrawCell(
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
   ////// CANCELADO
      if (AViewInfo.GridRecord.Values[STATUS.Index] = 'CANCELADA') then
      begin
         ACanvas.Canvas.Brush.Color := clRed;
         ACanvas.Canvas.Font.Color  := clRed;
         //ACanvas.Canvas.Font.Style:=[fsBold];
      end
      else
   ///// ABERTO
      if (AViewInfo.GridRecord.Values[STATUS.Index] = 'ABERTO') then
      begin
         ACanvas.Canvas.Brush.Color := clGreen;
         ACanvas.Canvas.Font.Color  := clGreen;
         //ACanvas.Canvas.Font.Style:=[fsBold];
      end else
      if (AViewInfo.GridRecord.Values[STATUS.Index] = 'CONCLUÍDA') then
      begin
         ACanvas.Canvas.Brush.Color := clBlue;
         ACanvas.Canvas.Font.Color  := clBlue;
         //ACanvas.Canvas.Font.Style:=[fsBold];
      end;
   end;
end;

procedure TFcad_Venda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Key = VK_F3) and (pnCon.Visible = true) then
      btnConClick(self);
   if (key = Vk_F2) then
   begin
      if cbOrdem.Itemindex=  3 then
         cbORdem.Itemindex:= 0 else
         cbOrdem.Itemindex:= cbOrdem.ItemIndex +1;
      cbOrdemPropertiesChange(self);
   end;
   if (key = VK_DOWN) and (not grConsulta.Focused = true) then
      dmVenda.cdsVendas.Next else
   if (key = VK_Up) and (not grConsulta.Focused = true) then
      dmVenda.cdsVendas.Prior;
{   if (Key = VK_DOWN) or (Key = VK_UP) then
      cxQtdeREg.Caption := 'Registros: '+ intToStr(dmCad.cdsClie.RecordCount); }
end;

procedure TFcad_Venda.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TFcad_Venda.cxVoltarClick(Sender: TObject);
begin
   MudaPainel(0); // Consulta
   eConsulta.SetFocus;   
end;

end.
