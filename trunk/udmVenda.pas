unit udmVenda;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, Provider, DBClient;

type
  TdmVenda = class(TDataModule)
    qryVendas: TSQLDataSet;
    qryVendasIDVENDA: TIntegerField;
    qryVendasIDCLIE: TIntegerField;
    qryVendasDTVENDA: TSQLTimeStampField;
    qryVendasSUBTOTAL: TFloatField;
    qryVendasVLRDESC: TFloatField;
    qryVendasTOTAL: TFloatField;
    qryVendasIDVENDEDOR: TIntegerField;
    qryVendasUSUARIO: TStringField;
    qryVendasIDMESA: TIntegerField;
    qryVendasOBS: TStringField;
    qryVendasSITUACAO: TStringField;
    qryVendasVLRCOMISSAO: TFloatField;
    qryVendasALIQCOMISSAO: TFloatField;
    qryVendasALIQICMS: TFloatField;
    qryVendasVLRICMS: TFloatField;
    qryVendasIDENTREGA: TIntegerField;
    qryVendasRAZAO: TStringField;
    dspVendas: TDataSetProvider;
    cdsVendas: TClientDataSet;
    cdsVendasIDVENDA: TIntegerField;
    cdsVendasIDCLIE: TIntegerField;
    cdsVendasDTVENDA: TSQLTimeStampField;
    cdsVendasSUBTOTAL: TFloatField;
    cdsVendasVLRDESC: TFloatField;
    cdsVendasTOTAL: TFloatField;
    cdsVendasIDVENDEDOR: TIntegerField;
    cdsVendasUSUARIO: TStringField;
    cdsVendasIDMESA: TIntegerField;
    cdsVendasOBS: TStringField;
    cdsVendasSITUACAO: TStringField;
    cdsVendasVLRCOMISSAO: TFloatField;
    cdsVendasALIQCOMISSAO: TFloatField;
    cdsVendasALIQICMS: TFloatField;
    cdsVendasVLRICMS: TFloatField;
    cdsVendasIDENTREGA: TIntegerField;
    cdsVendasRAZAO: TStringField;
    dsVendas: TDataSource;
    qryAux: TSQLDataSet;
    qryGen: TSQLDataSet;
    qryAux2: TSQLDataSet;
    qryAux3: TSQLDataSet;
    qryItVenda: TSQLDataSet;
    qryItVendaIDITVENDA: TIntegerField;
    qryItVendaIDVENDA: TIntegerField;
    qryItVendaIDPROD: TIntegerField;
    qryItVendaPRODUTO: TStringField;
    qryItVendaQTDE: TFloatField;
    qryItVendaVLRUNIT: TFloatField;
    qryItVendaVLRTOTAL: TFloatField;
    qryItVendaALIQICMS: TFloatField;
    qryItVendaVLRICMS: TFloatField;
    qryItVendaINFADICIONAL: TStringField;
    qryItVendaVLRCUSTO: TFloatField;
    qryItVendaVLRDESC: TFloatField;
    qryItVendaVLRDVV: TFloatField;
    qryItVendaREFPROD: TStringField;
    qryItVendaMARCAPROD: TStringField;
    qryItVendaUNPROD: TStringField;
    dspItVenda: TDataSetProvider;
    cdsitVenda: TClientDataSet;
    cdsitVendaIDITVENDA: TIntegerField;
    cdsitVendaIDVENDA: TIntegerField;
    cdsitVendaIDPROD: TIntegerField;
    cdsitVendaPRODUTO: TStringField;
    cdsitVendaQTDE: TFloatField;
    cdsitVendaVLRUNIT: TFloatField;
    cdsitVendaVLRTOTAL: TFloatField;
    cdsitVendaALIQICMS: TFloatField;
    cdsitVendaVLRICMS: TFloatField;
    cdsitVendaINFADICIONAL: TStringField;
    cdsitVendaVLRCUSTO: TFloatField;
    cdsitVendaVLRDESC: TFloatField;
    cdsitVendaVLRDVV: TFloatField;
    cdsitVendaREFPROD: TStringField;
    cdsitVendaMARCAPROD: TStringField;
    cdsitVendaUNPROD: TStringField;
    dsItVenda: TDataSource;
    qryItVendaSTATUS: TStringField;
    cdsitVendaSTATUS: TStringField;
    qryVendasVLRSERVICO: TFloatField;
    cdsVendasVLRSERVICO: TFloatField;
    qryVendasNOMEVENDEDOR: TStringField;
    cdsVendasNOMEVENDEDOR: TStringField;
    dspAux: TDataSetProvider;
    dspAux2: TDataSetProvider;
    dspAux3: TDataSetProvider;
    cdsAux: TClientDataSet;
    cdsAux2: TClientDataSet;
    cdsAux3: TClientDataSet;
    procedure dspVendasGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsVendasAfterInsert(DataSet: TDataSet);
    procedure dspItVendaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsitVendaAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmVenda: TdmVenda;

implementation

uses udmCad;

{$R *.dfm}

procedure TdmVenda.dspVendasGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
   TableName := 'VENDA';
end;

procedure TdmVenda.cdsVendasAfterInsert(DataSet: TDataSet);
begin
   qryGen.Close;
   qryGen.CommandText:='select GEN_ID(GEN_VENDA_ID,1) codigo from dual';
   qryGen.Open;
   cdsVendas.FieldByname('IDVENDA').AsInteger := qryGen.Fieldbyname('CODIGO').asInteger;
end;

procedure TdmVenda.dspItVendaGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
   TableName := 'ITEMVENDA';
end;

procedure TdmVenda.cdsitVendaAfterInsert(DataSet: TDataSet);
begin
   qryGen.Close;
   qryGen.CommandText:='select GEN_ID(GEN_ITEMVENDA_ID,1) codigo from dual';
   qryGen.Open;
   cdsitVenda.FieldByname('IDITVENDA').AsInteger := qryGen.Fieldbyname('CODIGO').asInteger;
end;

end.
