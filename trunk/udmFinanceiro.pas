unit udmFinanceiro;

interface

uses
  SysUtils, Classes, FMTBcd, Provider, DB, SqlExpr, DBClient, RxMemDS,
  ACBrBoleto, ACBrBase, ACBrBoletoFCFortesFr;

  procedure GeraBoletosGB(intCaixa, intChamou: Integer);

type
  TdmFinanceiro = class(TDataModule)
    qryContas: TSQLDataSet;
    dspContas: TDataSetProvider;
    cdsContas: TClientDataSet;
    qryGen: TSQLDataSet;
    qryAux: TSQLDataSet;
    dsContas: TDataSource;
    qryCaixa: TSQLDataSet;
    qryCaixaIDCAIXA: TIntegerField;
    qryCaixaIDBANCO: TIntegerField;
    qryCaixaAGENCIA: TStringField;
    qryCaixaTITULAR: TStringField;
    qryCaixaDTABERTURA: TSQLTimeStampField;
    qryCaixaDTFECHADO: TSQLTimeStampField;
    qryCaixaSALDOCAIXA: TFloatField;
    qryCaixaSALDOCONCILIADO: TFloatField;
    qryCaixaTIPOCAIXA: TStringField;
    qryCaixaBANCO: TStringField;
    dspCaixa: TDataSetProvider;
    cdsCaixa: TClientDataSet;
    cdsCaixaIDCAIXA: TIntegerField;
    dsCaixa: TDataSource;
    qryItCaixa: TSQLDataSet;
    dspItCaixa: TDataSetProvider;
    cdsItCaixa: TClientDataSet;
    dsItCaixa: TDataSource;
    qryContasIDCONTA: TIntegerField;
    qryContasIDCLIE: TIntegerField;
    qryContasIDCCUSTO: TIntegerField;
    qryContasIDCARTAO: TIntegerField;
    qryContasIDFPAGTO: TIntegerField;
    qryContasIDLOTE: TIntegerField;
    qryContasIDPAI: TIntegerField;
    qryContasIDORIGEM: TIntegerField;
    qryContasIDPLANOCTA: TIntegerField;
    qryContasDIASATRASO: TIntegerField;
    qryContasDTEMISSAO: TSQLTimeStampField;
    qryContasDTLANCTO: TSQLTimeStampField;
    qryContasDTVENCTO: TSQLTimeStampField;
    qryContasDTBAIXA: TSQLTimeStampField;
    qryContasVLRINI: TFloatField;
    qryContasVLRJUROS: TFloatField;
    qryContasVLRMULTA: TFloatField;
    qryContasVLRDESC: TFloatField;
    qryContasVLRBRUTO: TFloatField;
    qryContasVLRPAGO: TFloatField;
    qryContasPARCELA: TIntegerField;
    qryContasDOCUMENTO: TStringField;
    qryContasTIPOCONTA: TStringField;
    qryContasSTATUSCONTA: TStringField;
    qryContasORIGEM: TStringField;
    qryContasRAZAO: TStringField;
    cdsContasIDCONTA: TIntegerField;
    cdsContasIDCLIE: TIntegerField;
    cdsContasIDCCUSTO: TIntegerField;
    cdsContasIDCARTAO: TIntegerField;
    cdsContasIDFPAGTO: TIntegerField;
    cdsContasIDLOTE: TIntegerField;
    cdsContasIDPAI: TIntegerField;
    cdsContasIDORIGEM: TIntegerField;
    cdsContasIDPLANOCTA: TIntegerField;
    cdsContasDIASATRASO: TIntegerField;
    cdsContasDTEMISSAO: TSQLTimeStampField;
    cdsContasDTLANCTO: TSQLTimeStampField;
    cdsContasDTVENCTO: TSQLTimeStampField;
    cdsContasDTBAIXA: TSQLTimeStampField;
    cdsContasVLRINI: TFloatField;
    cdsContasVLRJUROS: TFloatField;
    cdsContasVLRMULTA: TFloatField;
    cdsContasVLRDESC: TFloatField;
    cdsContasVLRBRUTO: TFloatField;
    cdsContasVLRPAGO: TFloatField;
    cdsContasPARCELA: TIntegerField;
    cdsContasDOCUMENTO: TStringField;
    cdsContasTIPOCONTA: TStringField;
    cdsContasSTATUSCONTA: TStringField;
    cdsContasORIGEM: TStringField;
    cdsContasRAZAO: TStringField;
    cdsContasCNPJ: TStringField;
    cdsContasCPF: TStringField;
    rxSelec: TRxMemoryData;
    dsSelec: TDataSource;
    qryContasCNPJ: TStringField;
    qryContasCPF: TStringField;
    qryContasCCUSTO: TStringField;
    qryContasFPAGTO: TStringField;
    cdsContasCCUSTO: TStringField;
    cdsContasFPAGTO: TStringField;
    qryContasHISTORICO: TStringField;
    qryContasOBS: TStringField;
    cdsContasHISTORICO: TStringField;
    cdsContasOBS: TStringField;
    rxSelecIDCONTA: TIntegerField;
    rxSelecIDCLIE: TIntegerField;
    rxSelecIDPLANO: TIntegerField;
    rxSelecIDCCUSTO: TIntegerField;
    rxSelecIDFPAGTO: TIntegerField;
    rxSelecDOCUMENTO: TStringField;
    rxSelecNOMECLIE: TStringField;
    rxSelecDTVENCTO: TDateTimeField;
    rxSelecDTEMISSAO: TDateTimeField;
    rxSelecVLRINI: TFloatField;
    rxSelecVLRJUROS: TFloatField;
    rxSelecVLRMULTA: TFloatField;
    rxSelecVLRDESC: TFloatField;
    rxSelecVLRBRUTO: TFloatField;
    rxSelecDIASATRASO: TIntegerField;
    rxSelecHISTORICO: TStringField;
    rxSelecSTATUS: TStringField;
    rxSelecVLRPAGO: TFloatField;
    qryItCaixaIDITEMCAIXA: TIntegerField;
    qryItCaixaIDCAIXA: TIntegerField;
    qryItCaixaDOCUMENTO: TFMTBCDField;
    qryItCaixaCREDITO: TFloatField;
    qryItCaixaDEBITO: TFloatField;
    qryItCaixaSALDOITEM: TFloatField;
    qryItCaixaDATAITEM: TSQLTimeStampField;
    qryItCaixaHISTORICO: TStringField;
    qryItCaixaDATACONCILIADO: TSQLTimeStampField;
    qryItCaixaIDPLANOCTA: TIntegerField;
    qryItCaixaIDLOTE: TIntegerField;
    qryItCaixaUSUARIO: TStringField;
    cdsItCaixaIDITEMCAIXA: TIntegerField;
    cdsItCaixaIDCAIXA: TIntegerField;
    cdsItCaixaDOCUMENTO: TFMTBCDField;
    cdsItCaixaCREDITO: TFloatField;
    cdsItCaixaDEBITO: TFloatField;
    cdsItCaixaSALDOITEM: TFloatField;
    cdsItCaixaDATAITEM: TSQLTimeStampField;
    cdsItCaixaHISTORICO: TStringField;
    cdsItCaixaDATACONCILIADO: TSQLTimeStampField;
    cdsItCaixaIDPLANOCTA: TIntegerField;
    cdsItCaixaIDLOTE: TIntegerField;
    cdsItCaixaUSUARIO: TStringField;
    qryItCaixaIDFPAGTO: TIntegerField;
    cdsItCaixaIDFPAGTO: TIntegerField;
    dspAux: TDataSetProvider;
    cdsAux: TClientDataSet;
    dsAux: TDataSource;
    qryCaixaCONTA: TStringField;
    qryCaixaBOL_ESPECIEDOC: TStringField;
    qryCaixaBOL_ACEITE: TStringField;
    qryCaixaBOL_NOSSONUMERO: TIntegerField;
    qryCaixaBOL_LOCALPAGTO: TStringField;
    qryCaixaBOL_PERCJUROS: TFloatField;
    qryCaixaBOL_PERCMULTA: TFloatField;
    qryCaixaBOL_DIASPROTESTO: TIntegerField;
    qryCaixaBOL_INST1: TStringField;
    qryCaixaBOL_INST2: TStringField;
    qryCaixaBOL_INST3: TStringField;
    qryCaixaBOL_INST4: TStringField;
    qryCaixaAGENCIA_DIG: TIntegerField;
    qryCaixaCONTA_DIG: TIntegerField;
    cdsCaixaIDBANCO: TIntegerField;
    cdsCaixaAGENCIA: TStringField;
    cdsCaixaAGENCIA_DIG: TIntegerField;
    cdsCaixaCONTA: TStringField;
    cdsCaixaCONTA_DIG: TIntegerField;
    cdsCaixaTITULAR: TStringField;
    cdsCaixaDTABERTURA: TSQLTimeStampField;
    cdsCaixaDTFECHADO: TSQLTimeStampField;
    cdsCaixaSALDOCAIXA: TFloatField;
    cdsCaixaSALDOCONCILIADO: TFloatField;
    cdsCaixaTIPOCAIXA: TStringField;
    cdsCaixaBANCO: TStringField;
    cdsCaixaBOL_ESPECIEDOC: TStringField;
    cdsCaixaBOL_ACEITE: TStringField;
    cdsCaixaBOL_NOSSONUMERO: TIntegerField;
    cdsCaixaBOL_LOCALPAGTO: TStringField;
    cdsCaixaBOL_PERCJUROS: TFloatField;
    cdsCaixaBOL_PERCMULTA: TFloatField;
    cdsCaixaBOL_DIASPROTESTO: TIntegerField;
    cdsCaixaBOL_INST1: TStringField;
    cdsCaixaBOL_INST2: TStringField;
    cdsCaixaBOL_INST3: TStringField;
    cdsCaixaBOL_INST4: TStringField;
    ACBrBoletoFCFortes1: TACBrBoletoFCFortes;
    ACBrBoleto1: TACBrBoleto;
    qryAux2: TSQLDataSet;
    dspAux2: TDataSetProvider;
    cdsAux2: TClientDataSet;
    dsAux2: TDataSource;
    rxSelecNOSSONUMERO: TStringField;
    qryCaixaBOL_TAMNOSSONUMERO: TStringField;
    qryCaixaBOL_CARTEIRA: TStringField;
    qryCaixaBOL_CODCEDENTE: TStringField;
    qryCaixaBOL_ESPECIEMOD: TStringField;
    cdsCaixaBOL_TAMNOSSONUMERO: TStringField;
    cdsCaixaBOL_CARTEIRA: TStringField;
    cdsCaixaBOL_CODCEDENTE: TStringField;
    cdsCaixaBOL_ESPECIEMOD: TStringField;
    qryCaixaBOL_DIASCARENCIA: TIntegerField;
    cdsCaixaBOL_DIASCARENCIA: TIntegerField;
    procedure dspContasGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsContasAfterInsert(DataSet: TDataSet);
    procedure dspCaixaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsCaixaAfterInsert(DataSet: TDataSet);
    procedure dspItCaixaGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsItCaixaAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFinanceiro: TdmFinanceiro;

implementation

uses udmCad, Rotinas;

{$R *.dfm}

procedure TdmFinanceiro.dspContasGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
   TableName:='CONTA';
end;

procedure TdmFinanceiro.cdsContasAfterInsert(DataSet: TDataSet);
begin
   qryGen.Close;
   qryGen.CommandText:='select GEN_ID(GEN_CONTAS_ID,1) codigo from dual';
   qryGen.Open;
   cdsContas.FieldByname('IDCONTA').AsInteger := qryGen.Fieldbyname('CODIGO').asInteger;
end;

procedure TdmFinanceiro.dspCaixaGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
   TableName:='CAIXA';
end;

procedure TdmFinanceiro.cdsCaixaAfterInsert(DataSet: TDataSet);
begin
   qryGen.Close;
   qryGen.CommandText:='select GEN_ID(GEN_CAIXA_ID,1) codigo from dual';
   qryGen.Open;
   cdsCaixa.FieldByname('IDCAIXA').AsInteger := qryGen.Fieldbyname('CODIGO').asInteger;
end;

procedure TdmFinanceiro.dspItCaixaGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
   TableName :='ITEMCAIXA';
end;

procedure TdmFinanceiro.cdsItCaixaAfterInsert(DataSet: TDataSet);
begin
   qryGen.Close;
   qryGen.CommandText:='select GEN_ID(GEN_ITEMCAIXA_ID,1) codigo from dual';
   qryGen.Open;
   cdsItCaixa.FieldByname('IDITEMCAIXA').AsInteger := qryGen.Fieldbyname('CODIGO').asInteger;
end;

procedure GeraBoletosGB(intCaixa, intChamou: Integer);
var
   Titulo: TACBrTitulo;
begin
   dmfinanceiro.qryAux.Close;
   dmFinanceiro.qryAux.CommandText := 'select A.*, B.* from caixa A '+
      ' left join BANCO B on A.IDBANCO=B.IDBANCO where A.IDCAIXA='+InttoStr(intCaixa);
   dmFinanceiro.qryAux.Open;

   case dmfinanceiro.qryAux.Fieldbyname('IDBANCO').asInteger of
      33: dmFinanceiro.ACBrBoleto1.Banco.TipoCobranca  := cobSantander;
   else
      begin
         Msg('Atenção! O Software não atende o banco escolhido, verifique junto ao fornecedor!','I');
         Abort;
      end;
   end;
   ///// Boleto
   dmFinanceiro.ACBrBoletoFCFortes1.DirLogo             := dmCad.cdsConfPASTASERVIDOR.ASString + '\rapporti\Boleto\Logo\Colorido';
   dmFinanceiro.ACBrBoleto1.Banco.TamanhoMaximoNossoNum := dmFinanceiro.qryAux.Fieldbyname('BOL_TAMNOSSONUMERO').AsInteger;
//

///// Dados do Cedente
   dmFinanceiro.ACBrBoleto1.Cedente.Nome          := dmFinanceiro.qryAux.Fieldbyname('TITULAR').AsString;
   dmFinanceiro.ACBrBoleto1.Cedente.CodigoCedente := dmFinanceiro.qryAux.Fieldbyname('BOL_CODCEDENTE').AsString;
   dmFinanceiro.ACBrBoleto1.Cedente.Agencia       := dmFinanceiro.qryAux.Fieldbyname('AGENCIA').asString;
   dmFinanceiro.ACBrBoleto1.Cedente.AgenciaDigito := dmFinanceiro.qryAux.Fieldbyname('AGENCIA_DIG').AsString;
   dmFinanceiro.ACBrBoleto1.Cedente.Conta         := dmFinanceiro.qryAux.Fieldbyname('CONTA').AsString;
   dmFinanceiro.ACBrBoleto1.Cedente.ContaDigito   := dmFinanceiro.qryAux.Fieldbyname('CONTA_DIG').AsString;
   dmFinanceiro.ACBrBoleto1.Cedente.Convenio      := '';
   dmFinanceiro.ACBrBoleto1.Cedente.ResponEmissao := tbCliEmite;
   dmFinanceiro.ACBrBoleto1.Cedente.CaracTitulo   := tcSimples;
   dmFinanceiro.ACBrBoleto1.Cedente.TipoInscricao := pJuridica;
   dmFinanceiro.ACBrBoleto1.Cedente.CNPJCPF       := dmCad.cdsCOnfCNPJEMP.AsString;
   dmFinanceiro.ACBrBoleto1.Cedente.Complemento   := dmCad.cdsCOnfCOMPLEMENTOEMP.AsString;
   dmFinanceiro.ACBrBoleto1.Cedente.Bairro        := dmCad.cdsCOnfBAIRROEMP.AsString;
   dmFinanceiro.ACBrBoleto1.Cedente.Cidade        := dmCad.cdsCOnfCIDADEEMP.AsString;
   dmFinanceiro.ACBrBoleto1.Cedente.Logradouro    := dmCad.cdsCOnfENDERECOEMP.AsString;
   dmFinanceiro.ACBrBoleto1.Cedente.NumeroRes     := dmCad.cdsCOnfNUMEROEMP.AsString;
   dmFinanceiro.ACBrBoleto1.Cedente.UF            := dmCad.cdsCOnfUFEMP.ASString;
   dmFinanceiro.ACBrBoleto1.Cedente.CEP           := dmCad.cdsCOnfCEPEMP.AsString;
/////
///// Dados do BOleto
   dmfinanceiro.rxSelec.First;
   while not dmFinanceiro.RxSelec.Eof do
   begin
      Titulo := dmFinanceiro.ACBrBoleto1.CriarTituloNaLista;
      with Titulo do
      begin
         dmfinanceiro.qryAux2.Close;
         dmFinanceiro.qryAux2.CommandText := 'select * from CLIENTES where IDCLIE=' + dmFinanceiro.rxSelecIDCLIE.asString;
         dmFinanceiro.qryAux2.Open;
         SeuNumero                        := dmFinanceiro.rxSelecIDCONTA.AsString;

         if dmFinanceiro.qryAux.FieldByName('BOL_ACEITE').asString = 'S' then
            Aceite                        := atSim else
            Aceite                        := atNao;
         DataProcessamento                := Now;
         EspecieDoc                       := dmFinanceiro.qryAux.FieldByName('BOL_ESPECIEDOC').asString;
         EspecieMod                       := dmFinanceiro.qryAux.Fieldbyname('BOL_ESPECIEMOD').asString;
         Carteira                         := dmFinanceiro.qryAux.FieldByName('BOL_CARTEIRA').asString;
         Vencimento                       := dmFinanceiro.rxSelecDTVENCTO.AsDatetime;
         DataDocumento                    := dmFinanceiro.rxSelecDTEMISSAO.AsDateTime;
         NumeroDocumento                  := dmFinanceiro.rxSelecDOCUMENTO.AsString;
         NossoNumero                      := dmFinanceiro.rxselecNOSSONUMERO.AsString;
         ValorDocumento                   := dmFinanceiro.rxSelecVLRINI.AsFloat;
         if dmFinanceiro.qryAux2.FieldByName('CNPJ').asString <> '' then
         begin
            Sacado.CNPJCPF                := dmFinanceiro.qryAux2.FieldByName('CNPJ').asString;
            Sacado.Pessoa                 := pJuridica;
         end
         else
         begin
            Sacado.CNPJCPF                := dmFinanceiro.qryAux2.FieldByName('CPF').asString;
            Sacado.Pessoa                 := pFisica;
         end;
         Sacado.NomeSacado                := dmFinanceiro.qryAux2.FieldByName('RAZAO').asString;
         Sacado.Logradouro                := dmFinanceiro.qryAux2.FieldByName('ENDERECO').asString;
         Sacado.Numero                    := dmFinanceiro.qryAux2.FieldByName('NUM').asString;
         Sacado.Bairro                    := dmFinanceiro.qryAux2.FieldByName('BAIRRO').asString;
         Sacado.Cidade                    := dmFinanceiro.qryAux2.FieldByName('CIDADE').asString;
         Sacado.UF                        := dmFinanceiro.qryAux2.FieldByName('UF').asString;
         Sacado.CEP                       := dmFinanceiro.qryAux2.FieldByName('CEP').asString;
         LocalPagamento                   := dmFinanceiro.qryAux.FieldByName('BOL_LOCALPAGTO').asString;
         ValorMoraJuros                   := (((dmFinanceiro.qryAux.FieldByName('BOL_PERCJUROS').AsFloat/30)/100) * dmFinanceiro.rxSelecVLRINI.AsFloat);
         ValorDesconto                    := dmFinanceiro.rxSelecVLRDESC.AsFloat;
         ValorAbatimento                  := 0;
         DataMoraJuros                    := 0;
         DataDesconto                     := 0;
         DataAbatimento                   := 0;
         DataProtesto                     := (dmFinanceiro.rxSelecDTVENCTO.AsDateTIme+dmFinanceiro.qryAux.FieldByName('BOL_DIASCARENCIA').AsInteger) + dmFinanceiro.qryAux.FieldByName('BOL_DIASPROTESTO').AsInteger;
         PercentualMulta                  := dmFinanceiro.qryAux.FieldByName('BOL_PERCJUROS').AsFloat;
         Mensagem.Add(dmFinanceiro.qryAux.FieldByName('BOL_INST1').asString);
         Mensagem.Add(dmFinanceiro.qryAux.FieldByName('BOL_INST2').asString);
         Mensagem.Add(dmFinanceiro.qryAux.FieldByName('BOL_INST3').asString);
         Mensagem.Add(dmFinanceiro.qryAux.FieldByName('BOL_INST4').asString);
         OcorrenciaOriginal.Tipo          := toRemessaRegistrar;
         dmFinanceiro.ACBrBoleto1.AdicionarMensagensPadroes(Titulo, Mensagem);
      end;
      dmfinanceiro.rxSelec.NExt;
   end;
   dmFinanceiro.ACBrBoleto1.Imprimir;
/////
end;

end.
