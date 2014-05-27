unit udmRel;

interface

uses
  SysUtils, Classes, FMTBcd, Provider, DB, SqlExpr, DBClient, ppEndUsr,
  ppParameter, ppDesignLayer, ppBands, ppCtrls, ppStrtch, ppMemo, ppVar,
  ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv,
  ppDBPipe, RxMemDS, ppModule, raCodMod, ppSubRpt;

type
  TdmRel = class(TDataModule)
    qryRel: TSQLDataSet;
    qryRelIDRELATORIO: TIntegerField;
    qryRelDESCRICAO: TStringField;
    qryRelGRUPO: TStringField;
    qryRelCAMINHO: TStringField;
    dspRel: TDataSetProvider;
    cdsRel: TClientDataSet;
    cdsRelIDRELATORIO: TIntegerField;
    cdsRelDESCRICAO: TStringField;
    cdsRelGRUPO: TStringField;
    cdsRelCAMINHO: TStringField;
    dsRel: TDataSource;
    qryAux: TSQLDataSet;
    qryAux2: TSQLDataSet;
    qryAux3: TSQLDataSet;
    dbEmpresa: TppDBPipeline;
    dbPipeAux: TppDBPipeline;
    dbPipeAux2: TppDBPipeline;
    ppDesigner: TppDesigner;
    rxCabec: TRxMemoryData;
    dsCabec: TDataSource;
    ppCabec: TppDBPipeline;
    rxCabecFILTRO: TStringField;
    rxCabecFILTRO1: TStringField;
    rxCabecFILTRO2: TStringField;
    rxCabecFILTRO3: TStringField;
    rxCabecFILTRO4: TStringField;
    rxCabecLABEL: TStringField;
    rxCabecLABEL1: TStringField;
    rxCabecLABEL2: TStringField;
    rxCabecLABEL3: TStringField;
    rxCabecLABEL4: TStringField;
    rxCabecUSACOR: TStringField;
    rxCabecAGRUPA: TStringField;
    ppReport: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel1: TppLabel;
    ppDBText5: TppDBText;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppDBText6: TppDBText;
    ppLabel4: TppLabel;
    ppDBText9: TppDBText;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppLine2: TppLine;
    ppLabel6: TppLabel;
    ppDBText11: TppDBText;
    ppLabel7: TppLabel;
    ppLine3: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppSummaryBand2: TppSummaryBand;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText12: TppDBText;
    ppLabel15: TppLabel;
    ppDBText13: TppDBText;
    ppLine4: TppLine;
    ppDBText14: TppDBText;
    ppLabel17: TppLabel;
    ppLabel16: TppLabel;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    procedure dspRelGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRel: TdmRel;

implementation

uses udmCad, udmVenda;

{$R *.dfm}

procedure TdmRel.dspRelGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: String);
begin
   TableName:='RELATORIO';
end;

end.
