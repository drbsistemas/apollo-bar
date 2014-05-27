unit uCon_Relatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxContainer, Menus, StdCtrls,
  cxButtons, cxGroupBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  UCBase;

type
  TFcon_Relatorio = class(TForm)
    grConsulta: TcxGrid;
    grConsultaDBTableView1: TcxGridDBTableView;
    CODIGO: TcxGridDBColumn;
    DESCRICAO: TcxGridDBColumn;
    CAMINHO: TcxGridDBColumn;
    grConsultaLevel1: TcxGridLevel;
    pnBtn: TcxGroupBox;
    cxListagens: TcxButton;
    cxFaturamento: TcxButton;
    cxFinanceiro: TcxButton;
    cxEstoque: TcxButton;
    cxGerencial: TcxButton;
    cxButton5: TcxButton;
    GRUPO: TcxGridDBColumn;
    UCControls1: TUCControls;
    //// Privados
    procedure Consulta;
    procedure BuscaIndice(intIndice: integer);
    procedure RelListagem(intCodRel: Integer);
    procedure RelFinanceiro(intCodRel: Integer);
    /////
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton5Click(Sender: TObject);
    procedure cxGerencialClick(Sender: TObject);
    procedure cxListagensClick(Sender: TObject);
    procedure cxFaturamentoClick(Sender: TObject);
    procedure cxFinanceiroClick(Sender: TObject);
    procedure cxEstoqueClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grConsultaDBTableView1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxListagensDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure cxListagensDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure grConsultaDBTableView1EndDrag(Sender, Target: TObject; X,
      Y: Integer);
    procedure cxFaturamentoDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure cxFinanceiroDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure cxEstoqueDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure cxGerencialDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure grConsultaDBTableView1DblClick(Sender: TObject);
    procedure grConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
    indice, StrBotao: String;
    objSource : TObject;
  public
    { Public declarations }
  end;

var
  Fcon_Relatorio: TFcon_Relatorio;

implementation

uses Rotinas, uPrinc, udmRel, uRel_Padrao;

{$R *.dfm}

procedure TFcon_Relatorio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   PFundo(1);
   FormAtivo      := Nil;
   FCon_Relatorio := nil;
   Action         := CaFree;
end;

procedure TFcon_Relatorio.cxButton5Click(Sender: TObject);
begin
   Close;
end;

procedure TFcon_Relatorio.cxListagensClick(Sender: TObject);
begin
   BuscaIndice(1);
end;

procedure TFcon_Relatorio.cxFaturamentoClick(Sender: TObject);
begin
   BuscaIndice(2);
end;

procedure TFcon_Relatorio.cxFinanceiroClick(Sender: TObject);
begin
   BuscaIndice(3);
end;

procedure TFcon_Relatorio.cxEstoqueClick(Sender: TObject);
begin
   BuscaIndice(4);
end;

procedure TFcon_Relatorio.cxGerencialClick(Sender: TObject);
begin
   BuscaIndice(5);
end;

procedure TFcon_Relatorio.Consulta;
begin
   dmRel.cdsREl.CLose;
   dmREl.cdsREl.CommandTExt := 'select * from RELATORIO where IDRELATORIO>0 and GRUPO like '+QuotedStr(indice)+ ' order by IDRELATORIO ';
   dmRel.cdsREl.Open;
   dmRel.cdsREl.FIrst;
   grCOnsulta.SetFOcus;
end;

procedure TFcon_Relatorio.FormShow(Sender: TObject);
begin
   CarregaLyoutForm(FCon_Relatorio);   
   BuscaIndice(1);
end;

procedure TFcon_Relatorio.BuscaIndice(intIndice: integer);
begin
   case intIndice of
       1: indice := 'LISTAGENS';
       2: indice := 'FATURAMENTOS';
       3: indice := 'FINANCEIRO';
       4: indice := 'ESTOQUE';
       5: indice := 'GERENCIAL';
    end;
   Consulta;
end;

procedure TFcon_Relatorio.grConsultaDBTableView1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   if (Button = mbLeft) then
   begin
      objSource := grConsulta;
      TcxGrid(Sender).BeginDrag(False) // inicia a operacao
   end;
end;

procedure TFcon_Relatorio.cxListagensDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
   if objSource = grConsulta then
      TcxGrid(Sender).EndDrag(True); // finaliza o processo
end;

procedure TFcon_Relatorio.cxListagensDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
   if objSource = grConsulta then
   begin
      Accept := True; // aceita a ação
      StrBotao := 'LISTAGENS';
   end;
end;

procedure TFcon_Relatorio.grConsultaDBTableView1EndDrag(Sender,
  Target: TObject; X, Y: Integer);
begin
   if Target <> nil then
   begin
      dmRel.cdsRel.Edit;
      dmRel.cdsRelGRUPO.AsString := StrBOTAO;
      try
         dmRel.cdsRel.Post;
         dmRel.cdsRel.ApplyUpdates(0);
         indice := StrBotao;
         consulta;
      except
         dmRel.cdsREl.CancelUpdates;
      end;
   end;
end;

procedure TFcon_Relatorio.cxFaturamentoDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
   if objSource = grConsulta then
   begin
      Accept := True; // aceita a ação
      StrBotao := 'FATURAMENTOS';
   end;
end;

procedure TFcon_Relatorio.cxFinanceiroDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
   if objSource = grConsulta then
   begin
      Accept := True; // aceita a ação
      StrBotao := 'FINANCEIRO';
   end;
end;

procedure TFcon_Relatorio.cxEstoqueDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
   if objSource = grConsulta then
   begin
      Accept := True; // aceita a ação
      StrBotao := 'ESTOQUE';
   end;
end;

procedure TFcon_Relatorio.cxGerencialDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
   if objSource = grConsulta then
   begin
      Accept := True; // aceita a ação
      StrBotao := 'GERENCIAL';
   end;
end;

procedure TFcon_Relatorio.grConsultaDBTableView1DblClick(Sender: TObject);
begin
   if (dmRel.cdsRelIDRELATORIO.AsInteger >= 1) and (dmRel.cdsRelIDRELATORIO.AsInteger <= 100) then
      RelListagem(dmRel.cdsRelIDRELATORIO.AsInteger) else
   if (dmRel.cdsRelIDRELATORIO.AsInteger >= 201) and (dmRel.cdsRelIDRELATORIO.AsInteger <= 300) then
      RelFinanceiro(dmRel.cdsRelIDRELATORIO.AsINteger);
end;

procedure TFcon_Relatorio.RelListagem(intCodRel: Integer);
begin
   case intCodRel of
   1 :begin
      with Frel_Padrao do
         begin
            FRel_Padrao       := TFRel_Padrao.Create(Self);
         ///// Mostra cliente/Fornec
            cxClie.Visible := true;
         ///// Mostra Produtos
            cxProd.Visible    := true;
         ///// Mostra agrupamento
            cxAgrupa.Visible  := true;
            cbAgrupa.Properties.Items.Add('Não Agrupar');
            cbAgrupa.Properties.Items.Add('Grupo');
            cbAgrupa.Properties.Items.Add('SubGrupo');
            cbAgrupa.Properties.Items.Add('Fornecedor');
            cbAgrupa.Itemindex := 0;
         ///// Mostra Ordem
            cxOrdem.Visible   := true;
            cbOrdem.Properties.Items.Add('Código');
            cbOrdem.Properties.Items.Add('Referência');
            cbOrdem.Properties.Items.Add('Produto');
            cbOrdem.Properties.Items.Add('Grupo');
            cbOrdem.Properties.Items.Add('SubGrupo');
            cbOrdem.Properties.Items.Add('Fornecedor');
            cbOrdem.Itemindex := 0;
            Frel_Padrao.intCodRel := 1; // Balanço
         ///// Mostra
            ShowModal;
         end;
      end;
   end;
end;

procedure TFcon_Relatorio.grConsultaDBTableView1CustomDrawCell(
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

procedure TFcon_Relatorio.RelFinanceiro(intCodRel: Integer);
begin
   case intCodRel of
   201:begin
            with Frel_Padrao do
         begin
            FRel_Padrao       := TFRel_Padrao.Create(Self);
            cxClie.Visible := true;
            cxAgrupa.Visible  := true;
            cbAgrupa.Properties.Items.Add('Sim');
            cbAgrupa.Properties.Items.Add('Não');
            cbAgrupa.Itemindex := 0;
            Frel_Padrao.intCodRel := intCodRel; // Balanço
            ShowModal;
         end;
      end;
   end;
end;

end.
