object dmFinanceiro: TdmFinanceiro
  OldCreateOrder = False
  Left = 288
  Top = 276
  Height = 273
  Width = 395
  object qryContas: TSQLDataSet
    CommandText = 
      'SELECT A.*, B.RAZAO, B.CNPJ, B.CPF,'#13#10'C.descricao CCUSTO, D.DESCR' +
      'ICAO FPAGTO FROM CONTA A'#13#10'left join CLIENTES B on A.IDCLIE=B.IDC' +
      'LIE'#13#10'left join GENERICA C on A.IDCCUSTO = C.IDGENERICA and C.TAB' +
      'ELA= '#39'CCUSTO'#39#13#10'left join GENERICA D on A.idfpagto = D.idgenerica' +
      ' and D.TABELA= '#39'FPAGTO'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmCad.SQLCon
    Left = 145
    Top = 2
    object qryContasIDCONTA: TIntegerField
      FieldName = 'IDCONTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryContasIDCLIE: TIntegerField
      FieldName = 'IDCLIE'
      ProviderFlags = [pfInUpdate]
    end
    object qryContasIDCCUSTO: TIntegerField
      FieldName = 'IDCCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object qryContasIDCARTAO: TIntegerField
      FieldName = 'IDCARTAO'
      ProviderFlags = [pfInUpdate]
    end
    object qryContasIDFPAGTO: TIntegerField
      FieldName = 'IDFPAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object qryContasIDLOTE: TIntegerField
      FieldName = 'IDLOTE'
      ProviderFlags = [pfInUpdate]
    end
    object qryContasIDPAI: TIntegerField
      FieldName = 'IDPAI'
      ProviderFlags = [pfInUpdate]
    end
    object qryContasIDORIGEM: TIntegerField
      FieldName = 'IDORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object qryContasIDPLANOCTA: TIntegerField
      FieldName = 'IDPLANOCTA'
      ProviderFlags = [pfInUpdate]
    end
    object qryContasDIASATRASO: TIntegerField
      FieldName = 'DIASATRASO'
      ProviderFlags = [pfInUpdate]
    end
    object qryContasDTEMISSAO: TSQLTimeStampField
      FieldName = 'DTEMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object qryContasDTLANCTO: TSQLTimeStampField
      FieldName = 'DTLANCTO'
      ProviderFlags = [pfInUpdate]
    end
    object qryContasDTVENCTO: TSQLTimeStampField
      FieldName = 'DTVENCTO'
      ProviderFlags = [pfInUpdate]
    end
    object qryContasDTBAIXA: TSQLTimeStampField
      FieldName = 'DTBAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object qryContasVLRINI: TFloatField
      FieldName = 'VLRINI'
      ProviderFlags = [pfInUpdate]
    end
    object qryContasVLRJUROS: TFloatField
      FieldName = 'VLRJUROS'
      ProviderFlags = [pfInUpdate]
    end
    object qryContasVLRMULTA: TFloatField
      FieldName = 'VLRMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object qryContasVLRDESC: TFloatField
      FieldName = 'VLRDESC'
      ProviderFlags = [pfInUpdate]
    end
    object qryContasVLRBRUTO: TFloatField
      FieldName = 'VLRBRUTO'
      ProviderFlags = [pfInUpdate]
    end
    object qryContasVLRPAGO: TFloatField
      FieldName = 'VLRPAGO'
      ProviderFlags = [pfInUpdate]
    end
    object qryContasPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate]
    end
    object qryContasDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qryContasTIPOCONTA: TStringField
      FieldName = 'TIPOCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryContasSTATUSCONTA: TStringField
      FieldName = 'STATUSCONTA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qryContasORIGEM: TStringField
      FieldName = 'ORIGEM'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qryContasRAZAO: TStringField
      FieldName = 'RAZAO'
      ProviderFlags = []
      Size = 200
    end
    object qryContasCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = []
      Size = 25
    end
    object qryContasCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = []
    end
    object qryContasCCUSTO: TStringField
      FieldName = 'CCUSTO'
      ProviderFlags = []
      Size = 100
    end
    object qryContasFPAGTO: TStringField
      FieldName = 'FPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object qryContasHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object qryContasOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
  end
  object dspContas: TDataSetProvider
    DataSet = qryContas
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspContasGetTableName
    Left = 145
    Top = 46
  end
  object cdsContas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContas'
    AfterInsert = cdsContasAfterInsert
    Left = 145
    Top = 90
    object cdsContasIDCONTA: TIntegerField
      FieldName = 'IDCONTA'
      Required = True
    end
    object cdsContasIDCLIE: TIntegerField
      FieldName = 'IDCLIE'
    end
    object cdsContasIDCCUSTO: TIntegerField
      FieldName = 'IDCCUSTO'
    end
    object cdsContasIDCARTAO: TIntegerField
      FieldName = 'IDCARTAO'
    end
    object cdsContasIDFPAGTO: TIntegerField
      FieldName = 'IDFPAGTO'
    end
    object cdsContasIDLOTE: TIntegerField
      FieldName = 'IDLOTE'
    end
    object cdsContasIDPAI: TIntegerField
      FieldName = 'IDPAI'
    end
    object cdsContasIDORIGEM: TIntegerField
      FieldName = 'IDORIGEM'
    end
    object cdsContasIDPLANOCTA: TIntegerField
      FieldName = 'IDPLANOCTA'
    end
    object cdsContasDIASATRASO: TIntegerField
      FieldName = 'DIASATRASO'
    end
    object cdsContasDTEMISSAO: TSQLTimeStampField
      FieldName = 'DTEMISSAO'
    end
    object cdsContasDTLANCTO: TSQLTimeStampField
      FieldName = 'DTLANCTO'
    end
    object cdsContasDTVENCTO: TSQLTimeStampField
      FieldName = 'DTVENCTO'
    end
    object cdsContasDTBAIXA: TSQLTimeStampField
      FieldName = 'DTBAIXA'
    end
    object cdsContasVLRINI: TFloatField
      FieldName = 'VLRINI'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsContasVLRJUROS: TFloatField
      FieldName = 'VLRJUROS'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsContasVLRMULTA: TFloatField
      FieldName = 'VLRMULTA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsContasVLRDESC: TFloatField
      FieldName = 'VLRDESC'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsContasVLRBRUTO: TFloatField
      FieldName = 'VLRBRUTO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsContasVLRPAGO: TFloatField
      FieldName = 'VLRPAGO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsContasPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object cdsContasDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 50
    end
    object cdsContasTIPOCONTA: TStringField
      FieldName = 'TIPOCONTA'
      Size = 1
    end
    object cdsContasSTATUSCONTA: TStringField
      FieldName = 'STATUSCONTA'
      Size = 30
    end
    object cdsContasORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 30
    end
    object cdsContasHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 500
    end
    object cdsContasOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdsContasRAZAO: TStringField
      FieldName = 'RAZAO'
      Size = 200
    end
    object cdsContasCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object cdsContasCPF: TStringField
      FieldName = 'CPF'
    end
    object cdsContasCCUSTO: TStringField
      FieldName = 'CCUSTO'
      Size = 100
    end
    object cdsContasFPAGTO: TStringField
      FieldName = 'FPAGTO'
      Size = 100
    end
  end
  object qryGen: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmCad.SQLCon
    Left = 5
    Top = 2
  end
  object qryAux: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmCad.SQLCon
    Left = 35
    Top = 2
  end
  object dsContas: TDataSource
    DataSet = cdsContas
    Left = 145
    Top = 134
  end
  object qryCaixa: TSQLDataSet
    CommandText = 
      'SELECT A.*, B.BANCO FROM CAIXA A LEFT JOIN BANCO B on A.IDBANCO ' +
      '= B.IDBANCO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmCad.SQLCon
    Left = 184
    Top = 2
    object qryCaixaIDCAIXA: TIntegerField
      FieldName = 'IDCAIXA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCaixaIDBANCO: TIntegerField
      FieldName = 'IDBANCO'
      ProviderFlags = [pfInUpdate]
    end
    object qryCaixaAGENCIA: TStringField
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qryCaixaAGENCIA_DIG: TIntegerField
      FieldName = 'AGENCIA_DIG'
      ProviderFlags = [pfInUpdate]
    end
    object qryCaixaCONTA: TStringField
      FieldName = 'CONTA'
      ProviderFlags = [pfInUpdate]
    end
    object qryCaixaCONTA_DIG: TIntegerField
      FieldName = 'CONTA_DIG'
      ProviderFlags = [pfInUpdate]
    end
    object qryCaixaTITULAR: TStringField
      FieldName = 'TITULAR'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object qryCaixaDTABERTURA: TSQLTimeStampField
      FieldName = 'DTABERTURA'
      ProviderFlags = [pfInUpdate]
    end
    object qryCaixaDTFECHADO: TSQLTimeStampField
      FieldName = 'DTFECHADO'
      ProviderFlags = [pfInUpdate]
    end
    object qryCaixaSALDOCAIXA: TFloatField
      FieldName = 'SALDOCAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object qryCaixaSALDOCONCILIADO: TFloatField
      FieldName = 'SALDOCONCILIADO'
      ProviderFlags = [pfInUpdate]
    end
    object qryCaixaTIPOCAIXA: TStringField
      FieldName = 'TIPOCAIXA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryCaixaBANCO: TStringField
      FieldName = 'BANCO'
      ProviderFlags = []
      Size = 200
    end
    object qryCaixaBOL_ESPECIEDOC: TStringField
      FieldName = 'BOL_ESPECIEDOC'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object qryCaixaBOL_ACEITE: TStringField
      FieldName = 'BOL_ACEITE'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object qryCaixaBOL_NOSSONUMERO: TIntegerField
      FieldName = 'BOL_NOSSONUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object qryCaixaBOL_LOCALPAGTO: TStringField
      FieldName = 'BOL_LOCALPAGTO'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object qryCaixaBOL_PERCJUROS: TFloatField
      FieldName = 'BOL_PERCJUROS'
      ProviderFlags = [pfInUpdate]
    end
    object qryCaixaBOL_PERCMULTA: TFloatField
      FieldName = 'BOL_PERCMULTA'
      ProviderFlags = [pfInUpdate]
    end
    object qryCaixaBOL_DIASPROTESTO: TIntegerField
      FieldName = 'BOL_DIASPROTESTO'
      ProviderFlags = [pfInUpdate]
    end
    object qryCaixaBOL_INST1: TStringField
      FieldName = 'BOL_INST1'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object qryCaixaBOL_INST2: TStringField
      FieldName = 'BOL_INST2'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object qryCaixaBOL_INST3: TStringField
      FieldName = 'BOL_INST3'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object qryCaixaBOL_INST4: TStringField
      FieldName = 'BOL_INST4'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object qryCaixaBOL_TAMNOSSONUMERO: TStringField
      FieldName = 'BOL_TAMNOSSONUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object qryCaixaBOL_CARTEIRA: TStringField
      FieldName = 'BOL_CARTEIRA'
      ProviderFlags = [pfInUpdate]
    end
    object qryCaixaBOL_CODCEDENTE: TStringField
      FieldName = 'BOL_CODCEDENTE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qryCaixaBOL_ESPECIEMOD: TStringField
      FieldName = 'BOL_ESPECIEMOD'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qryCaixaBOL_DIASCARENCIA: TIntegerField
      FieldName = 'BOL_DIASCARENCIA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspCaixa: TDataSetProvider
    DataSet = qryCaixa
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspCaixaGetTableName
    Left = 184
    Top = 46
  end
  object cdsCaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCaixa'
    AfterInsert = cdsCaixaAfterInsert
    Left = 184
    Top = 90
    object cdsCaixaIDCAIXA: TIntegerField
      FieldName = 'IDCAIXA'
      Required = True
    end
    object cdsCaixaIDBANCO: TIntegerField
      FieldName = 'IDBANCO'
    end
    object cdsCaixaAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object cdsCaixaAGENCIA_DIG: TIntegerField
      FieldName = 'AGENCIA_DIG'
    end
    object cdsCaixaCONTA: TStringField
      FieldName = 'CONTA'
    end
    object cdsCaixaCONTA_DIG: TIntegerField
      FieldName = 'CONTA_DIG'
    end
    object cdsCaixaTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 150
    end
    object cdsCaixaDTABERTURA: TSQLTimeStampField
      FieldName = 'DTABERTURA'
    end
    object cdsCaixaDTFECHADO: TSQLTimeStampField
      FieldName = 'DTFECHADO'
    end
    object cdsCaixaSALDOCAIXA: TFloatField
      FieldName = 'SALDOCAIXA'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsCaixaSALDOCONCILIADO: TFloatField
      FieldName = 'SALDOCONCILIADO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsCaixaTIPOCAIXA: TStringField
      FieldName = 'TIPOCAIXA'
      Size = 1
    end
    object cdsCaixaBANCO: TStringField
      FieldName = 'BANCO'
      Size = 200
    end
    object cdsCaixaBOL_ESPECIEDOC: TStringField
      FieldName = 'BOL_ESPECIEDOC'
      Size = 5
    end
    object cdsCaixaBOL_ACEITE: TStringField
      FieldName = 'BOL_ACEITE'
      Size = 5
    end
    object cdsCaixaBOL_NOSSONUMERO: TIntegerField
      FieldName = 'BOL_NOSSONUMERO'
    end
    object cdsCaixaBOL_LOCALPAGTO: TStringField
      FieldName = 'BOL_LOCALPAGTO'
      Size = 300
    end
    object cdsCaixaBOL_PERCJUROS: TFloatField
      FieldName = 'BOL_PERCJUROS'
    end
    object cdsCaixaBOL_PERCMULTA: TFloatField
      FieldName = 'BOL_PERCMULTA'
    end
    object cdsCaixaBOL_DIASPROTESTO: TIntegerField
      FieldName = 'BOL_DIASPROTESTO'
    end
    object cdsCaixaBOL_INST1: TStringField
      FieldName = 'BOL_INST1'
      Size = 300
    end
    object cdsCaixaBOL_INST2: TStringField
      FieldName = 'BOL_INST2'
      Size = 300
    end
    object cdsCaixaBOL_INST3: TStringField
      FieldName = 'BOL_INST3'
      Size = 300
    end
    object cdsCaixaBOL_INST4: TStringField
      FieldName = 'BOL_INST4'
      Size = 300
    end
    object cdsCaixaBOL_TAMNOSSONUMERO: TStringField
      FieldName = 'BOL_TAMNOSSONUMERO'
      Size = 5
    end
    object cdsCaixaBOL_CARTEIRA: TStringField
      FieldName = 'BOL_CARTEIRA'
    end
    object cdsCaixaBOL_CODCEDENTE: TStringField
      FieldName = 'BOL_CODCEDENTE'
      Size = 10
    end
    object cdsCaixaBOL_ESPECIEMOD: TStringField
      FieldName = 'BOL_ESPECIEMOD'
      Size = 10
    end
    object cdsCaixaBOL_DIASCARENCIA: TIntegerField
      FieldName = 'BOL_DIASCARENCIA'
    end
  end
  object dsCaixa: TDataSource
    DataSet = cdsCaixa
    Left = 184
    Top = 134
  end
  object qryItCaixa: TSQLDataSet
    CommandText = 'select * from ITEMCAIXA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmCad.SQLCon
    Left = 216
    Top = 2
    object qryItCaixaIDITEMCAIXA: TIntegerField
      FieldName = 'IDITEMCAIXA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItCaixaIDCAIXA: TIntegerField
      FieldName = 'IDCAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object qryItCaixaDOCUMENTO: TFMTBCDField
      FieldName = 'DOCUMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 0
    end
    object qryItCaixaCREDITO: TFloatField
      FieldName = 'CREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object qryItCaixaDEBITO: TFloatField
      FieldName = 'DEBITO'
      ProviderFlags = [pfInUpdate]
    end
    object qryItCaixaSALDOITEM: TFloatField
      FieldName = 'SALDOITEM'
      ProviderFlags = [pfInUpdate]
    end
    object qryItCaixaDATAITEM: TSQLTimeStampField
      FieldName = 'DATAITEM'
      ProviderFlags = [pfInUpdate]
    end
    object qryItCaixaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object qryItCaixaDATACONCILIADO: TSQLTimeStampField
      FieldName = 'DATACONCILIADO'
      ProviderFlags = [pfInUpdate]
    end
    object qryItCaixaIDPLANOCTA: TIntegerField
      FieldName = 'IDPLANOCTA'
      ProviderFlags = [pfInUpdate]
    end
    object qryItCaixaIDLOTE: TIntegerField
      FieldName = 'IDLOTE'
      ProviderFlags = [pfInUpdate]
    end
    object qryItCaixaUSUARIO: TStringField
      FieldName = 'USUARIO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qryItCaixaIDFPAGTO: TIntegerField
      FieldName = 'IDFPAGTO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspItCaixa: TDataSetProvider
    DataSet = qryItCaixa
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspItCaixaGetTableName
    Left = 216
    Top = 45
  end
  object cdsItCaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItCaixa'
    AfterInsert = cdsItCaixaAfterInsert
    Left = 216
    Top = 88
    object cdsItCaixaIDITEMCAIXA: TIntegerField
      FieldName = 'IDITEMCAIXA'
      Required = True
    end
    object cdsItCaixaIDCAIXA: TIntegerField
      FieldName = 'IDCAIXA'
    end
    object cdsItCaixaDOCUMENTO: TFMTBCDField
      FieldName = 'DOCUMENTO'
      Precision = 15
      Size = 0
    end
    object cdsItCaixaCREDITO: TFloatField
      FieldName = 'CREDITO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsItCaixaDEBITO: TFloatField
      FieldName = 'DEBITO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsItCaixaSALDOITEM: TFloatField
      FieldName = 'SALDOITEM'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsItCaixaDATAITEM: TSQLTimeStampField
      FieldName = 'DATAITEM'
    end
    object cdsItCaixaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object cdsItCaixaDATACONCILIADO: TSQLTimeStampField
      FieldName = 'DATACONCILIADO'
    end
    object cdsItCaixaIDPLANOCTA: TIntegerField
      FieldName = 'IDPLANOCTA'
    end
    object cdsItCaixaIDLOTE: TIntegerField
      FieldName = 'IDLOTE'
    end
    object cdsItCaixaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
    object cdsItCaixaIDFPAGTO: TIntegerField
      FieldName = 'IDFPAGTO'
    end
  end
  object dsItCaixa: TDataSource
    DataSet = cdsItCaixa
    Left = 216
    Top = 134
  end
  object rxSelec: TRxMemoryData
    FieldDefs = <
      item
        Name = 'IDCONTA'
        DataType = ftInteger
      end
      item
        Name = 'IDCLIE'
        DataType = ftInteger
      end
      item
        Name = 'IDPLANO'
        DataType = ftInteger
      end
      item
        Name = 'IDCCUSTO'
        DataType = ftInteger
      end
      item
        Name = 'IDFPAGTO'
        DataType = ftInteger
      end
      item
        Name = 'DOCUMENTO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOMECLIE'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'DTVENCTO'
        DataType = ftDateTime
      end
      item
        Name = 'DTEMISSAO'
        DataType = ftDateTime
      end
      item
        Name = 'VLRINI'
        DataType = ftFloat
      end
      item
        Name = 'VLRJUROS'
        DataType = ftFloat
      end
      item
        Name = 'VLRMULTA'
        DataType = ftFloat
      end
      item
        Name = 'VLRDESC'
        DataType = ftFloat
      end
      item
        Name = 'VLRBRUTO'
        DataType = ftFloat
      end
      item
        Name = 'DIASATRASO'
        DataType = ftInteger
      end
      item
        Name = 'HISTORICO'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'STATUS'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'VLRPAGO'
        DataType = ftFloat
      end
      item
        Name = 'NOSSONUMERO'
        DataType = ftString
        Size = 50
      end>
    Left = 114
    Top = 90
    object rxSelecIDCONTA: TIntegerField
      FieldName = 'IDCONTA'
    end
    object rxSelecIDCLIE: TIntegerField
      FieldName = 'IDCLIE'
    end
    object rxSelecIDPLANO: TIntegerField
      FieldName = 'IDPLANO'
    end
    object rxSelecIDCCUSTO: TIntegerField
      FieldName = 'IDCCUSTO'
    end
    object rxSelecIDFPAGTO: TIntegerField
      FieldName = 'IDFPAGTO'
    end
    object rxSelecDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 50
    end
    object rxSelecNOMECLIE: TStringField
      FieldName = 'NOMECLIE'
      Size = 200
    end
    object rxSelecDTVENCTO: TDateTimeField
      FieldName = 'DTVENCTO'
    end
    object rxSelecDTEMISSAO: TDateTimeField
      FieldName = 'DTEMISSAO'
    end
    object rxSelecVLRINI: TFloatField
      FieldName = 'VLRINI'
      DisplayFormat = '###,###,##0.00'
    end
    object rxSelecVLRJUROS: TFloatField
      FieldName = 'VLRJUROS'
      DisplayFormat = '###,###,##0.00'
    end
    object rxSelecVLRMULTA: TFloatField
      FieldName = 'VLRMULTA'
      DisplayFormat = '###,###,##0.00'
    end
    object rxSelecVLRDESC: TFloatField
      FieldName = 'VLRDESC'
      DisplayFormat = '###,###,##0.00'
    end
    object rxSelecVLRBRUTO: TFloatField
      FieldName = 'VLRBRUTO'
      DisplayFormat = '###,###,##0.00'
    end
    object rxSelecDIASATRASO: TIntegerField
      FieldName = 'DIASATRASO'
    end
    object rxSelecHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 500
    end
    object rxSelecSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 30
    end
    object rxSelecVLRPAGO: TFloatField
      FieldName = 'VLRPAGO'
      DisplayFormat = '###,###,##0,00'
    end
    object rxSelecNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 50
    end
  end
  object dsSelec: TDataSource
    DataSet = rxSelec
    Left = 114
    Top = 134
  end
  object dspAux: TDataSetProvider
    DataSet = qryAux
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 35
    Top = 44
  end
  object cdsAux: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAux'
    Left = 35
    Top = 88
  end
  object dsAux: TDataSource
    DataSet = cdsAux
    Left = 35
    Top = 136
  end
  object ACBrBoletoFCFortes1: TACBrBoletoFCFortes
    ACBrBoleto = ACBrBoleto1
    LayOut = lPadraoEntrega
    SoftwareHouse = 'DRB - Sistemas de Informa'#231#227'o (44) 9974-4442'
    Left = 288
    Top = 64
  end
  object ACBrBoleto1: TACBrBoleto
    Banco.TamanhoMaximoNossoNum = 10
    Banco.TipoCobranca = cobNenhum
    Cedente.TipoInscricao = pJuridica
    NumeroArquivo = 0
    LayoutRemessa = c240
    ACBrBoletoFC = ACBrBoletoFCFortes1
    Left = 288
    Top = 24
  end
  object qryAux2: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmCad.SQLCon
    Left = 75
    Top = 2
  end
  object dspAux2: TDataSetProvider
    DataSet = qryAux2
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 75
    Top = 44
  end
  object cdsAux2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAux'
    Left = 75
    Top = 88
  end
  object dsAux2: TDataSource
    DataSet = cdsAux2
    Left = 75
    Top = 136
  end
end
