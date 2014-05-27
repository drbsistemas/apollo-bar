unit uCon_Cidade;

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
  dxSkinXmas2008Blue, dxGDIPlusClasses, cxImage, Menus, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxCheckBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, cxButtons, cxGroupBox;

type
  TFcon_Cidade = class(TForm)
    pnImg: TcxImage;
    pnCon: TcxGroupBox;
    grConsulta: TcxGrid;
    grConsultaDBTableView1: TcxGridDBTableView;
    grConsultaDBTableView1IDCLIE: TcxGridDBColumn;
    grConsultaDBTableView1RAZAO: TcxGridDBColumn;
    grConsultaDBTableView1FONE: TcxGridDBColumn;
    grConsultaLevel1: TcxGridLevel;
    pnBottom: TcxGroupBox;
    cxSair: TcxButton;
    cxConsulta: TcxGroupBox;
    cxLabel1: TcxLabel;
    cbOrdem: TcxComboBox;
    cxLabel2: TcxLabel;
    eConsulta: TcxTextEdit;
    pnCad: TcxGroupBox;
    cxLabel3: TcxLabel;
    eCodigo: TcxTextEdit;
    cxLabel4: TcxLabel;
    eDescricao: TcxTextEdit;
    eTipo: TcxComboBox;
    cxMenuCad: TcxGroupBox;
    cxSalvar: TcxButton;
    cxDesistir: TcxButton;
    cxLabel6: TcxLabel;
    cxLabel5: TcxLabel;
    eDre: TcxComboBox;
    eAtivo: TcxCheckBox;
    ///// Privado
    procedure Consulta;
    procedure MudaPainel(intMuda: Integer);
    /////
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure eConsultaPropertiesChange(Sender: TObject);
    procedure cxSairClick(Sender: TObject);
    procedure cbOrdemClick(Sender: TObject);
    procedure grConsultaDBTableView1DblClick(Sender: TObject);
    procedure grConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
    indice: String;
  public
    { Public declarations }
    CODIGO: Integer;
    StrUf, DESCRICAO: String;

  end;

var
  Fcon_Cidade: TFcon_Cidade;

implementation

uses udmCad, Rotinas;

{$R *.dfm}

procedure TFcon_Cidade.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TFcon_Cidade.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (key = 13) then
   begin
      try
         CODIGO    := dmcad.cdsCidadeCODMUN.AsInteger;
         DESCRICAO := dmcad.cdsCidadeMUNICIPIO.asString;
         close;
      except
      end;
   end;
   if (Key = vk_escape) then
      close;
end;

procedure TFcon_Cidade.Consulta;
begin
   dmCad.cdsCidade.Close;
   dmCad.cdsCidade.CommandText := 'select * From CODIBGE where '+indice+' like '+QuotedStr('%'+eConsulta.Text+'%')+'  and UF='+QuotedStr(StrUF);
   dmCad.cdsCidade.Open;
   dmCad.cdsCidade.First;
end;

procedure TFcon_Cidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := CaFree;
end;

procedure TFcon_Cidade.FormShow(Sender: TObject);
begin
   CarregaLyoutForm(FCon_cidade);
   try
      pnImg.Picture.LoadFromFile(dmCad.cdsConfPASTASERVIDOR.ASString +'immagini\cons.png');
   except
      pnImg.Visible := false;
   end;
   indice := 'MUNICIPIO';
   cbORdem.ItemIndex := 1; // CIDADE;
   COnsulta;
   eCOnsulta.SetFOcus;
end;

procedure TFcon_Cidade.eConsultaPropertiesChange(Sender: TObject);
begin
   Consulta;
end;

procedure TFcon_Cidade.MudaPainel(intMuda: Integer);
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

procedure TFcon_Cidade.cxSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFcon_Cidade.cbOrdemClick(Sender: TObject);
begin
   if cbOrdem.itemindex= 0 then
      indice := 'CODMUN' else
   if cbOrdem.Itemindex= 1 then
      indice := 'MUNICIPIO';
   Consulta;
   eConsulta.SetFocus;
end;

procedure TFcon_Cidade.grConsultaDBTableView1DblClick(Sender: TObject);
begin
   try
      CODIGO    := dmCad.cdsCidadeCODMUN.AsInteger;
      DESCRICAO := dmcad.cdsCidadeMUNICIPIO.asString;
      close;
   except
   end;
end;

procedure TFcon_Cidade.grConsultaDBTableView1CustomDrawCell(
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
