unit uCon_Generico;

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
  dxSkinXmas2008Blue, dxGDIPlusClasses, cxImage, dxSkinscxPCPainter, cxPC,
  Menus, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLabel, cxGroupBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TFcon_Generico = class(TForm)
    pnImg: TcxImage;
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
    cxVoltar: TcxButton;
    pnCad: TcxGroupBox;
    cxMenuCad: TcxGroupBox;
    cxSalvar: TcxButton;
    cxDesistir: TcxButton;
    grConsulta: TcxGrid;
    grConsultaDBTableView1: TcxGridDBTableView;
    grConsultaDBTableView1IDCLIE: TcxGridDBColumn;
    grConsultaDBTableView1RAZAO: TcxGridDBColumn;
    grConsultaDBTableView1FONE: TcxGridDBColumn;
    grConsultaLevel1: TcxGridLevel;
    cxLabel3: TcxLabel;
    eCodigo: TcxTextEdit;
    eDescricao: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    eObs: TcxTextEdit;
    pnTop: TcxGroupBox;
    cxLabel6: TcxLabel;
    cbTabela: TcxComboBox;
    pnBottom: TcxGroupBox;
    cxSair: TcxButton;
    cxCad: TcxButton;
    ecodTabela: TcxTextEdit;
    ///// Privados
    procedure Limpa;
    procedure Editar;
    procedure Consulta;
    procedure MudaPainel(intMuda: integer);
    procedure VerificaDelete(StrTabela: String);
    procedure CaptionForm(StrNome: String);
    procedure AbreCom(StrAbre: String);
    /////
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbOrdemPropertiesChange(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
    procedure cxDesistirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure cxEditarClick(Sender: TObject);
    procedure cxVisualizaClick(Sender: TObject);
    procedure btnConClick(Sender: TObject);
    procedure eConsultaPropertiesChange(Sender: TObject);
    procedure cxApagaClick(Sender: TObject);
    procedure grConsultaDBTableView1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbTabelaClick(Sender: TObject);
    procedure grConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxSairClick(Sender: TObject);
    procedure cxVoltarClick(Sender: TObject);
    procedure cxCadClick(Sender: TObject);
  private
    { Private declarations }
   indice : String;
  public
    { Public declarations }
    TABELA: String;
  end;

var
  Fcon_Generico: TFcon_Generico;

implementation

uses udmCad, Rotinas;

{$R *.dfm}

procedure TFcon_Generico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if pncad.Visible = true then
   begin
      MessageDlg('O registro esta em modo de cadastro, não pode ser fechado!', mtWarning, [mbOK], 0);
      abort;
   end;
   action := caFree;
end;

procedure TFcon_Generico.cbOrdemPropertiesChange(Sender: TObject);
begin
   if cbOrdem.Itemindex=0 then
      indice := 'IDGENERICA' else
   if cbORdem.Itemindex=1 then
      indice := 'DESCRICAO';
   consulta;
   eCOnsulta.SetFOcus;
end;

procedure TFcon_Generico.cxSalvarClick(Sender: TObject);
begin
   if eDescricao.text='' then
   begin
      MessageDlg('Complete o campo descrição!', mtWarning, [mbOK], 0);
      abort;
   end;
///// Pega codigo
      if (eCodigo.text='0') or (trim(ecodigo.text)='') then
      begin
         dmcad.qryAux.Close;
         dmCad.qryAux.Commandtext:='select MAX(IDGENERICA) from GENERICA where GENERICA.tabela='+quotedStr(TABELA);
         dmcad.qryAux.Open;
         eCodigo.Text := IntTOstr(dmcad.qryAux.Fieldbyname('MAX').asInteger+1);
      end;
/////
   if cxNovo.Tag = 1 then
      dmcad.cdsGenerico.Append else
      dmcad.cdsGEnerico.Edit;
   dmcad.cdsGenericoIDGENERICA.ASInteger  := StrToInt(ecodigo.text);
   dmcad.cdsGenericoTABELA.ASString       := TABELA;
   dmcad.cdsGenericoDESCRICAO.ASString    := eDEscricao.Text;
   dmcad.cdsGenericoOBS.ASString          := eObs.Text;
   dmcad.cdsGenericoVALOR.AsFloat         := 0;
   try
      dmcad.cdsGenerico.Post;
      dmcad.cdsGEnerico.ApplyUpdates(0);
      MudaPAinel(0); // Consulta;
      consulta;
      eCOnsulta.SetFocus;
   except
      dmcad.cdsGenerico.CancelUpdates;
   end;
end;

procedure TFcon_Generico.Consulta;
begin
   dmcad.cdsGenerico.close;
   dmcad.cdsgenerico.commandText:='select * from generica where TABELA='+QuotedStr(TABELA)+' and '+indice+
                                  ' like '+QuotedStr('%'+eConsulta.Text+'%')+' order by '+indice;
   dmcad.cdsGenerico.Open;
   dmcad.cdsGenerico.last;
   Fcon_Generico.Caption := 'Cadastro de '+TABELA;
   if Tabela='FPAGTO' then
   begin
      cxNovo.Enabled       := false;
      cxEditar.Enabled     := false;
      cxVisualiza.Enabled  := false;
      cxApaga.Enabled      := false;
   end else
   begin
      cxNovo.Enabled       := true;
      cxEditar.Enabled     := true;
      cxVisualiza.Enabled  := true;
      cxApaga.Enabled      := true;
   end;
end;

procedure TFcon_Generico.Editar;
begin
   eCOdigo.TExt      := IntTOStr(dmcad.cdsGenericoIDGENERICA.Asinteger);
   eDescricao.text   := dmcad.cdsGenericoDESCRICAO.AsString;
   eObs.TExt         := dmcad.cdsGenericoOBS.AsString;
end;

procedure TFcon_Generico.Limpa;
begin
   eCOdigo.TExt      := '0';
   eDescricao.TExt   := '';
   eObs.Text         := '';
end;

procedure TFcon_Generico.MudaPainel(intMuda: integer);
begin
   if intMuda=0 then // COnsulta
   begin
      pnCon.Visible     := true;
      pnCad.Visible     := false;
      cxSalvar.Enabled  := true;
      cxNovo.Tag        := 0;
   end else
   if intMuda = 1 then // cadastro
   begin
      pnCon.Visible     := false;
      pnCad.Visible     := true;
   end;
end;

procedure TFcon_Generico.cxDesistirClick(Sender: TObject);
begin
   if (MessageBox(0, 'Deseja realmente desistir?', 'Desistir?', MB_ICONINFORMATION or MB_YESNO or MB_TASKMODAL or MB_DEFBUTTON2) = idNo) then
      abort;
    MudaPainel(0); // COnsulta;
    Consulta;
    eCOnsulta.SetFocus;
end;

procedure TFcon_Generico.FormShow(Sender: TObject);
begin
   if TABELA='' then
      TABELA:='GRUPOS';
   if FormAtivo = NIL then
      pnTop.Visible := true;
   MudaPAinel(0); // Consulta;
   try
      pnImg.Picture.LoadFromFile(dmCad.cdsConfPASTASERVIDOR.ASString +'\immagini\cons.png');
   except
      pnImg.Visible := false;
   end;
   CaptionForm(TABELA);
   indice:='IDGENERICA';
   cbOrdem.itemindex:=0;
   Consulta;
end;

procedure TFcon_Generico.cxNovoClick(Sender: TObject);
begin
   SistemaLiberado;
   Limpa;
   MudaPainel(1); // Cadastrar
   cxNovo.Tag := 1; // Incluir
   eDescricao.SetFocus;
end;

procedure TFcon_Generico.cxEditarClick(Sender: TObject);
begin
   SistemaLiberado;
   if (dmcad.cdsGenerico.Active = false) or (dmcad.cdsGenerico.RecordCount<=0) then
   begin
      MessageDlg('Não há registros identificados, verifique!', mtInformation, [mbOK], 0);
      abort;
   end;
   Editar;
   cxNovo.Tag := 0; // Editar
   MudaPainel(1);
   eDescricao.SetFocus;
end;

procedure TFcon_Generico.cxVisualizaClick(Sender: TObject);
begin
   if (dmcad.cdsGenerico.Active = false) or (dmcad.cdsGenerico.RecordCount<=0) then
   begin
      MessageDlg('Não há registros identificados, verifique!', mtInformation, [mbOK], 0);
      abort;
   end;
   cxEditarClick(self);
   cxSalvar.Enabled := false;
end;

procedure TFcon_Generico.btnConClick(Sender: TObject);
begin
   consulta;
   econsulta.setFocus;
end;

procedure TFcon_Generico.eConsultaPropertiesChange(Sender: TObject);
begin
   Consulta;
end;

procedure TFcon_Generico.cxApagaClick(Sender: TObject);
begin
   if (dmcad.cdsGenerico.Active = false) or (dmcad.cdsGenerico.RecordCount<=0) then
   begin
      MessageDlg('Não há registros identificados, verifique!', mtInformation, [mbOK], 0);
      abort;
   end;
   if (MessageBox(0, 'Tem certeza que deseja apagar este registro?', 'Apagar?', MB_ICONINFORMATION or MB_YESNO or MB_TASKMODAL or MB_DEFBUTTON2) = idNo) then
      abort;
   try
      VerificaDelete(dmcad.cdsGenericoTABELA.AsString);
      dmcad.cdsGenerico.Delete;
      dmcad.cdsGEnerico.ApplyUpdates(0);
   except
      dmcad.cdsGenerico.CancelUpdates;
      MessageDlg('Não foi possível apagar o registro, tente novamente!', mtWarning, [mbOK], 0);
   end;
end;

procedure TFcon_Generico.grConsultaDBTableView1DblClick(Sender: TObject);
begin
   if pnTop.Visible = false then
   begin
      try
         CODIGO   := dmcad.cdsGenericoIDGENERICA.AsInteger;
         NOME     := dmcad.cdsGenericoDESCRICAO.AsString;
         Close;
      except
      end;
   end;
end;

procedure TFcon_Generico.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then Close;
   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TFcon_Generico.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If (key = 13) and (pncon.Visible = true) then
   begin
      try
         CODIGO      := dmcad.cdsGenericoIDGENERICA.AsInteger;
         NOME        := dmcad.cdsGenericoDESCRICAO.AsString;
         close;
      except
      end;
   end;
   if ((key = 40) or (key = 38)) and (pncon.Visible=true) and (not (grConsulta.Focused = true)) then
   begin
      If key = 40 then dmcad.cdsGenerico.Next;
      If key = 38 then dmcad.cdsGenerico.Prior;
      grCOnsulta.SetFocus;
   end;
end;

procedure TFcon_Generico.cbTabelaClick(Sender: TObject);
begin
   if cbTabela.ItemIndex = 0 then
      TABELA := 'GRUPOS' else
   if cbTabela.ItemIndex = 1 then
      TABELA := 'SUBGRUPO' else
   if cbTabela.ItemIndex = 2 then
      TABELA := 'CCUSTO' else
   if cbTabela.ItemIndex = 3 then
      TABELA := 'FPAGTO';
   Consulta;
   eCOnsulta.SetFOcus;
end;

procedure TFcon_Generico.VerificaDelete(StrTabela: String);
var
   StrCampo: String;
begin
   dmCad.qryAux.Close;

   if StrTabela='GRUPOS'   then
      dmCad.qryAux.CommandText:= 'select count(*) from PRODUTO where IDGRUPO='+dmCad.cdsGenericoIDGENERICA.AsString else
   if StrTabela='SUBGRUPO' then
      dmCad.qryAux.CommandText:= 'select count(*) from PRODUTO where IDSUBGRUPO='+dmCad.cdsGenericoIDGENERICA.AsString else
   if StrTabela='CCUSTO' then
      dmCad.qryAux.CommandText:= 'select count(*) from CONTA where IDCCUSTO='+dmCad.cdsGenericoIDGENERICA.AsString else
   if StrTabela='FPAGTO' then
      dmCad.qryAux.CommandText:= 'select count(*) from CONTA where IDFPAGTO='+dmCad.cdsGenericoIDGENERICA.AsString;
      
   dmcad.qryAux.Open;
   if dmcad.qryAux.FieldByName('COUNT').AsInteger >0 then
   begin
      MessageDlg('Atenção! Este registro já esta sendo usado, não pode ser apagado!', mtWarning, [mbOK], 0);
      abort;
   end;
end;

procedure TFcon_Generico.CaptionForm(StrNome: String);
begin
   if TABELA = 'CCUSTO' then
      Fcon_Generico.Caption := 'Cadastro de CENTRO DE CUSTO' else
   if TABELA = 'FPAGTO' then
      Fcon_Generico.Caption := 'Cadastro de FORMAS DE PAGAMENTO' else
   if TABELA = 'GRUPOS' then
      Fcon_Generico.Caption := 'Cadastro de GRUPOS' else
   if TABELA = 'SUBGRUPO' then
      Fcon_Generico.Caption := 'Cadastro de SUBGRUPOS' else
   if TABELA = 'FPAGTO' then
      Fcon_Generico.Caption := 'Cadastro de FORMAS DE PAGAMENTO' else
end;

procedure TFcon_Generico.grConsultaDBTableView1CustomDrawCell(
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

procedure TFcon_Generico.AbreCom(StrAbre: String);
begin
   if StrAbre = 'CON' then
   begin
      pnTop.Visible        := false;
      pnBottom.Visible     := true;
      pnConsulta.Visible   := false;
   end
   else
   if (StrAbre = 'CAD') then
   begin
      pnBottom.Visible     := false;
      pnConsulta.Visible   := true;
      if (FormAtivo = NIL) then
         pnTop.Visible        := true;   
   end;
end;

procedure TFcon_Generico.cxSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFcon_Generico.cxVoltarClick(Sender: TObject);
begin
   if cxVoltar.Caption = '&Fechar' then
      Close else
      AbreCom('CON');
end;

procedure TFcon_Generico.cxCadClick(Sender: TObject);
begin
   AbreCom('CAD');
end;

end.
