unit uCad_Pedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, Menus, StdCtrls, cxButtons, cxMaskEdit,
  cxDropDownEdit, cxTextEdit, cxLabel, ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxGroupBox, dxSkinsCore,
  dxSkinOffice2007Silver, dxSkinscxPCPainter, Grids, DBGrids,
  cxCurrencyEdit, cxButtonEdit, dxGDIPlusClasses, cxImage;

type
  TFcad_Pedido = class(TForm)
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxSairClick(Sender: TObject);
    procedure MudaPainel(intMuda: Integer);
  private
      indice: String;
      intInc: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcad_Pedido: TFcad_Pedido;

implementation

uses Rotinas;

{$R *.dfm}

procedure TFcad_Pedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//   if pncad.Visible = true then
//   begin
//      Msg('O registro esta em modo de cadastro, não pode ser fechado!', 'I');
//      abort;
//   end;
   PFundo(1);
   FormAtivo      := Nil;
   Fcad_Pedido    := nil;
   Action         := CaFree;
end;

procedure TFcad_Pedido.FormShow(Sender: TObject);
begin
   CarregaLyoutForm(Fcad_Pedido);
   FormAtivo     := Fcad_Pedido;
   MudaPainel(0); // Consulta
   indice        := 'RAZAO';
//   cbOrdem.ItemIndex:=1;
//   cbOrdemPropertiesChange(sender);
end;

procedure TFcad_Pedido.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then Close;
   if Key = #13 then
   begin
     Key := #0;
     Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TFcad_Pedido.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{   if (Key = VK_F3) and (pnCon.Visible = true) then
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
      cxQtdeREg.Caption := 'Registros: '+ intToStr(dmCad.cdsClie.RecordCount);}
end;

procedure TFcad_Pedido.cxSairClick(Sender: TObject);
begin
   Close;
end;

procedure TFcad_Pedido.MudaPainel(intMuda: Integer);
begin
   if intMuda=0 then // COnsulta
   begin
      pnCon.Visible     := true;
//      pnCad.Visible     := false;
//      cxSalvar.Enabled  := true;
//      cxSalvar.Tag      := 0;
   end else
   if intMuda = 1 then // cadastro
   begin
      pnCon.Visible     := false;
//      pnCad.Visible     := true;
   end;
end;

end.
