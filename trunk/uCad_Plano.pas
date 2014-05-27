unit uCad_Plano;

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
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel, cxGroupBox,
  cxCheckBox;

type
  TFcad_Plano = class(TForm)
    pnImg: TcxImage;
    pnCad: TcxGroupBox;
    pnCon: TcxGroupBox;
    pnConsulta: TcxGroupBox;
    cxNovo: TcxButton;
    cxEditar: TcxButton;
    cxVisualiza: TcxButton;
    cxApaga: TcxButton;
    cxVoltar: TcxButton;
    grConsulta: TcxGrid;
    grConsultaDBTableView1: TcxGridDBTableView;
    grConsultaDBTableView1IDCLIE: TcxGridDBColumn;
    grConsultaDBTableView1RAZAO: TcxGridDBColumn;
    grConsultaDBTableView1FONE: TcxGridDBColumn;
    grConsultaLevel1: TcxGridLevel;
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
    pnBottom: TcxGroupBox;
    cxSair: TcxButton;
    cxCad: TcxButton;
    cxConsulta: TcxGroupBox;
    cxLabel1: TcxLabel;
    cbOrdem: TcxComboBox;
    cxLabel2: TcxLabel;
    eConsulta: TcxTextEdit;
    btnCon: TcxButton;
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    grConsultaDBTableView1Column2: TcxGridDBColumn;
    ///// Privado
    procedure Consulta;
    procedure Limpa;
    procedure MudaPainel(intMuda: integer);
    procedure Edita;
    procedure AbreCom(StrAbre: String);
    procedure Validacao;
    /////
    procedure cxSairClick(Sender: TObject);
    procedure cxDesistirClick(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure cxEditarClick(Sender: TObject);
    procedure cxVisualizaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure cbOrdemClick(Sender: TObject);
    procedure btnConClick(Sender: TObject);
    procedure eConsultaPropertiesChange(Sender: TObject);
    procedure grConsultaDBTableView1DblClick(Sender: TObject);
    procedure cxVoltarClick(Sender: TObject);
    procedure cxCadClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxApagaClick(Sender: TObject);
    procedure grConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
    indice: String;
  public
    { Public declarations }
    CODIGO: Integer;
    DESCRICAO : String;
  end;

var
  Fcad_Plano: TFcad_Plano;

implementation

uses udmCad, Rotinas;

{$R *.dfm}

procedure TFcad_Plano.Consulta;
begin
   dmCAd.cdsPLano.IndexName := '';
   dmcad.cdsPlano.Close;
   dmCad.cdsPlano.CommandText := 'select * from PLANOCONTA where '+indice+' like '+QuotedStr('%'+eConsulta.TExt+'%');
   if StrTipoConta = 'R' then
      dmCad.cdsPlano.CommandText :=  dmCad.cdsPlano.CommandText + ' and TIPOPLANO='+QuotedStr('1 - RECEITAS') else
   if StrTipoConta = 'P' then
      dmCad.cdsPlano.CommandText :=  dmCad.cdsPlano.CommandText + ' and TIPOPLANO<>'+QuotedStr('1 - RECEITAS');
   dmcad.cdsPLano.Open;
   dmcAd.cdsPLano.First;
end;

procedure TFcad_Plano.cxSairClick(Sender: TObject);
begin
   close;
end;

procedure TFcad_Plano.cxDesistirClick(Sender: TObject);
begin
   if (MessageBox(0, 'Deseja realmente desistir?', 'Desistir?', MB_ICONINFORMATION or MB_YESNO or MB_TASKMODAL or MB_DEFBUTTON2) = idNo) then
      abort;
    MudaPainel(0); // COnsulta;
    Consulta;
    eCOnsulta.SetFocus;
end;

procedure TFcad_Plano.MudaPainel(intMuda: integer);
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

procedure TFcad_Plano.cxSalvarClick(Sender: TObject);
begin
   if cxSalvar.TAg = 0 then // Editar
      dmCAd.cdsPlano.Edit else
      dmCad.cdsPLano.Insert;

   dmCad.cdsPlanoNOMEPLANO.ASString := eDescricao.TExt;
   dmcad.cdsPlanoTIPOPLANO.ASString := eTipo.Text;
   dmcad.cdsPlanoDRE.ASString       := copy(eDre.Text,1,1);
   if eAtivo.Checked = true then
      dmcad.cdsPlanoATIVO.AsString := 'S' else
      dmCad.cdsPlanoATIVO.AsString := 'N';
   try
      dmCad.cdsplano.POst;
      dmCad.cdsPlano.ApplyUpdates(0);
      dmcad.cdsPlano.Refresh;
      MudaPainel(0); // Cadastro
      Consulta;
      eConsulta.SetFOcus;
   except
      dmCad.cdsPlano.CancelUpdates;
   end;
end;

procedure TFcad_Plano.Limpa;
begin
   eCodigo.TExt      := '0';
   eDescricao.Clear;
   eAtivo.Checked    := false;
   eDre.ItemIndex    := 0;
   eTIpo.ItemIndex   := 0;
end;

procedure TFcad_Plano.Edita;
begin
   eCodigo.TExt      := dmCad.cdsPlanoIDPLANO.AsString;
   eDescricao.Text   := dmcad.cdsPlanoNOMEPLANO.AsString;
   if dmCad.cdsPlanoATIVO.AsString = 'S' then // SIM
      eAtivo.Checked := true else
      eATivo.Checked := false;
   if dmCad.cdsPlanoDRE.AsString = 'S' then // SIM
      eDre.ItemIndex := 0 else
      eDre.ItemIndex := 1;
   if dmcad.cdsPlanoTIPOPLANO.ASString = 'S' then
      eTipo.ItemIndex := 0 else
      eTIpo.Itemindex := 1;
end;

procedure TFcad_Plano.cxNovoClick(Sender: TObject);
begin
   SistemaLiberado;
   Limpa;
   cxSalvar.Tag := 1;
   MudaPainel(1); // Cadastro;
   eAtivo.Checked := true;   
   eDescricao.setFocus;
end;

procedure TFcad_Plano.cxEditarClick(Sender: TObject);
begin
   SistemaLiberado;
   if (dmCad.cdsPlano.Active = false) or (dmcad.cdsPlano.RecordCount<1) then
   begin
      MessageDlg('Não há registros identificados, verifique!', mtInformation, [mbOK], 0);
      abort;
   end;
   Edita;
   MudaPainel(1); // Cadastro
   cxSalvar.Tag := 0; // Editar
   eDescricao.SetFocus;
end;

procedure TFcad_Plano.cxVisualizaClick(Sender: TObject);
begin
   cxSalvar.Enabled := false;
   cxEditarClick(Self);
end;

procedure TFcad_Plano.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action := caFree;
end;

procedure TFcad_Plano.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #27 then
      if pnConsulta.VIsible then
         cxVoltarClick(self) else
      if pnBottom.Visible then
         Close;
   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TFcad_Plano.FormShow(Sender: TObject);
begin
   MudaPainel(0); // Cadastro
   try
      pnImg.Picture.LoadFromFile(dmCad.cdsConfPASTASERVIDOR.ASString +'immagini\cons.png');
   except
      pnImg.Visible := false;
   end;   
   indice := 'IDPLANO';
   cbORdem.ItemIndex := 0; // Codigo;
   COnsulta;
   eCOnsulta.SetFOcus;
end;

procedure TFcad_Plano.cbOrdemClick(Sender: TObject);
begin
   if cbOrdem.Itemindex = 0 then
      indice := 'IDPLANO' else
   if cboRdem.Itemindex = 1 then
      indice := 'NOMEPLANO';
   COnsulta;
   eConsulta.SetFOcus;
end;

procedure TFcad_Plano.btnConClick(Sender: TObject);
begin
   COnsulta;
   eCOnsulta.SetFOcus;
end;

procedure TFcad_Plano.eConsultaPropertiesChange(Sender: TObject);
begin
   if dmCad.cdsPlano.Active=true then
   begin
      if (trim(eConsulta.Text)='') then
      begin
         dmCad.cdsPlano.First;
         Consulta;
      end;
      try
         dmCad.cdsPlano.Locate(indice,eConsulta.Text,[loPartialKey]);
      except
      end;
   end;
end;

procedure TFcad_Plano.grConsultaDBTableView1DblClick(Sender: TObject);
begin
   if pnConsulta.Visible = true then
      cxEditarClick(self) else
   if (pnBottom.Visible = true) then
   begin
      try
         CODIGO    := dmcad.cdsPlanoIDPLANO.AsInteger;
         DESCRICAO := dmcad.cdsPlanoNOMEPLANO.asString;
         close;
      except
      end;
   end;
end;

procedure TFcad_Plano.cxVoltarClick(Sender: TObject);
begin
   AbreCom('CON');
end;

procedure TFcad_Plano.cxCadClick(Sender: TObject);
begin
   AbreCom('CAD');
end;

procedure TFcad_Plano.AbreCom(StrAbre: String);
begin
   if StrAbre = 'CON' then
   begin
      pnBottom.Visible     := true;
      pnConsulta.Visible   := false;
   end
   else
   if StrAbre = 'CAD' then
   begin
      pnBottom.Visible     := false;
      pnConsulta.Visible   := true;
   end;
end;

procedure TFcad_Plano.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (key = 13) and (pnBottom.Visible = true) then
   begin
      try
         CODIGO    := dmcad.cdsPlanoIDPLANO.AsInteger;
         DESCRICAO := dmcad.cdsPlanoNOMEPLANO.asString;
         close;
      except
      end;
   end;
end;

procedure TFcad_Plano.cxApagaClick(Sender: TObject);
begin
   SistemaLiberado;
   if (dmCad.cdsPlano.Active = false) or (dmCad.cdsPlano.RecordCount<1) then
   begin
      MessageDlg('Não há registros identificados, verifique!', mtInformation, [mbOK], 0);
      abort;
   end;
   if (MessageBox(0, 'Tem certeza que deseja apagar este registro?', 'Apagar?', MB_ICONINFORMATION or MB_YESNO or MB_TASKMODAL or MB_DEFBUTTON2) = idNo) then
      abort;
   ///// Validação
   Validacao;
   try
      dmCad.cdsPlano.Delete;
      dmCad.cdsPlano.ApplyUpdates(0);
   except
      dmCad.cdsPlano.CancelUpdates;
      MessageDlg('Não foi possível apagar este registro, tente novamente!', mtInformation, [mbOK], 0);
   end;
end;

procedure TFcad_Plano.Validacao;
begin
   //
end;

procedure TFcad_Plano.grConsultaDBTableView1CustomDrawCell(
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
