unit uRel_Padrao;

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
  dxSkinXmas2008Blue, Menus, StdCtrls, cxButtons, cxGroupBox, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, cxButtonEdit, cxCheckBox,
  dxGDIPlusClasses, cxImage;

type
  TFRel_Padrao = class(TForm)
    pnImg: TcxImage;
    pnFundo: TcxGroupBox;
    cxOrdem: TcxGroupBox;
    cbOrdem: TcxComboBox;
    cxLabel4: TcxLabel;
    cbCores: TcxCheckBox;
    cxProd: TcxGroupBox;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    eCodFornec: TcxButtonEdit;
    eFornec: TcxTextEdit;
    eGrupo: TcxTextEdit;
    eCodGrupo: TcxButtonEdit;
    eSubGrupo: TcxTextEdit;
    eCodSub: TcxButtonEdit;
    cxLabel11: TcxLabel;
    cxData: TcxGroupBox;
    cxLabel5: TcxLabel;
    eDataIni: TcxDateEdit;
    cxLabel1: TcxLabel;
    eDataFim: TcxDateEdit;
    pnBtn: TcxGroupBox;
    cxPrint: TcxButton;
    cxSair: TcxButton;
    eCodProd: TcxButtonEdit;
    eProduto: TcxTextEdit;
    cxLabel2: TcxLabel;
    cbAtivo: TcxComboBox;
    cxLabel3: TcxLabel;
    ecodProduto: TcxTextEdit;
    cxOpcao: TcxGroupBox;
    cbOpcao: TcxComboBox;
    clOpcao: TcxLabel;
    cbOpcao2: TcxComboBox;
    clOpcao2: TcxLabel;
    cxOpcao2: TcxGroupBox;
    cxClie: TcxGroupBox;
    clClie: TcxLabel;
    eCodClie: TcxButtonEdit;
    eCliente: TcxTextEdit;
    cxAgrupa: TcxGroupBox;
    cbAgrupa: TcxComboBox;
    cxLabel7: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxSairClick(Sender: TObject);
    procedure cxPrintClick(Sender: TObject);
    procedure eCodProdExit(Sender: TObject);
    procedure eCodProdKeyPress(Sender: TObject; var Key: Char);
    procedure eCodProdPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodFornecPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodGrupoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodSubPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodFornecExit(Sender: TObject);
    procedure eCodGrupoExit(Sender: TObject);
    procedure eCodSubExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eCodCliePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eCodClieExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    intCodRel: Integer;
  end;

var
  FRel_Padrao: TFRel_Padrao;

implementation

uses uCon_Prod, udmCad, uCon_Relatorio, Rotinas, uCon_Generico, uCon_Clie;

{$R *.dfm}

procedure TFRel_Padrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := CaFree;
end;

procedure TFRel_Padrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TFRel_Padrao.cxSairClick(Sender: TObject);
begin
   cxPrint.Tag:=0;
   close;
end;

procedure TFRel_Padrao.cxPrintClick(Sender: TObject);
begin
   if cxData.Visible = true then
   begin
      try
         StrToDate(eDataini.Text);
         StrToDate(eDataFim.Text);
      except
         MessageDlg('Atenção! Data Inicial/Final não é válida, verifique!', mtError, [mbOK], 0);
         abort;
      end;
      if eDataFim.DAte < eDataini.Date then
      begin
         MessageDlg('Atenção! <Data Inicial> deve ser maior que <Data Final>, verifique!', mtError, [mbOK], 0);
         abort;
      end;
   end;
///// Informa relatorio do FormRElatorios
   FiltraRel(intCodRel);
end;

procedure TFRel_Padrao.eCodProdExit(Sender: TObject);
begin
   if (ecodProd.TExt='0') or (ecodProd.TExt='') then
   begin
      eProduto.Text     := 'TODOS';
      eCodProduto.Text  := '0';
      eCodProd.Text     := '0';
      exit;
   end;
///// Busca Produto
   eCodProduto.TExt  := BuscaProduto(ecodpRod.Text);
///// Se não achou ou foi mais de um busca tela
   if  eCodProduto.TExt = '0' then
   begin
      Fcon_Prod := TFcon_Prod.Create(Self);
      Fcon_Prod.eConsulta.TExt := eCodProd.TExt;
      Fcon_Prod.ShowModal;
      ///// Se saiu da tela e ainda não achou nenhum avisa
      if Fcon_Prod.CODIGO <> '' then
      begin
         eCodProduto.TExt := Fcon_Prod.CODIGO;
         ecodProd.TExt    := Fcon_Prod.CODIGO;
      end
      else
      begin
         MessageDlg('Produto não encontrado, tente novamente!', mtWarning, [mbOK], 0);
         abort;
      end;
   end;
///// Se achou traz os dados do prduto
   if eCodProduto.TExt <> '0' then
   begin
      dmcad.qryAux.Close;
      dmcad.qryAux.CommandText := 'SELECT IDPROD, REFPROD, PRODUTO, MARCAPROD, ESTOQUEDISP, ESTOQUETOTAL, UNPROD, FOTOPROD, PRECOVENDA, PRECOMINIMO, CODBAR, CUSTO FROM PRODUTO WHERE IDPROD='+QuotedStr(eCodProduto.TExt)+' AND ATIVOPROD <> '+QuotedStr('N');
      dmcad.qryAux.Open;

      eCodProduto.TExt  := dmcad.qryAux.Fieldbyname('IDPROD').asString;
      eProduto.TExt     := dmCad.qryAux.Fieldbyname('PRODUTO').asString;
   end;
end;

procedure TFRel_Padrao.eCodProdKeyPress(Sender: TObject; var Key: Char);
begin
  If not (key in ['0'..'9',#8]) then key := #0;
end;

procedure TFRel_Padrao.eCodProdPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   Fcon_Prod := TFcon_Prod.Create(self);
   Fcon_Prod.ShowModal;
   if Fcon_Prod.CODIGO <> '' then
   begin
      eCOdPRod.TExt := Fcon_Prod.CODIGO;
      eProduto.TExt := Fcon_Prod.NOME;
   end;
   FCOn_Prod.Free;
end;

procedure TFRel_Padrao.eCodFornecPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   Fcon_Cliente := TFcon_Cliente.Create(self);
   Fcon_Cliente.ShowMOdal;
   if CODIGO <> 0 then
   begin
      eCodFornec.TExt := intToStr(CODIGO);
      eFornec.TExt    := NOME;
   end;
   FCon_Cliente.Free;
end;

procedure TFRel_Padrao.eCodGrupoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   Fcon_Generico := TFcon_Generico.Create(self);
   Fcon_Generico.TABELA :='GRUPOS';
   Fcon_Generico.ShowModal;
   if CODIGO<>0 then
   begin
      eCodGrupo.Text := intTOStr(CODIGO);
      eGRupo.Text    := NOME;
   end;
   FCon_Generico.Free;
end;

procedure TFRel_Padrao.eCodSubPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   Fcon_Generico := TFcon_Generico.Create(self);
   Fcon_Generico.TABELA :='SUBGRUPO';
   Fcon_Generico.ShowModal;
   if CODIGO<>0 then
   begin
      eCodSub.Text   := intTOStr(CODIGO);
      eSubGrupo.Text := NOME;
   end;
   FCon_Generico.Free;
end;

procedure TFRel_Padrao.eCodFornecExit(Sender: TObject);
begin
   if (eCodFornec.text = '') or (eCodFornec.Text = '0') then
   begin
      eCodFornec.text := '0';
      eFornec.Text    := 'TODOS';
      exit;
   end;
   eFornec.text        := BuscaNomeAtivo('CLIENTES',StrToint(eCodFornec.text));
   if eFornec.text = 'ERRO' then
   begin
      eCodFornec.text := '0';
      eFornec.Text    := 'TODOS';
      exit;
   end;
end;

procedure TFRel_Padrao.eCodGrupoExit(Sender: TObject);
begin
   if (eCodGrupo.text = '') or (eCodGrupo.Text = '0') then
   begin
      eCodGrupo.text := '0';
      eGrupo.Text    := 'TODOS';
      exit;
   end;
   eGrupo.text          := BuscaNomeGen('GRUPOS',StrToint(eCodGrupo.text));
   if eGrupo.text = 'ERRO' then
   begin
      eCodGrupo.text := '0';
      eGrupo.Text    := 'TODOS';
      exit;
   end;
end;

procedure TFRel_Padrao.eCodSubExit(Sender: TObject);
begin
   if (eCodSub.text = '') or (eCodSub.Text = '0') then
   begin
      eCodSub.text := '0';
      eSubGrupo.Text    := 'TODOS';
      exit;
   end;
   eSubGrupo.text          := BuscaNomeGen('SUBGRUPO',StrToint(eCodSub.text));
   if eSubGrupo.text = 'ERRO' then
   begin
      eCodSub.text := '0';
      eSubGrupo.Text    := 'TODOS';
      exit;
   end;
end;

procedure TFRel_Padrao.FormShow(Sender: TObject);
var
   j, intTam: integer;
begin
   try
      pnImg.Picture.LoadFromFile(dmCad.cdsConfPASTASERVIDOR.ASString +'\immagini\Rel.png');
   except
      pnImg.Visible := false;
   end;
   intTam := 0;
   with FRel_Padrao do
   begin
      for j := 0 to ComponentCount - 1 do
      begin
         if (Components[j] is TcxGroupBox) then
            if ((Components[j] as TcxGroupBox).Visible = true) then
               intTam := intTam + (Components[j] as TcxGroupBox).Height;
      end;
   end;
   if ((pnBtn.Height + (intTam)) - (pnFundo.Height+pnBtn.Height)) < 220 then // Tamanho minimo
      Frel_Padrao.ClientHeight := 220 else
   if ((pnBtn.Height + (intTam)) - (pnFundo.Height+pnBtn.Height)) > 500 then // Tamanho Máximo
      Frel_Padrao.ClientHeight := 500 else
      Frel_Padrao.ClientHeight := (pnBtn.Height + (intTam)) - (pnFundo.Height+pnBtn.Height); // Tamanho Calculado

///// Dados Padrões
   eDataIni.Date := Date;
   eDataFim.Date := Date;
end;

procedure TFRel_Padrao.eCodCliePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   Fcon_Cliente := TFcon_Cliente.Create(self);
   Fcon_Cliente.ShowMOdal;
   if CODIGO <> 0 then
   begin
      eCodClie.TExt     := IntToStr(CODIGO);
      eCliente.TExt     := NOME;
   end;
   FCon_Cliente.Free;
end;

procedure TFRel_Padrao.eCodClieExit(Sender: TObject);
begin
   if (eCodClie.text = '') or (eCodClie.Text = '0') then
   begin
      eCodClie.text := '0';
      eCliente.Text    := 'TODOS';
      exit;
   end;
   eCliente.text        := BuscaNomeAtivo('CLIENTES',StrToint(eCodClie.text));
   if eCliente.text = 'ERRO' then
   begin
      eCodClie.text := '0';
      eCliente.Text    := 'TODOS';
      exit;
   end;
end;

procedure TFRel_Padrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = vK_F6 then
      cxPrintClick(self);
   if (key = Vk_F10) or (key = vk_Escape) then
      cxSairClick(self);
end;

end.
