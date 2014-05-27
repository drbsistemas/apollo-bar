unit udmCad;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd, Provider, DBClient, IniFiles, Forms;

type
  TdmCad = class(TDataModule)
    SQLCon: TSQLConnection;
    qryAux: TSQLDataSet;
    qryGen: TSQLDataSet;
    qryItemConf: TSQLDataSet;
    qryItemConfRESUMOCONF: TStringField;
    qryItemConfVALORCONF: TStringField;
    qryItemConfMODULOCONF: TStringField;
    qryItemConfIDITEMCONF: TIntegerField;
    qryItemConfCAMPO: TStringField;
    qryItemConfTIPOINFO: TStringField;
    dspItemConf: TDataSetProvider;
    cdsItemConf: TClientDataSet;
    cdsItemConfRESUMOCONF: TStringField;
    cdsItemConfVALORCONF: TStringField;
    cdsItemConfMODULOCONF: TStringField;
    cdsItemConfIDITEMCONF: TIntegerField;
    cdsItemConfCAMPO: TStringField;
    cdsItemConfTIPOINFO: TStringField;
    dsItemConf: TDataSource;
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
    dspClie: TDataSetProvider;
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
    dsClie: TDataSource;
    qryClieCPF: TStringField;
    qryClieRG: TStringField;
    cdsClieCPF: TStringField;
    cdsClieRG: TStringField;
    qryProd: TSQLDataSet;
    qryProdIDPROD: TIntegerField;
    qryProdPRODUTO: TStringField;
    qryProdREFPROD: TStringField;
    qryProdMARCAPROD: TStringField;
    qryProdIDGRUPO: TIntegerField;
    qryProdIDFORNEC: TIntegerField;
    qryProdIDSUBGRUPO: TIntegerField;
    qryProdPRECOCPR: TFloatField;
    qryProdCUSTOCPR: TFloatField;
    qryProdCUSTO: TFloatField;
    qryProdESTOQUEDISP: TFloatField;
    qryProdESTOQUETOTAL: TFloatField;
    qryProdESTOQUEMIN: TFloatField;
    qryProdESTOQUEMAX: TFloatField;
    qryProdDTCADASTRO: TSQLTimeStampField;
    qryProdPESOBRUTO: TFloatField;
    qryProdPESOLIQ: TFloatField;
    qryProdATIVOPROD: TStringField;
    qryProdMARGEMLUCRO: TFloatField;
    qryProdUNPROD: TStringField;
    qryProdHISTORICO: TStringField;
    qryProdFOTOPROD: TStringField;
    qryProdPRECOVENDA: TFloatField;
    qryProdESTOQUEPEDIDO: TFloatField;
    qryProdESTOQUEORCAMENTO: TFloatField;
    qryProdALIQCOMISSAO: TFloatField;
    qryProdPRECOMINIMO: TFloatField;
    qryProdDTATUALIZADO: TSQLTimeStampField;
    qryProdCODBAR: TStringField;
    dspProd: TDataSetProvider;
    cdsProd: TClientDataSet;
    cdsProdIDPROD: TIntegerField;
    cdsProdPRODUTO: TStringField;
    cdsProdREFPROD: TStringField;
    cdsProdMARCAPROD: TStringField;
    cdsProdIDGRUPO: TIntegerField;
    cdsProdIDFORNEC: TIntegerField;
    cdsProdIDSUBGRUPO: TIntegerField;
    cdsProdPRECOCPR: TFloatField;
    cdsProdCUSTOCPR: TFloatField;
    cdsProdCUSTO: TFloatField;
    cdsProdESTOQUEDISP: TFloatField;
    cdsProdESTOQUETOTAL: TFloatField;
    cdsProdESTOQUEMIN: TFloatField;
    cdsProdESTOQUEMAX: TFloatField;
    cdsProdDTCADASTRO: TSQLTimeStampField;
    cdsProdPESOBRUTO: TFloatField;
    cdsProdPESOLIQ: TFloatField;
    cdsProdATIVOPROD: TStringField;
    cdsProdMARGEMLUCRO: TFloatField;
    cdsProdUNPROD: TStringField;
    cdsProdHISTORICO: TStringField;
    cdsProdFOTOPROD: TStringField;
    cdsProdPRECOVENDA: TFloatField;
    cdsProdESTOQUEPEDIDO: TFloatField;
    cdsProdESTOQUEORCAMENTO: TFloatField;
    cdsProdALIQCOMISSAO: TFloatField;
    cdsProdPRECOMINIMO: TFloatField;
    cdsProdDTATUALIZADO: TSQLTimeStampField;
    cdsProdCODBAR: TStringField;
    dsProd: TDataSource;
    qryGenerico: TSQLDataSet;
    qryGenericoIDGENERICA: TIntegerField;
    qryGenericoTABELA: TStringField;
    qryGenericoDESCRICAO: TStringField;
    qryGenericoVALOR: TFloatField;
    qryGenericoOBS: TStringField;
    dspGenerico: TDataSetProvider;
    cdsGenerico: TClientDataSet;
    dsGenerico: TDataSource;
    cdsGenericoIDGENERICA: TIntegerField;
    cdsGenericoTABELA: TStringField;
    cdsGenericoDESCRICAO: TStringField;
    cdsGenericoVALOR: TFloatField;
    cdsGenericoOBS: TStringField;
    qryProdDESCRICAO: TStringField;
    cdsProdDESCRICAO: TStringField;
    qryClieFANTASIA: TStringField;
    cdsClieFANTASIA: TStringField;
    qryClieTIPOCLIE: TStringField;
    cdsClieTIPOCLIE: TStringField;
    qryCliePESSOA: TStringField;
    cdsCliePESSOA: TStringField;
    qryClieDATANASCE: TSQLTimeStampField;
    cdsClieDATANASCE: TSQLTimeStampField;
    qryEstoque: TSQLDataSet;
    dspEstoque: TDataSetProvider;
    cdsEstoque: TClientDataSet;
    dsEstoque: TDataSource;
    qryEstoqueIDESTOQUE: TIntegerField;
    qryEstoqueIDPROD: TIntegerField;
    qryEstoqueENTRADA: TFloatField;
    qryEstoqueSAIDA: TFloatField;
    qryEstoqueSALDO: TFloatField;
    qryEstoqueORIGEM: TStringField;
    qryEstoqueDOCUMENTO: TIntegerField;
    qryEstoqueDATA: TSQLTimeStampField;
    qryEstoqueDESCRICAO: TStringField;
    qryEstoquePRODUTO: TStringField;
    qryEstoqueREFPROD: TStringField;
    qryEstoqueMARCAPROD: TStringField;
    qryEstoqueESTOQUEDISP: TFloatField;
    qryEstoqueESTOQUETOTAL: TFloatField;
    qryEstoqueUNPROD: TStringField;
    cdsEstoqueIDESTOQUE: TIntegerField;
    cdsEstoqueIDPROD: TIntegerField;
    cdsEstoqueENTRADA: TFloatField;
    cdsEstoqueSAIDA: TFloatField;
    cdsEstoqueSALDO: TFloatField;
    cdsEstoqueORIGEM: TStringField;
    cdsEstoqueDOCUMENTO: TIntegerField;
    cdsEstoqueDATA: TSQLTimeStampField;
    cdsEstoqueDESCRICAO: TStringField;
    cdsEstoquePRODUTO: TStringField;
    cdsEstoqueREFPROD: TStringField;
    cdsEstoqueMARCAPROD: TStringField;
    cdsEstoqueESTOQUEDISP: TFloatField;
    cdsEstoqueESTOQUETOTAL: TFloatField;
    cdsEstoqueUNPROD: TStringField;
    qryConf: TSQLDataSet;
    qryConfIDCONF: TIntegerField;
    qryConfKEYGEN: TStringField;
    qryConfRAZAOEMP: TStringField;
    qryConfFANTASIAEMP: TStringField;
    qryConfCNPJEMP: TStringField;
    qryConfIEEMP: TStringField;
    qryConfENDERECOEMP: TStringField;
    qryConfNUMEROEMP: TStringField;
    qryConfCOMPLEMENTOEMP: TStringField;
    qryConfBAIRROEMP: TStringField;
    qryConfIEMUNEMP: TStringField;
    qryConfCIDADEEMP: TStringField;
    qryConfUFEMP: TStringField;
    qryConfCEPEMP: TStringField;
    qryConfCONTATOEMP: TStringField;
    qryConfFONEEMP: TStringField;
    qryConfFAXEMP: TStringField;
    qryConfEMAILEMP: TStringField;
    qryConfSITEEMP: TStringField;
    qryConfDATABACKUP: TStringField;
    qryConfVALIDADELIC: TStringField;
    qryConfQTDELIC: TStringField;
    qryConfPROGRAMABACKUP: TStringField;
    qryConfLOGOEMP: TStringField;
    qryConfPASTASERVIDOR: TStringField;
    dspCOnf: TDataSetProvider;
    cdsCOnf: TClientDataSet;
    dsCOnf: TDataSource;
    cdsCOnfIDCONF: TIntegerField;
    cdsCOnfKEYGEN: TStringField;
    cdsCOnfRAZAOEMP: TStringField;
    cdsCOnfFANTASIAEMP: TStringField;
    cdsCOnfCNPJEMP: TStringField;
    cdsCOnfIEEMP: TStringField;
    cdsCOnfENDERECOEMP: TStringField;
    cdsCOnfNUMEROEMP: TStringField;
    cdsCOnfCOMPLEMENTOEMP: TStringField;
    cdsCOnfBAIRROEMP: TStringField;
    cdsCOnfIEMUNEMP: TStringField;
    cdsCOnfCIDADEEMP: TStringField;
    cdsCOnfUFEMP: TStringField;
    cdsCOnfCEPEMP: TStringField;
    cdsCOnfCONTATOEMP: TStringField;
    cdsCOnfFONEEMP: TStringField;
    cdsCOnfFAXEMP: TStringField;
    cdsCOnfEMAILEMP: TStringField;
    cdsCOnfSITEEMP: TStringField;
    cdsCOnfDATABACKUP: TStringField;
    cdsCOnfVALIDADELIC: TStringField;
    cdsCOnfQTDELIC: TStringField;
    cdsCOnfPROGRAMABACKUP: TStringField;
    cdsCOnfLOGOEMP: TStringField;
    cdsCOnfPASTASERVIDOR: TStringField;
    qryPlano: TSQLDataSet;
    qryPlanoIDPLANO: TIntegerField;
    qryPlanoNOMEPLANO: TStringField;
    qryPlanoATIVO: TStringField;
    qryPlanoTIPOPLANO: TStringField;
    qryPlanoDRE: TStringField;
    dspPlano: TDataSetProvider;
    cdsPlano: TClientDataSet;
    cdsPlanoIDPLANO: TIntegerField;
    cdsPlanoNOMEPLANO: TStringField;
    cdsPlanoATIVO: TStringField;
    cdsPlanoTIPOPLANO: TStringField;
    cdsPlanoDRE: TStringField;
    dsPlano: TDataSource;
    qryCidade: TSQLDataSet;
    qryCidadeCODMUN: TIntegerField;
    qryCidadeCODUF: TIntegerField;
    qryCidadeMUNICIPIO: TStringField;
    qryCidadeUF: TStringField;
    dspCidade: TDataSetProvider;
    cdsCidade: TClientDataSet;
    dsCidade: TDataSource;
    cdsCidadeCODMUN: TIntegerField;
    cdsCidadeCODUF: TIntegerField;
    cdsCidadeMUNICIPIO: TStringField;
    cdsCidadeUF: TStringField;
    qryBalanco: TSQLDataSet;
    qryBalancoIDBALANCO: TIntegerField;
    qryBalancoIDPROD: TIntegerField;
    qryBalancoIDSEQ: TIntegerField;
    qryBalancoDATA: TSQLTimeStampField;
    qryBalancoSTATUS: TStringField;
    qryBalancoESTOQUETOTAL: TFloatField;
    qryBalancoESTOQUECONT: TFloatField;
    qryBalancoESTOQUEDIF: TFloatField;
    qryBalancoREFPROD: TStringField;
    qryBalancoPRODUTO: TStringField;
    dspBalanco: TDataSetProvider;
    cdsBalanco: TClientDataSet;
    cdsBalancoIDBALANCO: TIntegerField;
    cdsBalancoIDPROD: TIntegerField;
    cdsBalancoIDSEQ: TIntegerField;
    cdsBalancoDATA: TSQLTimeStampField;
    cdsBalancoSTATUS: TStringField;
    cdsBalancoESTOQUETOTAL: TFloatField;
    cdsBalancoESTOQUECONT: TFloatField;
    cdsBalancoESTOQUEDIF: TFloatField;
    cdsBalancoREFPROD: TStringField;
    cdsBalancoPRODUTO: TStringField;
    dsBalanco: TDataSource;
    qryEstoqueUSUARIO: TStringField;
    cdsEstoqueUSUARIO: TStringField;
    qryAux2: TSQLDataSet;
    qryAux3: TSQLDataSet;
    qryProdRAZAO: TStringField;
    qryProdGRUPO: TStringField;
    qryProdSUBGRUPO: TStringField;
    cdsProdRAZAO: TStringField;
    cdsProdGRUPO: TStringField;
    cdsProdSUBGRUPO: TStringField;
    qryVend: TSQLDataSet;
    qryVendIDVEND: TIntegerField;
    qryVendNOMEVENDEDOR: TStringField;
    qryVendFONE: TStringField;
    qryVendCELULAR: TStringField;
    qryVendCPF: TStringField;
    qryVendRG: TStringField;
    qryVendENDERECO: TStringField;
    qryVendNUMERO: TStringField;
    qryVendCEP: TStringField;
    qryVendBAIRRO: TStringField;
    qryVendUF: TStringField;
    qryVendCIDADE: TStringField;
    qryVendEMAIL: TStringField;
    qryVendPERCOMISSAO: TFloatField;
    dspVend: TDataSetProvider;
    cdsVend: TClientDataSet;
    cdsVendIDVEND: TIntegerField;
    cdsVendNOMEVENDEDOR: TStringField;
    cdsVendFONE: TStringField;
    cdsVendCELULAR: TStringField;
    cdsVendCPF: TStringField;
    cdsVendRG: TStringField;
    cdsVendENDERECO: TStringField;
    cdsVendNUMERO: TStringField;
    cdsVendCEP: TStringField;
    cdsVendBAIRRO: TStringField;
    cdsVendUF: TStringField;
    cdsVendCIDADE: TStringField;
    cdsVendEMAIL: TStringField;
    cdsVendPERCOMISSAO: TFloatField;
    dsVend: TDataSource;
    qryVendATIVO: TStringField;
    qryVendIBGE: TIntegerField;
    cdsVendATIVO: TStringField;
    cdsVendIBGE: TIntegerField;
    qryVendDTCADASTRO: TSQLTimeStampField;
    cdsVendDTCADASTRO: TSQLTimeStampField;
    cdsAux: TClientDataSet;
    dspAux: TDataSetProvider;
    dspAux2: TDataSetProvider;
    cdsAux2: TClientDataSet;
    dspAux3: TDataSetProvider;
    cdsAux3: TClientDataSet;
    qryConfHOSTEMAIL: TStringField;
    qryConfUSUARIOEMAIL: TStringField;
    qryConfSENHAEMAIL: TStringField;
    qryConfPORTAEMAIL: TIntegerField;
    qryConfSSLEMAIL: TIntegerField;
    cdsCOnfHOSTEMAIL: TStringField;
    cdsCOnfUSUARIOEMAIL: TStringField;
    cdsCOnfSENHAEMAIL: TStringField;
    cdsCOnfPORTAEMAIL: TIntegerField;
    cdsCOnfSSLEMAIL: TIntegerField;
    ///// Privado
    procedure ConectaBanco;
    /////
    procedure dspConfGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsConfAfterInsert(DataSet: TDataSet);
    procedure dspClieGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsClieAfterInsert(DataSet: TDataSet);
    procedure dspItemConfGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspProdGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsProdAfterInsert(DataSet: TDataSet);
    procedure dspGenericoGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspEstoqueGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsEstoqueAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure dspPlanoGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsPlanoAfterInsert(DataSet: TDataSet);
    procedure cdsPlanoATIVOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsPlanoDREGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dspCidadeGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspBalancoGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsBalancoAfterInsert(DataSet: TDataSet);
    procedure dspVendGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsVendAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCad: TdmCad;

implementation

uses
  Dialogs, Rotinas, LoginWindow_U;

{$R *.dfm}

procedure TdmCad.dspConfGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: String);
begin
   TableName := 'CONF';
end;

procedure TdmCad.cdsConfAfterInsert(DataSet: TDataSet);
begin
   qryGen.Close;
   qryGen.CommandText:='select GEN_ID(GEN_CONF_ID,1) codigo from dual';
   qryGen.Open;
   cdsCONF.FieldByname('IDCONF').AsInteger := qryGen.Fieldbyname('CODIGO').asInteger;
end;

procedure TdmCad.dspClieGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: String);
begin
   TableName:='CLIENTES';
end;

procedure TdmCad.cdsClieAfterInsert(DataSet: TDataSet);
begin
   qryGen.Close;
   qryGen.CommandText:='select GEN_ID(GEN_CLIENTES_ID,1) codigo from dual';
   qryGen.Open;
   cdsClie.FieldByname('IDCLIE').AsInteger := qryGen.Fieldbyname('CODIGO').asInteger;
end;

procedure TdmCad.dspItemConfGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
   TableName := 'ITEMCONF';
end;

procedure TdmCad.dspProdGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: String);
begin
   TableName := 'PRODUTO';
end;

procedure TdmCad.cdsProdAfterInsert(DataSet: TDataSet);
begin
   qryGen.Close;
   qryGen.CommandText:='select GEN_ID(GEN_PRODUTO_ID,1) codigo from dual';
   qryGen.Open;
   cdsProd.FieldByname('IDPROD').AsInteger := qryGen.Fieldbyname('CODIGO').asInteger;
end;

procedure TdmCad.dspGenericoGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
   TableName:='GENERICA';
end;

procedure TdmCad.dspEstoqueGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: String);
begin
   TableName := 'ESTOQUE';
end;

procedure TdmCad.cdsEstoqueAfterInsert(DataSet: TDataSet);
begin
   qryGen.Close;
   qryGen.CommandText:='select GEN_ID(GEN_ESTOQUE_ID,1) codigo from dual';
   qryGen.Open;
   cdsEstoque.FieldByname('IDESTOQUE').AsInteger := qryGen.Fieldbyname('CODIGO').asInteger;
end;

procedure TdmCad.ConectaBanco;
var
   ArqIni: TIniFile;
   StrCaminho: String;
begin
   SqlCon.Close;
   if not FileExists((ExtractFilePath(Application.ExeName) + 'wINfo.DRB')) then
   begin
      MessageDlg('Arquivo de Informações não foi encontrado!'+#13+'Contate o Suporte.',mtError,[mbok],0);
      application.terminate;
   end;
   try
       StrCaminho := CAMINHODOSERVIDOR(ExtractFilePath(Application.ExeName) + 'wINFo.DRB', 'LOJA 1', 'BANCO');
      if SQLCon.Connected then
         SQLCon.Connected := False;
      SQLCon.Params.Values['database'] := StrCaminho;
      SQLCon.Params.Values['sqldialect'] := '3';
      SQLCon.Connected := True;
   except
      on EDatabaseError do
      begin
         MessageDlg('Erro ao conectar o Banco de dados', mtError, [mbOK], 0);
      end;
   end;
end;

procedure TdmCad.DataModuleCreate(Sender: TObject);
begin
  ConectaBanco;
end;

procedure TdmCad.dspPlanoGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: String);
begin
   TableName:='PLANOCONTA';
end;

procedure TdmCad.cdsPlanoAfterInsert(DataSet: TDataSet);
begin
   qryGen.Close;
   qryGen.CommandText:='select GEN_ID(GEN_PLANOCONTA_ID,1) codigo from dual';
   qryGen.Open;
   cdsPlano.FieldByname('IDPLANO').AsInteger := qryGen.Fieldbyname('CODIGO').asInteger;
end;

procedure TdmCad.cdsPlanoATIVOGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
   if Sender.Value = 'S' then
      Text := 'SIM' else
      if Sender.Value = 'N' then
         Text := 'NÃO';
end;

procedure TdmCad.cdsPlanoDREGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
   if Sender.Value = 'S' then
      Text := 'SIM' else
      if Sender.Value = 'N' then
         Text := 'NÃO';
end;

procedure TdmCad.dspCidadeGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: String);
begin
   TableName := 'CODIBGE';
end;

procedure TdmCad.dspBalancoGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: String);
begin
   TableName := 'BALANCO';
end;

procedure TdmCad.cdsBalancoAfterInsert(DataSet: TDataSet);
begin
   qryGen.Close;
   qryGen.CommandText:='select GEN_ID(GEN_BALANCO_ID,1) codigo from dual';
   qryGen.Open;
   cdsBalanco.FieldByname('IDBALANCO').AsInteger := qryGen.Fieldbyname('CODIGO').asInteger;
end;

procedure TdmCad.dspVendGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: String);
begin
   TableName:='VENDEDOR';
end;

procedure TdmCad.cdsVendAfterInsert(DataSet: TDataSet);
begin
   qryGen.Close;
   qryGen.CommandText:='select GEN_ID(GEN_VENDEDOR_ID,1) codigo from dual';
   qryGen.Open;
   cdsVEnd.FieldByname('IDVEND').AsInteger := qryGen.Fieldbyname('CODIGO').asInteger;
end;

end.
