unit uCad_Vendedor;

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
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxCheckBox, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLabel, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, cxGroupBox, cxCalendar, cxCurrencyEdit, cxButtonEdit;

type
  TFcad_Vendedor = class(TForm)
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
    grConsultaDBTableView1Column1: TcxGridDBColumn;
    grConsultaDBTableView1Column2: TcxGridDBColumn;
    grConsultaLevel1: TcxGridLevel;
    pnBottom: TcxGroupBox;
    cxSair: TcxButton;
    cxCad: TcxButton;
    cxConsulta: TcxGroupBox;
    cxLabel1: TcxLabel;
    cbOrdem: TcxComboBox;
    cxLabel2: TcxLabel;
    eConsulta: TcxTextEdit;
    btnCon: TcxButton;
    pnCad: TcxGroupBox;
    cxLabel3: TcxLabel;
    eCodigo: TcxTextEdit;
    cxLabel4: TcxLabel;
    eNome: TcxTextEdit;
    cxMenuCad: TcxGroupBox;
    cxSalvar: TcxButton;
    cxDesistir: TcxButton;
    eAtivo: TcxCheckBox;
    cxLabel8: TcxLabel;
    eMail: TcxTextEdit;
    cxLabel9: TcxLabel;
    eDtCad: TcxDateEdit;
    cxLabel10: TcxLabel;
    eComissao: TcxCurrencyEdit;
    cxLabel7: TcxLabel;
    eCpf: TcxMaskEdit;
    eRg: TcxMaskEdit;
    cxLabel11: TcxLabel;
    eEndereco: TcxTextEdit;
    eBairro: TcxTextEdit;
    eCidade: TcxButtonEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    eUf: TcxTextEdit;
    cxLabel14: TcxLabel;
    eCep: TcxMaskEdit;
    cxLabel15: TcxLabel;
    eNum: TcxMaskEdit;
    cxLabel16: TcxLabel;
    eFone: TcxMaskEdit;
    cxLabel17: TcxLabel;
    eCelular: TcxMaskEdit;
    eIbge: TcxMaskEdit;
    grConsultaDBTableView1Column3: TcxGridDBColumn;
    ///// Privado
    procedure Consulta;
    procedure MudaPainel(intMuda: integer);
    procedure Edita;
    procedure AbreCom(StrAbre: String);
    procedure ValidacaoApagar;
    procedure Limpar;  
    /////
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxSalvarClick(Sender: TObject);
    procedure eUfExit(Sender: TObject);
    procedure eCidadePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCidadeExit(Sender: TObject);
    procedure cxDesistirClick(Sender: TObject);
    procedure eCpfExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxCadClick(Sender: TObject);
    procedure cxVoltarClick(Sender: TObject);
    procedure cxSairClick(Sender: TObject);
    procedure cxApagaClick(Sender: TObject);
    procedure cxVisualizaClick(Sender: TObject);
    procedure cxEditarClick(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure btnConClick(Sender: TObject);
    procedure eConsultaPropertiesChange(Sender: TObject);
    procedure cbOrdemClick(Sender: TObject);
    procedure grConsultaDBTableView1DblClick(Sender: TObject);
    procedure grConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    indice: String;
  public
    { Public declarations }
  end;

var
  Fcad_Vendedor: TFcad_Vendedor;

implementation

uses udmCad, uCon_Cidade, Rotinas;

{$R *.dfm}

procedure TFcad_Vendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := CaFree;
end;

procedure TFcad_Vendedor.cxSalvarClick(Sender: TObject);
begin
///// Validações;
   if trim(eNome.Text)='' then
   begin
      MessageDlg('Preencha o campo NOME!', mtInformation, [mbOK], 0);
      eNome.SetFocus;
      Abort;
   end;
   if trim(eUf.Text)='' then
   begin
      MessageDlg('Preencha o campo UF!', mtInformation, [mbOK], 0);
      eUf.SetFOcus;
      abort;
   end;
   if trim(ecidade.text)='' then
   begin
      MessageDlg('Preencha o campo CIDADE!', mtInformation, [mbOK], 0);
      eCidade.SetFOcus;
      abort;
   end;
   
///// Incluir/ Edita;
   if cxSAlvar.Tag = 1 then
      dmCad.cdsVEnd.Insert else
      dmcad.cdsVEnd.Edit;
///// Insere dados
   if eAtivo.Checked = true then
      dmcad.cdsVendATIVO.AsString := 'SIM' else
      dmcad.cdsVendATIVO.AsString := 'NÃO';
   dmcad.cdsVendDTCADASTRO.AsDateTime  := eDtCad.Date + Time;
   dmCad.cdsVendNOMEVENDEDOR.AsString  := eNome.TExt;
   dmcad.cdsVendFONE.AsString          := eFone.TExt;
   dmcad.cdsVendCELULAR.AsString       := eCelular.Text;
   dmcad.cdsVendCPF.AsString           := eCpf.Text;
   dmcad.cdsVendRG.AsString            := eRg.Text;
   dmcad.cdsVendENDERECO.AsString      := eEndereco.text;
   dmcad.cdsVendNUMERO.AsString        := eNum.Text;
   dmcad.cdsVendBAIRRO.AsString        := eBairro.Text;
   dmcad.cdsVendCIDADE.AsString        := eCidade.Text;
   dmcad.cdsVendCEP.AsString           := eCep.Text;
   dmcad.cdsVendUF.AsString            := eUf.Text;
   dmcad.cdsVendEMAIL.AsString         := eMail.Text;
   dmcad.cdsVendPERCOMISSAO.AsFloat    := eComissao.Value;
   try
      dmcad.cdsVEnd.Post;
      dmcad.cdsVend.ApplyUpdates(0);
      MudaPainel(0); // Consulta;
      consulta;
      eConsulta.SetFocus;
   except
      dmcad.cdsVend.CancelUpdates;
   end;
end;

procedure TFcad_Vendedor.eUfExit(Sender: TObject);
begin
   if eUf.Text<>'' then
   if (not VALIDAUF(eUf.text)) then
   begin
      ShowMessage('UF Não Aceito');
      eUf.SetFocus;
   end;
end;

procedure TFcad_Vendedor.eCidadePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if (eUf.Text='') then
   begin
      MessageDlg('Selecione uma UF válida!', mtWarning, [mbOK], 0);
      eUf.Text;
      abort;
   end;
   FCon_Cidade            := TFCon_Cidade.Create(Self);
   Fcon_Cidade.StrUf      := eUF.Text;
   Fcon_Cidade.ShowModal;
   If Fcon_Cidade.DESCRICAO <> '' then
   begin
      eCidade.Text        :=  Fcon_Cidade.DESCRICAO;
   end;
   Fcon_Cidade.Free;
end;

procedure TFcad_Vendedor.eCidadeExit(Sender: TObject);
begin
   If (eCidade.Text = '0') or (eCidade.Text = '') then
   begin
      eCidade.Clear;
      Exit;
   end;
   eIBGE.Text := BuscaNomeStr('MUNICIPIOIBGE', eCidade.Text);
   If eIBGE.Text = 'ERRO' then
   begin
      MessageDlg('Cidade inválida, verifique!', mtError, [mbOK], 0);
      eIBGE.CLear;
      Abort;
   end;
end;

procedure TFcad_Vendedor.cxDesistirClick(Sender: TObject);
begin
   MudaPainel(0); // Consulta;
   Consulta;
   eConsulta.SetFOcus;
end;

procedure TFcad_Vendedor.Consulta;
begin
   dmcad.cdsVend.IndexName := '';
   dmcad.cdsVend.Close;
   dmcad.cdsVEnd.CommandText:='select * from vendedor where '+indice+' like '+QuotedStr('%'+eConsulta.text+'%');
   dmcad.cdsVEnd.Open;
end;

procedure TFcad_Vendedor.MudaPainel(intMuda: integer);
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

procedure TFcad_Vendedor.Edita;
begin
///// Insere dados
   if dmcad.cdsVEndATIVO.AsString = 'SIM' then
      eAtivo.Checked := true else
      eAtivo.Checked := false;
   eCodigo.Text   := dmCad.cdsVendIDVEND.AsString;
   edtCad.Date    := dmcad.cdsVendDTCADASTRO.AsDateTime;
   eNome.TExt     := dmCad.cdsVendNOMEVENDEDOR.AsString;
   eFone.TExt     := dmcad.cdsVendFONE.AsString;
   eCelular.Text  := dmcad.cdsVendCELULAR.AsString;
   eCpf.Text      := dmcad.cdsVendCPF.AsString;
   eRg.Text       := dmcad.cdsVendRG.AsString;
   eEndereco.text := dmcad.cdsVendENDERECO.AsString;
   eNum.Text      := dmcad.cdsVendNUMERO.AsString;
   eBairro.Text   := dmcad.cdsVendBAIRRO.AsString;
   eCidade.Text   := dmcad.cdsVendCIDADE.AsString;
   eCep.Text      := dmcad.cdsVendCEP.AsString;
   eUf.Text       := dmcad.cdsVendUF.AsString;
   eMail.Text     := dmcad.cdsVendEMAIL.AsString;
   eComissao.Value:= dmcad.cdsVendPERCOMISSAO.AsFloat;
end;

procedure TFcad_Vendedor.eCpfExit(Sender: TObject);
begin
   if trim(eCpf.Text)<>'' then
   if (not VALIDACPF(eCPF.text)) then
   begin
      ShowMessage('CPF Não Aceito');
      eCpf.SetFocus;
   end;
end;

procedure TFcad_Vendedor.FormShow(Sender: TObject);
begin
   MudaPainel(0); // Cadastro
   indice := 'IDVEND';
   cbORdem.ItemIndex := 0; // Codigo;
   COnsulta;
   eCOnsulta.SetFOcus;
end;

procedure TFcad_Vendedor.AbreCom(StrAbre: String);
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

procedure TFcad_Vendedor.cxCadClick(Sender: TObject);
begin
   AbreCom('CAD');
end;

procedure TFcad_Vendedor.cxVoltarClick(Sender: TObject);
begin
   if FormAtivo<> NIL then
      AbreCom('CON') else
      Close;
end;

procedure TFcad_Vendedor.cxSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFcad_Vendedor.cxApagaClick(Sender: TObject);
begin
   SistemaLiberado;
   if (dmCad.cdsVend.Active = false) or (dmCad.cdsVend.RecordCount<1) then
   begin
      MessageDlg('Não há registros identificados, verifique!', mtInformation, [mbOK], 0);
      abort;
   end;
   if (MessageBox(0, 'Tem certeza que deseja apagar este registro?', 'Apagar?', MB_ICONINFORMATION or MB_YESNO or MB_TASKMODAL or MB_DEFBUTTON2) = idNo) then
      abort;
   ///// Validação
   ValidacaoApagar;
   try
      dmCad.cdsVend.Delete;
      dmCad.cdsVend.ApplyUpdates(0);
   except
      dmCad.cdsVend.CancelUpdates;
      MessageDlg('Não foi possível apagar este registro, tente novamente!', mtInformation, [mbOK], 0);
   end;
end;

procedure TFcad_Vendedor.ValidacaoApagar;
begin
   dmcad.qryAux.Close;
   dmcad.qryAux.CommandText := 'select IDVENDEDOR from VENDA where IDVENDEDOR='+dmcad.cdsVendIDVEND.AsString;
   dmcad.qryAux.Open;
   if dmcad.qryAux.Fieldbyname('IDVENDEDOR').asInteger>0 then
   begin
      MessageDlg('Este registro não pode ser apagado, ele já esta sendo usado em uma operação!', mtInformation, [mbOK], 0);
      abort;
   end;
end;

procedure TFcad_Vendedor.cxVisualizaClick(Sender: TObject);
begin
   cxSalvar.Enabled := false;
   cxEditarClick(Self);
end;

procedure TFcad_Vendedor.cxEditarClick(Sender: TObject);
begin
   SistemaLiberado;
   if (dmCad.cdsVend.Active = false) or (dmcad.cdsVend.RecordCount<1) then
   begin
      MessageDlg('Não há registros identificados, verifique!', mtInformation, [mbOK], 0);
      abort;
   end;
   Edita;
   MudaPainel(1); // Cadastro
   cxSalvar.Tag := 0; // Editar
   eNome.SetFocus;
end;

procedure TFcad_Vendedor.cxNovoClick(Sender: TObject);
begin
   SistemaLiberado;
   Limpar;
   cxSalvar.Tag := 1;
   MudaPainel(1); // Cadastro;
   eAtivo.Checked := true;   
   eNome.setFocus;
end;

procedure TFcad_Vendedor.Limpar;
begin
///// Insere dados
   eAtivo.Checked := true;
   edtcad.Date:= date;
   eNome.Clear;
   eFone.clear;
   eCelular.clear;
   eCpf.clear;
   eRg.clear;
   eEndereco.clear;
   eNum.clear;
   eBairro.clear;
   eCidade.clear;
   eCep.clear;
   eUf.clear;
   eMail.clear;
   eComissao.Value   := 0;
end;

procedure TFcad_Vendedor.btnConClick(Sender: TObject);
begin
   Consulta;
end;

procedure TFcad_Vendedor.eConsultaPropertiesChange(Sender: TObject);
begin
   if dmCad.cdsVend.Active=true then
   begin
      if (trim(eConsulta.Text)='') then
      begin
         dmCad.cdsVend.First;
         Consulta;
      end;
      try
         dmCad.cdsVEnd.Locate(indice,eConsulta.Text,[loPartialKey]);
      except
      end;
   end;
end;

procedure TFcad_Vendedor.cbOrdemClick(Sender: TObject);
begin
   if cbOrdem.Itemindex = 0 then
      indice := 'IDVEND' else
   if cboRdem.Itemindex = 1 then
      indice := 'NOMEVENDEDOR' else
   if cboRdem.Itemindex = 2 then
      indice := 'CIDADE';
   COnsulta;
   eConsulta.SetFOcus;
end;

procedure TFcad_Vendedor.grConsultaDBTableView1DblClick(Sender: TObject);
begin
   if pnConsulta.Visible = false then // COnsulta
   begin
      CODIGO := dmCad.cdsVendIDVEND.AsInteger;
      NOME   := dmCad.cdsVendNOMEVENDEDOR.ASString;
      Close;
   end else
      cxEditarClick(self);
end;

procedure TFcad_Vendedor.grConsultaDBTableView1CustomDrawCell(
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

procedure TFcad_Vendedor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If (key = 13) then
   begin
      CODIGO := dmCad.cdsVendIDVEND.AsInteger;
      NOME   := dmCad.cdsVendNOMEVENDEDOR.ASString;
   end;
end;

end.
