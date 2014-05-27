unit uCon_ItemPar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, dxBar,
  cxClasses, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLabel, Menus, StdCtrls, cxButtons,
  cxCurrencyEdit, cxGroupBox;

type
  TFcon_ItemPar = class(TForm)
    pnEdita: TPanel;
    btnGravar: TcxButton;
    btnCancelar: TcxButton;
    Msg: TcxLabel;
    cxLabel1: TcxLabel;
    cbAtivo: TcxComboBox;
    eStr: TcxTextEdit;
    eVlr: TcxCurrencyEdit;
    eInt: TcxCurrencyEdit;
    pnConsulta: TcxGroupBox;
    cxSair: TcxButton;
    eModulo: TcxTextEdit;
    eConsulta: TcxTextEdit;
    cxLabel2: TcxLabel;
    grConsulta: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    grConsultaDBTableView1IDCLIE: TcxGridDBColumn;
    grConsultaDBTableView1RAZAO: TcxGridDBColumn;
    grConsultaDBTableView1FONE: TcxGridDBColumn;
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    ///// Privado
    procedure Consulta;
    /////
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure eConsultaPropertiesChange(Sender: TObject);
    procedure eModuloPropertiesChange(Sender: TObject);
    procedure grConsultaDBTableView1DblClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure eIntKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxSairClick(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
   indice: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcon_ItemPar: TFcon_ItemPar;

implementation

uses udmCad, Rotinas;

{$R *.dfm}

procedure TFcon_ItemPar.FormResize(Sender: TObject);
begin
/////
   pnEdita.Left      := (Fcon_ItemPar.ClientWidth div 2)-115;
   pnEdita.Top       := (Fcon_ItemPar.ClientHeight div 2)-37;
/////
end;

procedure TFcon_ItemPar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   PFundo(1);
   FormAtivo      := Nil;
   Fcon_ItemPar   := nil;
   Action         := CaFree;
end;

procedure TFcon_ItemPar.FormShow(Sender: TObject);
begin
   CarregaLyoutForm(Fcon_ItemPar);
   FormAtivo     := Fcon_ItemPar;
   indice        := '';
   Consulta;
   eConsulta.SetFocus;
end;

procedure TFcon_ItemPar.eConsultaPropertiesChange(Sender: TObject);
begin
   Consulta;
end;

procedure TFcon_ItemPar.Consulta;
begin
   dmCad.cdsItemConf.IndexName   := '';
   dmCad.qryItemConf.Close;
   dmCad.cdsItemConf.Close;
   dmcad.cdsItemConf.CommandText := 'select * from itemconf where RESUMOCONF like '+QuotedStr('%'+eConsulta.Text+'%')+' and MODULOCONF like '+QuotedStr('%'+eModulo.Text+'%');
   dmcad.cdsItemConf.Open;
   dmCad.cdsItemConf.First;
end;

procedure TFcon_ItemPar.eModuloPropertiesChange(Sender: TObject);
begin
   Consulta;
end;

procedure TFcon_ItemPar.grConsultaDBTableView1DblClick(Sender: TObject);
begin
   SistemaLiberado;
   
   pnEdita.BringToFront;
   pnEdita.VIsible      := true;
   pnConsulta.Enabled   := false;
   grConsulta.Enabled   :=false;
///// Deixa todos invisiveis
   cbAtivo.visible      := false;
   eStr.visible         := false;
   eInt.Visible         := False;
   eVLr.VIsible         := False;
/////
   ///// Alimenta o nome do parametro para saber a decisão a ser tomada
   Msg.Caption := dmCad.cdsItemConfRESUMOCONF.AsString;
   ///// Ve o tipo do parametro e mostra o campo correspondente.
   if dmCad.cdsItemConfTIPOINFO.AsString='B' then
   begin
      cbAtivo.VIsible:=true;
      if dmCad.cdsItemConfVALORCONF.AsString = 'SIM' then
         cbAtivo.itemindex:=0 else
         cbAtivo.itemindex:=1;
      cbAtivo.SetFOcus;
   end else
   if dmCad.cdsItemConfTIPOINFO.AsString='F' then
   begin
      eVlr.Visible := true;
      eVlr.Value   := StrToFloat(dmCad.cdsItemConfVALORCONF.AsString);
      eVlr.SetFocus;
   end else
   if dmCad.cdsItemConfTIPOINFO.AsString='I' then
   begin
      eInt.Visible := true;
      eInt.Value   := StrToint(dmCad.cdsItemConfVALORCONF.AsString);
      eInt.SetFocus;
   end else
   if dmCad.cdsItemConfTIPOINFO.AsString='S' then
   begin
      eStr.Visible := true;
      eStr.Text    := dmCad.cdsItemConfVALORCONF.AsString;
      eStr.SetFocus;
   end;
/////
   pnEdita.Left      := (Fcon_ItemPar.ClientWidth div 2)-115;
   pnEdita.Top       := (Fcon_ItemPar.ClientHeight div 2)-37;
/////
end;

procedure TFcon_ItemPar.btnCancelarClick(Sender: TObject);
begin
   pnEdita.Visible         :=false;
   grConsulta.Enabled      :=true;
   pnConsulta.Enabled      := true;
   Application.ProcessMessages;
end;

procedure TFcon_ItemPar.btnGravarClick(Sender: TObject);
begin
   dmCad.cdsItemConf.Edit;
   if cbAtivo.Visible=true then
      dmCad.cdsItemConfVALORCONF.AsString := cbAtivo.Text else
   if eint.visible=true then
      dmCad.cdsItemConfVALORCONF.AsString := eInt.Text else
   if eStr.Visible=true then
      dmCad.cdsItemConfVALORCONF.AsString := eStr.Text else
   if eVlr.Visible=true then
      dmCad.cdsItemConfVALORCONF.AsString := FormatFloat('###,###,##0.00',eVlr.Value) else
   if eStr.Visible=true then
      dmCad.cdsItemConfVALORCONF.AsString := eStr.Text;

   try
      dmCad.cdsItemConf.Post;
      dmCad.cdsItemConf.ApplyUpdates(0);

      pnEdita.Visible   :=false;
      pnConsulta.Enabled:= true;
      grConsulta.Enabled:=true;
      dmCad.cdsItemConf.Refresh;
      Application.ProcessMessages;
   except
      ShowMessage('O sistema não conseguiu atualizar esta configuração, tente novamente!');
      MessageDlg('Atenção! Não foi possível registrar os dados, tente novamente.', mtWarning, [mbOK], 0);
   end;
end;

procedure TFcon_ItemPar.eIntKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in ['0'..'9',#8,',']) then key:=#0;
end;

procedure TFcon_ItemPar.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then Close;
   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TFcon_ItemPar.cxSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFcon_ItemPar.cxGridDBTableView1CustomDrawCell(
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
