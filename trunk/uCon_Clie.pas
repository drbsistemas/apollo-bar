unit uCon_Clie;

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
  cxDropDownEdit, cxLabel, cxGroupBox, dxGDIPlusClasses, cxImage, FMTBcd,
  SqlExpr, DBClient, Provider;

type
  TFcon_Cliente = class(TForm)
    pnImg: TcxImage;
    pncon: TcxGroupBox;
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
    qryClie: TSQLDataSet;
    qryClieIDCLIE: TIntegerField;
    qryClieRAZAO: TStringField;
    qryClieENDERECO: TStringField;
    qryClieNUM: TStringField;
    qryClieCIDADE: TStringField;
    qryClieUF: TStringField;
    qryClieBAIRRO: TStringField;
    qryClieCEP: TStringField;
    qryClieCNPJ: TStringField;
    qryClieIE: TStringField;
    qryClieFONE: TStringField;
    qryClieCELULAR: TStringField;
    qryClieEMAIL: TStringField;
    qryClieOBS: TStringField;
    qryClieCOMPLEMENTO: TStringField;
    qryClieDATACAD: TSQLTimeStampField;
    qryClieATIVO: TIntegerField;
    qryClieCPF: TStringField;
    qryClieRG: TStringField;
    dspCLie: TDataSetProvider;
    cdsClie: TClientDataSet;
    cdsClieIDCLIE: TIntegerField;
    cdsClieRAZAO: TStringField;
    cdsClieENDERECO: TStringField;
    cdsClieNUM: TStringField;
    cdsClieCIDADE: TStringField;
    cdsClieUF: TStringField;
    cdsClieBAIRRO: TStringField;
    cdsClieCEP: TStringField;
    cdsClieCNPJ: TStringField;
    cdsClieIE: TStringField;
    cdsClieFONE: TStringField;
    cdsClieCELULAR: TStringField;
    cdsClieEMAIL: TStringField;
    cdsClieOBS: TStringField;
    cdsClieCOMPLEMENTO: TStringField;
    cdsClieDATACAD: TSQLTimeStampField;
    cdsClieATIVO: TIntegerField;
    cdsClieCPF: TStringField;
    cdsClieRG: TStringField;
    dsClie: TDataSource;
    grConsulta: TcxGrid;
    grConsultaDBTableView1: TcxGridDBTableView;
    grConsultaDBTableView1IDCLIE: TcxGridDBColumn;
    grConsultaDBTableView1RAZAO: TcxGridDBColumn;
    grConsultaDBTableView1FONE: TcxGridDBColumn;
    grConsultaDBTableView1CELULAR: TcxGridDBColumn;
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    grConsultaDBTableView1ENDERECO: TcxGridDBColumn;
    grConsultaDBTableView1NUM: TcxGridDBColumn;
    grConsultaDBTableView1CIDADE: TcxGridDBColumn;
    grConsultaDBTableView1UF: TcxGridDBColumn;
    grConsultaDBTableView1BAIRRO: TcxGridDBColumn;
    grConsultaDBTableView1OBS: TcxGridDBColumn;
    grConsultaLevel1: TcxGridLevel;
    ///// Privado
    procedure Consulta;
    /////
    procedure cxSairClick(Sender: TObject);
    procedure cxPrintClick(Sender: TObject);
    procedure cxCadClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dspCLieGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure btnConClick(Sender: TObject);
    procedure cbOrdemPropertiesChange(Sender: TObject);
    procedure eConsultaPropertiesChange(Sender: TObject);
    procedure grConsultaDBTableView1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
  Fcon_Cliente: TFcon_Cliente;

implementation

uses udmCad, uCad_Cliente, Rotinas;

{$R *.dfm}

procedure TFcon_Cliente.cxSairClick(Sender: TObject);
begin
   close;
end;

procedure TFcon_Cliente.cxPrintClick(Sender: TObject);
begin
   MessageDlg('Em desenvolvimento!', mtInformation, [mbOK], 0);
end;

procedure TFcon_Cliente.cxCadClick(Sender: TObject);
begin
   if Fcad_Cliente = nil then
   begin
      Fcad_Cliente := TFcad_Cliente.Create(self);
      Fcad_Cliente.FormStyle := fsNormal;
      Fcad_Cliente.WindowState := wsNormal;
      Fcad_Cliente.Visible:=false;
      Fcad_Cliente.Position := poMainFormCenter;
      Fcad_Cliente.cbOrdem.Itemindex := 0;
      Fcad_Cliente.eConsulta.Text := cdsCLieIDClie.ASString;
      Fcad_Cliente.ShowModal;
   end else
      MessageDlg('O cadastro já esta ativo, verifique!', mtWarning, [mbOK], 0);
end;

procedure TFcon_Cliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := caFree;
end;

procedure TFcon_Cliente.FormShow(Sender: TObject);
begin
   CarregaLyoutForm(Fcon_Cliente);
   try
      pnImg.Picture.LoadFromFile(dmCad.cdsConfPASTASERVIDOR.ASString +'\immagini\cons.png');
   except
      pnImg.Visible := false;
   end;
   cbOrdem.ItemIndex := 1;
   indice            := 'RAZAO';
   Consulta;
end;

procedure TFcon_Cliente.Consulta;
begin
   cdsClie.close;
   cdsClie.CommandText := 'select * from CLientes'+
   ' where '+indice+' like '+QuotedStr('%'+eConsulta.Text+'%')+
   ' order by IDCLIE DESC';
   cdsCLie.Open;
   cdsCLie.First;
end;

procedure TFcon_Cliente.dspCLieGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
   TableName:='CLIENTES';
end;

procedure TFcon_Cliente.btnConClick(Sender: TObject);
begin
   COnsulta;
   eConsulta.SetFocus;
end;

procedure TFcon_Cliente.cbOrdemPropertiesChange(Sender: TObject);
begin
   if cboRdem.ItemIndex =0 then
      indice :='IDCLIE' else
   if cbORdem.ItemIndex =1 then
      indice :='RAZAO'  else
   if cbORdem.ItemIndex =2 then
      indice :='TELEFONE' else
   if cboRdem.Itemindex =3 then
      indice :='CIDADE' else
   if cboRdem.ItemIndex =4 then
      indice := 'CPF';
   Consulta;
   econSulta.SetFocus;
end;

procedure TFcon_Cliente.eConsultaPropertiesChange(Sender: TObject);
begin
   if cdsClie.Active=true then
   begin
      if (trim(eConsulta.Text)='') then
      begin
         cdsClie.First;
         Consulta;
      end;
      try
         cdsClie.Locate(indice,eConsulta.Text,[loPartialKey]);
      except
      end;
   end;
end;

procedure TFcon_Cliente.grConsultaDBTableView1DblClick(Sender: TObject);
begin
   try
      CODIGO := cdsClieIDCLIE.AsInteger;
      NOME   := cdsClieRAZAO.ASString;
      Close;
   except
   end;
end;

procedure TFcon_Cliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TFcon_Cliente.FormKeyDown(Sender: TObject; var Key: Word;
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
      CODIGO      := cdsCLieIDCLIE.AsInteger;
      NOME        := cdsCLieRAZAO.AsString;
   end;

   if ((key = 40) or (key = 38)) and (not (grConsulta.Focused = true)) then
   begin
      If key = 40 then cdsClie.Next;
      If key = 38 then cdsClie.Prior;
      grCOnsulta.SetFocus;
   end;

   if key = 27 then
      Close;
end;

procedure TFcon_Cliente.grConsultaDBTableView1CustomDrawCell(
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
