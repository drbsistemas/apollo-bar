unit uCon_Estoque;

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
  dxSkinXmas2008Blue, Menus, StdCtrls, cxButtons, cxGroupBox, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxCurrencyEdit, cxLabel;

type
  TFcon_Estoque = class(TForm)
    pnConsulta: TcxGroupBox;
    cxConEstoque: TcxButton;
    cxMov: TcxButton;
    grConsulta: TcxGrid;
    grConsultaDBTableView1: TcxGridDBTableView;
    IDESTOQUE: TcxGridDBColumn;
    DATA: TcxGridDBColumn;
    DOCUMENTO: TcxGridDBColumn;
    ENTRADA: TcxGridDBColumn;
    SAIDA: TcxGridDBColumn;
    SALDO: TcxGridDBColumn;
    ORIGEM: TcxGridDBColumn;
    DESCRICAO: TcxGridDBColumn;
    OBS: TcxGridDBColumn;
    grConsultaLevel1: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    eEstoqueDisp: TcxCurrencyEdit;
    cxLabel2: TcxLabel;
    eEstoqueTotal: TcxCurrencyEdit;
    ///// Privado
    procedure Consulta;
    /////
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxMovClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxConEstoqueClick(Sender: TObject);
    procedure grConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcon_Estoque: TFcon_Estoque;

implementation

uses udmCad, Rotinas;

{$R *.dfm}

procedure TFcon_Estoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := CaFree;
end;

procedure TFcon_Estoque.cxMovClick(Sender: TObject);
begin
   Close;
end;

procedure TFcon_Estoque.FormShow(Sender: TObject);
begin
   Consulta;
end;

procedure TFcon_Estoque.Consulta;
begin
   dmCad.cdsEstoque.Close;
   dmCad.cdsEstoque.COmmandTExt := 'select A.*, B.PRODUTO, B.REFPROD, B.MARCAPROD, B.ESTOQUEDISP, B.ESTOQUETOTAL, B.UNPROD from Estoque A '+
   ' left join PRODUTO B on A.IDPROD=B.IDPROD where A.IDPROD = '+IntTOStr(dmcad.cdsProdIDPROD.AsInteger);
   dmCad.cdsEstoque.Open;
   dmCAd.cdsEstoque.Last;
end;

procedure TFcon_Estoque.cxConEstoqueClick(Sender: TObject);
begin
   Imprime(dmcad.dsEstoque, NIl,
            'SIM',
            'Ficha de Estoque',
            dmCad.cdsConfPASTASERVIDOR.ASString + '\rapporti\Estoque\ppFichaEstoque.rtm',
            'SIM','',
            1);
end;

procedure TFcon_Estoque.grConsultaDBTableView1CustomDrawCell(
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
