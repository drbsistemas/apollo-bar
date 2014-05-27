unit uCad_Cliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, StdCtrls, cxButtons, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, dxRibbon, cxClasses,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLabel, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxGridDBBandedTableView, cxGridCardView, cxGridDBCardView,
  cxGridChartView, cxGridBandedTableView, ComCtrls, ShlObj, cxShellCommon,
  cxShellComboBox, cxButtonEdit, cxCalendar, cxCheckBox, cxGroupBox, UCBase;

type
  TFcad_Cliente = class(TForm)
    pnCad: TcxGroupBox;
    pnCon: TcxGroupBox;
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
    UCControls1: TUCControls;
    eRazao: TcxTextEdit;
    eCodigo: TcxTextEdit;
    eEndereco: TcxTextEdit;
    eBairro: TcxTextEdit;
    eCidade: TcxButtonEdit;
    cxLabel10: TcxLabel;
    cxNome: TcxLabel;
    cxApelido: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel13: TcxLabel;
    eUf: TcxTextEdit;
    cxLabel14: TcxLabel;
    eCep: TcxMaskEdit;
    cxLabel16: TcxLabel;
    eFone: TcxMaskEdit;
    cxLabel18: TcxLabel;
    eMail: TcxTextEdit;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cbtpclie: TcxComboBox;
    cxLabel28: TcxLabel;
    cbDtNascimento: TcxDateEdit;
    cxLabel20: TcxLabel;
    eCpf: TcxMaskEdit;
    eRg: TcxMaskEdit;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    eCelular: TcxMaskEdit;
    eObs: TcxTextEdit;
    cxLabel23: TcxLabel;
    eAtivo: TcxCheckBox;
    cxLabel29: TcxLabel;
    cbPessoa: TcxComboBox;
    eDtCad: TcxDateEdit;
    eFantasia: TcxTextEdit;
    cxMenuCad: TcxGroupBox;
    cxSalvar: TcxButton;
    cxDesistir: TcxButton;
    cxJuridica: TcxGroupBox;
    eCnpj: TcxMaskEdit;
    eIe: TcxMaskEdit;
    cxLabel6: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel4: TcxLabel;
    eNum: TcxMaskEdit;
    eIbge: TcxMaskEdit;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    eConsulta: TcxTextEdit;
    cxLabel3: TcxLabel;
    cbAtivo: TcxComboBox;
    btnCon: TcxButton;
    cxNovo: TcxButton;
    cxEditar: TcxButton;
    cxVisualiza: TcxButton;
    cxApaga: TcxButton;
    cxPrint: TcxButton;
    cxSair: TcxButton;
    cxQtdeReg: TcxLabel;
    cxMov: TcxButton;
    cbOrdem: TcxComboBox;
    ///// Privado
    procedure Consulta;
    procedure Limpar;
    procedure MudaPainel(intMuda: integer);
    procedure Editar;
    procedure Validacoes;
    /////
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbDtNascimentoExit(Sender: TObject);
    procedure cxNovoClick(Sender: TObject);
    procedure cxSairClick(Sender: TObject);
    procedure cbOrdemPropertiesChange(Sender: TObject);
    procedure eConsultaPropertiesChange(Sender: TObject);
    procedure btnConClick(Sender: TObject);
    procedure cxPrintClick(Sender: TObject);
    procedure cxApagaClick(Sender: TObject);
    procedure cxVisualizaClick(Sender: TObject);
    procedure cxEditarClick(Sender: TObject);
    procedure cxDesistirClick(Sender: TObject);
    procedure cbPessoaPropertiesChange(Sender: TObject);
    procedure cxSalvarClick(Sender: TObject);
    procedure eUfExit(Sender: TObject);
    procedure grConsultaDBTableView1DblClick(Sender: TObject);
    procedure eCidadeExit(Sender: TObject);
    procedure cxMovClick(Sender: TObject);
    procedure eCidadePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure grConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure eCpfExit(Sender: TObject);
    procedure eCnpjExit(Sender: TObject);
  private
   indice: String;
   intInc: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcad_Cliente: TFcad_Cliente;

implementation

uses Rotinas, udmCad, uCad_Empresa, uPrinc, uCon_Cidade;

{$R *.dfm}

procedure TFcad_Cliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if pncad.Visible = true then
   begin
      Msg('O registro esta em modo de cadastro, não pode ser fechado!', 'I');
      abort;
   end;
   PFundo(1);
   FormAtivo      := Nil;
   Fcad_Cliente   := nil;
   Action         := CaFree;
end;

procedure TFcad_Cliente.dxBarLargeButton7Click(Sender: TObject);
begin
   Close;
end;

procedure TFcad_Cliente.Consulta;
begin
   if dmCad.cdsClie.Indexname <>'' then
      dmCad.CdsClie.IndexName := '';
   dmCad.cdsClie.Active:=false;
   dmCad.cdsClie.CommandText:='select * from clientes where IDCLIE>0 ';
   if cbAtivo.Itemindex=1 then
      dmCad.cdsClie.CommandText := dmCad.CdsClie.CommandText + ' and ATIVO='+IntToStr(1) else
   if cbAtivo.Itemindex=2 then
      dmCad.cdsClie.CommandText := dmCad.CdsClie.CommandText + ' and ATIVO='+IntToStr(0);

   dmcad.cdsClie.Commandtext := dmcad.CdsClie.CommandText + ' and '+indice+' like '+ QuotedStr('%'+eConsulta.Text+'%');
   dmcad.cdsClie.Commandtext := dmcad.cdsCLie.CommandText + ' order by '+indice+ ' DESC';
   dmCad.CdsClie.Open;
   cxQtdeREg.Caption := 'Registros: '+ intToStr(dmCad.cdsClie.RecordCount);
end;

procedure TFcad_Cliente.FormShow(Sender: TObject);
begin
   CarregaLyoutForm(Fcad_Cliente);
   FormAtivo     := Fcad_Cliente;
   MudaPainel(0); // Consulta
   indice        := 'RAZAO';
   cbOrdem.ItemIndex:=1;
   cbOrdemPropertiesChange(sender);
end;

procedure TFcad_Cliente.Limpar;
var j: integer;
begin
   intInc:=1; // Incluir
   with Fcad_Cliente do
   begin
      for j := 0 to ComponentCount - 1 do
      begin
         if (Components[j] is TcxTextEdit) then
         (Components[j] as TcxTextEdit).text := '';
         if (Components[j] is TcxDateEdit) then
         (Components[j] as TcxDateEdit).Clear;
         if (Components[j] is TcxButtonEdit) then
         (Components[j] as TcxButtonEdit).TExt := '';
         if (Components[j] is TcxMaskEdit) then
         (Components[j] as TcxMaskEdit).TExt := '';
         //if (Components[j] is TcxCurrencyEdit) then
         //(Components[j] as TcxCurrencyEdit).Value := 0;
         //if (Components[j] is TcxMemo) then
         //(Components[j] as TcxMemo).Lines.Text := '';
         if (Components[j] is TcxCheckBox) then
         (Components[j] as TcxCheckBox).Checked := False;
         if (Components[j] is TcxComboBox) then
         (Components[j] as TcxComboBox).ItemIndex :=0;
      end;
   end;
   //edImage.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'\immagini\Foto.png');
end;

procedure TFcad_Cliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then Close;
   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TFcad_Cliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Key = VK_F3) and (pnCon.Visible = true) then
      btnConClick(self);
   if (key = Vk_F2) then
   begin
      if cbOrdem.Itemindex=  4 then
         cbORdem.Itemindex:= 0 else
         cbOrdem.Itemindex:= cbOrdem.ItemIndex +1;
      cbOrdemPropertiesChange(self);
   end;
   if (key = VK_DOWN) and (not grConsulta.Focused = true) then
      dmcad.cdsClie.Next else
   if (key = VK_Up) and (not grConsulta.Focused = true) then
      dmCad.cdsCLie.Prior;
   if (Key = VK_DOWN) or (Key = VK_UP) then
      cxQtdeREg.Caption := 'Registros: '+ intToStr(dmCad.cdsClie.RecordCount);
end;

procedure TFcad_Cliente.cbDtNascimentoExit(Sender: TObject);
begin
   if cbDtNascimento.Text <>'' then
      if (not DataValida(cbDtNascimento.Text)) or (cbDtNascimento.Date >= Date) then
      begin
         Msg('A data digitada não é válida!', 'I');
         cbDtNascimento.Clear;
      end;
end;

procedure TFcad_Cliente.cxNovoClick(Sender: TObject);
begin
   SistemaLiberado;
   MudaPainel(1); // Cadastro
   Limpar;
///// Padroniza
   cxSalvar.Tag      := 1; // Incluir
   dmcad.cdsClie.Insert;
   eCodigo.TExt      := dmcad.cdsClieIDCLIE.AsString;
   eAtivo.Checked    := true;
   eDtCad.Date       := date;
   cbtpclie.SetFocus;
end;

procedure TFcad_Cliente.cxSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFcad_Cliente.cbOrdemPropertiesChange(Sender: TObject);
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
   if pncon.Visible = true then
   econSulta.SetFocus;
end;

procedure TFcad_Cliente.eConsultaPropertiesChange(Sender: TObject);
begin
   if dmcad.cdsClie.Active=true then
   begin
      if (trim(eConsulta.Text)='') then
      begin
         dmcad.cdsClie.First;
         Consulta;
      end;
      try
         dmcad.cdsClie.Locate(indice,eConsulta.Text,[loPartialKey]);
      except
      end;
   end;
end;

procedure TFcad_Cliente.btnConClick(Sender: TObject);
begin
   COnsulta;
   eCOnsulta.SetFOcus;
end;

procedure TFcad_Cliente.MudaPainel(intMuda: integer);
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

procedure TFcad_Cliente.cxPrintClick(Sender: TObject);
var
   IDCLIE : Integer;
begin
/////
   IDCLIE := dmcad.cdsClieIDCLIE.Asinteger;
   dmCad.cdsClie.Close;
   dmCad.CdsCLie.CommandText := 'select * from CLIENTES where IDCLIE='+IntTOStr(IDCLIE);
   dmCad.CdsClie.Open;
///// Impresso
   Imprime(dmCad.dsClie, NIL, 
            'SIM',
            'Ficha de Cliente',
            dmCad.cdsConfPASTASERVIDOR.ASString + '\rapporti\Impressos\ppFichaCliente.rtm',
            'SIM',dmcad.cdsClieEMAIL.ASString,
            1);
   Consulta;
end;

procedure TFcad_Cliente.cxApagaClick(Sender: TObject);
begin
   SistemaLiberado;
   if (dmCad.cdsClie.Active = false) or (dmCad.cdsClie.RecordCount<1) then
   begin
      Msg('Não há registros identificados, verifique!', 'I');
      abort;
   end;
   if Msg('Tem certeza que deseja apagar este registro?', 'P') then
      abort;
   try
      dmCad.cdsClie.Delete;
      dmCad.cdsClie.ApplyUpdates(0);
   except
      dmCad.cdsClie.CancelUpdates;
      Msg('Não foi possível apagar este registro, tente novamente!', 'I');
   end;
end;

procedure TFcad_Cliente.cxVisualizaClick(Sender: TObject);
begin
   cxSalvar.Enabled := false;
   cxEditarClick(Self);
end;

procedure TFcad_Cliente.cxEditarClick(Sender: TObject);
begin
   SistemaLiberado;
   if (dmCad.cdsCLie.Active = false) or (dmcad.CdsClie.RecordCount<1) then
   begin
      Msg('Não há registros identificados, verifique!', 'I');
      abort;
   end;
   MudaPainel(1); // Cadastro
   Editar;
   cxSalvar.tag := 0; // Editar
   cbTpClie.SetFocus;
end;

procedure TFcad_Cliente.cxDesistirClick(Sender: TObject);
begin
   if not Msg('Deseja realmente desistir?', 'P') then
      abort;
   if cxSalvar.Tag=1 then
      dmcad.cdsClie.CancelUpdates;
    MudaPainel(0); // COnsulta;
    Consulta;
    eCOnsulta.SetFocus;
end;

procedure TFcad_Cliente.cbPessoaPropertiesChange(Sender: TObject);
begin
    if cbPessoa.ItemIndex = 0 then // Fisica
    begin
      cxNome.Caption    := 'Nome:';
      cxApelido.Caption := 'Apelido:';
      cxJuridica.Visible:= false;
    end;
    if cbPessoa.ItemIndex = 1 then // Juridica
    begin
      cxNome.Caption    := 'Razão:';
      cxApelido.Caption := 'Fantasia:';
      cxJuridica.Visible:= true;      
    end;
end;

procedure TFcad_Cliente.Editar;
begin
   eDtCad.Date             := dmcad.cdsClieDATACAD.AsDateTIme;
   eRazao.Text             := dmCad.cdsClieRAZAO.ASString;
   eFantasia.Text          := dmcad.cdsClieFANTASIA.ASString;
   eEndereco.TExt          := dmcad.cdsClieENDERECO.ASString;
   cbDtNascimento.Date     := dmcad.cdsClieDATANASCE.ASDateTime;
   if dmCad.cdsClieTIPOCLIE.AsString = 'CLIENTE' then
      cbtpclie.ItemIndex := 0 else
   if dmcad.cdsClieTIPOCLIE.ASString = 'FORNECEDOR' then
      cbtpclie.ItemIndex := 1;
   if dmCad.cdsCliePESSOA.AsString = 'F' then
      cbPEssoa.Itemindex := 0 else
   if dmCad.cdsCliePESSOA.AsString = 'J' then
      cbPessoa.Itemindex := 1;
   cbPessoaPropertiesChange(self);
   eCelular.Text           := dmcad.cdsClieCELULAR.ASString;
   eFone.TExt              := dmcad.cdsClieFONE.ASString;
   eCnpj.TExt              := dmcad.cdsClieCNPJ.ASString;
   eIe.TExt                := dmcad.cdsClieIE.AsString;
   eRg.Text                := dmcad.cdsClieRG.AsString;
   eCpf.TExt               := dmcad.cdsClieCPF.AsString;
   eCidade.Text            := dmcad.cdsClieCIDADE.AsString;
   eBairro.Text            := dmcad.cdsClieBAIRRO.AsString;
   eUf.TEXT                := dmcad.cdsClieUF.AsString;
   eObs.Text               := dmcad.cdsClieOBS.AsString;
   eNum.Text               := dmcad.cdsClieNUM.AsString;
   eMail.Text              := dmcad.cdsClieEMAIL.AsString;
   eCep.Text               := dmcad.cdsClieCEP.ASString;
   if dmcad.cdsClieATIVO.AsInteger = 1 then
      eAtivo.Checked := true else
      eAtivo.Checked := false;
end;

procedure TFcad_Cliente.cxSalvarClick(Sender: TObject);
begin
///// Validações
   ValidaCampoTag(Fcad_Cliente);

   if cxSalvar.Tag=0 then
      dmCad.cdsClie.Edit;
///// Posta as informações
      dmcad.cdsClieDATACAD.AsDateTIme  := eDtCad.Date + Time;
      dmcad.cdsClieDATANASCE.AsDateTIme := cbDtNascimento.Date;
      dmCad.cdsClieRAZAO.ASString      := eRazao.Text;
      dmCad.cdsClieFANTASIA.AsString   := eFantasia.Text;
      dmcad.cdsClieTIPOCLIE.AsString   := cbtpclie.Text;
      dmcad.cdsCliePESSOA.AsString     := copy(cbPessoa.Text,1,1);
      dmcad.cdsClieCELULAR.ASString    := eCelular.Text;
      dmcad.cdsClieFONE.ASString       := eFone.TExt;
      dmcad.cdsClieCNPJ.ASString       := eCnpj.TExt;
      dmcad.cdsClieIE.AsString         := eIe.TExt;
      dmcad.cdsClieRG.AsString         := eRg.Text;
      dmcad.cdsClieCPF.AsString        := eCpf.TExt;
      dmcad.cdsClieENDERECO.ASString   := eEndereco.Text;
      dmcad.cdsClieCIDADE.AsString     := eCidade.Text;
      dmcad.cdsClieBAIRRO.AsString     := eBairro.Text;
      dmcad.cdsClieUF.AsString         := eUf.TEXT;
      dmcad.cdsClieOBS.AsString        := eObs.Text;
      dmcad.cdsClieNUM.AsString        := eNum.Text;
      dmcad.cdsClieEMAIL.AsString      := eMail.Text;
      dmcad.cdsClieCEP.ASString        := eCep.Text;
      if eATivo.Checked = true then
         dmcad.cdsClieATIVO.AsInteger  := 1 else
         dmcad.cdsclieAtivo.AsInteger  := 0;
   try
      dmcad.cdsCLie.Post;
      dmcad.cdsCLie.ApplyUpdates(0);
      Consulta;
      MudaPainel(0); // Consulta;
      eConsulta.SetFOcus;      
   except
      dmcad.cdsClie.CancelUpdates;
   end;
end;

procedure TFcad_Cliente.eUfExit(Sender: TObject);
begin
   if eUf.Text<>'' then
   if (not VALIDAUF(eUf.text)) then
   begin
      Msg('UF Não Aceito','I');
      eUf.SetFocus;
   end;
end;

procedure TFcad_Cliente.grConsultaDBTableView1DblClick(Sender: TObject);
begin
   cxEditarClick(self);
end;

procedure TFcad_Cliente.eCidadeExit(Sender: TObject);
begin
   If (eCidade.Text = '0') or (eCidade.Text = '') then
   begin
      eCidade.Clear;
      Exit;
   end;
   eIBGE.Text := BuscaNomeStr('MUNICIPIOIBGE', eCidade.Text);
   If eIBGE.Text = 'ERRO' then
   begin
      Msg('Cidade inválida, verifique!', 'I');
      eIBGE.CLear;
      Abort;
   end;
end;

procedure TFcad_Cliente.cxMovClick(Sender: TObject);
begin
   Msg('Em Desenvolvimento!', 'I');
end;

procedure TFcad_Cliente.Validacoes;
begin
   //
end;

procedure TFcad_Cliente.eCidadePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if (eUf.Text='') then
   begin
      Msg('Selecione uma UF válida!', 'I');
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

procedure TFcad_Cliente.grConsultaDBTableView1CustomDrawCell(
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

procedure TFcad_Cliente.eCpfExit(Sender: TObject);
begin
   if eCpf.Text<>'' then
   if (not VALIDACPF(eCPF.text)) then
   begin
      Msg('CPF Não Aceito','I');
      eCpf.SetFocus;
   end;
end;

procedure TFcad_Cliente.eCnpjExit(Sender: TObject);
begin
   if eCNPJ.Text<>'' then
   if (not VALIDACNPJ(eCNPJ.text)) then
   begin
      Msg('CNPJ Não Aceito','I');
      eCNPJ.SetFocus;
   end;
end;

end.
