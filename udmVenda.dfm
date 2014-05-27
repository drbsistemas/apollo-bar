object dmVenda: TdmVenda
  OldCreateOrder = False
  Left = 401
  Top = 223
  Height = 216
  Width = 337
  object qryVendas: TSQLDataSet
    CommandText = 
      'select A.*, B.RAZAO, C.NOMEVENDEDOR'#13#10'from venda A '#13#10'left join CL' +
      'IENTES B on A.IDCLIE=B.IDCLIE'#13#10'left join VENDEDOR C on A.IDVENDE' +
      'DOR=C.IDVEND'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmCad.SQLCon
    Left = 232
    object qryVendasIDVENDA: TIntegerField
      FieldName = 'IDVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVendasIDCLIE: TIntegerField
      FieldName = 'IDCLIE'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasDTVENDA: TSQLTimeStampField
      FieldName = 'DTVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasVLRDESC: TFloatField
      FieldName = 'VLRDESC'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasTOTAL: TFloatField
      FieldName = 'TOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasIDVENDEDOR: TIntegerField
      FieldName = 'IDVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasUSUARIO: TStringField
      FieldName = 'USUARIO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qryVendasIDMESA: TIntegerField
      FieldName = 'IDMESA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 5000
    end
    object qryVendasSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qryVendasVLRCOMISSAO: TFloatField
      FieldName = 'VLRCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasALIQCOMISSAO: TFloatField
      FieldName = 'ALIQCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasVLRICMS: TFloatField
      FieldName = 'VLRICMS'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasIDENTREGA: TIntegerField
      FieldName = 'IDENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasRAZAO: TStringField
      FieldName = 'RAZAO'
      ProviderFlags = []
      Size = 200
    end
    object qryVendasVLRSERVICO: TFloatField
      FieldName = 'VLRSERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasNOMEVENDEDOR: TStringField
      FieldName = 'NOMEVENDEDOR'
      ProviderFlags = []
      Size = 100
    end
  end
  object dspVendas: TDataSetProvider
    DataSet = qryVendas
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspVendasGetTableName
    Left = 232
    Top = 41
  end
  object cdsVendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendas'
    AfterInsert = cdsVendasAfterInsert
    Left = 232
    Top = 83
    object cdsVendasIDVENDA: TIntegerField
      FieldName = 'IDVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsVendasIDCLIE: TIntegerField
      FieldName = 'IDCLIE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasDTVENDA: TSQLTimeStampField
      FieldName = 'DTVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsVendasVLRDESC: TFloatField
      FieldName = 'VLRDESC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsVendasTOTAL: TFloatField
      FieldName = 'TOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsVendasIDVENDEDOR: TIntegerField
      FieldName = 'IDVENDEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasUSUARIO: TStringField
      FieldName = 'USUARIO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsVendasIDMESA: TIntegerField
      FieldName = 'IDMESA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 5000
    end
    object cdsVendasSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsVendasVLRCOMISSAO: TFloatField
      FieldName = 'VLRCOMISSAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsVendasALIQCOMISSAO: TFloatField
      FieldName = 'ALIQCOMISSAO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsVendasALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsVendasVLRICMS: TFloatField
      FieldName = 'VLRICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsVendasIDENTREGA: TIntegerField
      FieldName = 'IDENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasRAZAO: TStringField
      FieldName = 'RAZAO'
      ProviderFlags = []
      Size = 200
    end
    object cdsVendasVLRSERVICO: TFloatField
      FieldName = 'VLRSERVICO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsVendasNOMEVENDEDOR: TStringField
      FieldName = 'NOMEVENDEDOR'
      Size = 100
    end
  end
  object dsVendas: TDataSource
    DataSet = cdsVendas
    Left = 232
    Top = 126
  end
  object qryAux: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmCad.SQLCon
    Left = 38
    Top = 2
  end
  object qryGen: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmCad.SQLCon
    Left = 6
    Top = 2
  end
  object qryAux2: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmCad.SQLCon
    Left = 70
    Top = 2
  end
  object qryAux3: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmCad.SQLCon
    Left = 103
    Top = 2
  end
  object qryItVenda: TSQLDataSet
    CommandText = 
      'select A.*, B.REFPROD, MARCAPROD, B.UNPROD '#13#10'from ITEMVENDA A'#13#10'l' +
      'eft join PRODUTO B on A.IDPROD=B.IDPROD'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmCad.SQLCon
    Left = 264
    object qryItVendaIDITVENDA: TIntegerField
      FieldName = 'IDITVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItVendaIDVENDA: TIntegerField
      FieldName = 'IDVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryItVendaIDPROD: TIntegerField
      FieldName = 'IDPROD'
      ProviderFlags = [pfInUpdate]
    end
    object qryItVendaPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object qryItVendaQTDE: TFloatField
      FieldName = 'QTDE'
      ProviderFlags = [pfInUpdate]
    end
    object qryItVendaVLRUNIT: TFloatField
      FieldName = 'VLRUNIT'
      ProviderFlags = [pfInUpdate]
    end
    object qryItVendaVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object qryItVendaALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      ProviderFlags = [pfInUpdate]
    end
    object qryItVendaVLRICMS: TFloatField
      FieldName = 'VLRICMS'
      ProviderFlags = [pfInUpdate]
    end
    object qryItVendaINFADICIONAL: TStringField
      FieldName = 'INFADICIONAL'
      ProviderFlags = [pfInUpdate]
      Size = 2000
    end
    object qryItVendaVLRCUSTO: TFloatField
      FieldName = 'VLRCUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object qryItVendaVLRDESC: TFloatField
      FieldName = 'VLRDESC'
      ProviderFlags = [pfInUpdate]
    end
    object qryItVendaVLRDVV: TFloatField
      FieldName = 'VLRDVV'
      ProviderFlags = [pfInUpdate]
    end
    object qryItVendaSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qryItVendaREFPROD: TStringField
      FieldName = 'REFPROD'
      ProviderFlags = []
      Size = 50
    end
    object qryItVendaMARCAPROD: TStringField
      FieldName = 'MARCAPROD'
      ProviderFlags = []
      Size = 50
    end
    object qryItVendaUNPROD: TStringField
      FieldName = 'UNPROD'
      ProviderFlags = []
      Size = 5
    end
  end
  object dspItVenda: TDataSetProvider
    DataSet = qryItVenda
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspItVendaGetTableName
    Left = 264
    Top = 41
  end
  object cdsitVenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItVenda'
    AfterInsert = cdsitVendaAfterInsert
    Left = 264
    Top = 83
    object cdsitVendaIDITVENDA: TIntegerField
      FieldName = 'IDITVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsitVendaIDVENDA: TIntegerField
      FieldName = 'IDVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitVendaIDPROD: TIntegerField
      FieldName = 'IDPROD'
      ProviderFlags = [pfInUpdate]
    end
    object cdsitVendaPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cdsitVendaQTDE: TFloatField
      FieldName = 'QTDE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsitVendaVLRUNIT: TFloatField
      FieldName = 'VLRUNIT'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsitVendaVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsitVendaALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsitVendaVLRICMS: TFloatField
      FieldName = 'VLRICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsitVendaINFADICIONAL: TStringField
      FieldName = 'INFADICIONAL'
      ProviderFlags = [pfInUpdate]
      Size = 2000
    end
    object cdsitVendaVLRCUSTO: TFloatField
      FieldName = 'VLRCUSTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsitVendaVLRDESC: TFloatField
      FieldName = 'VLRDESC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsitVendaVLRDVV: TFloatField
      FieldName = 'VLRDVV'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsitVendaREFPROD: TStringField
      FieldName = 'REFPROD'
      ProviderFlags = []
      Size = 50
    end
    object cdsitVendaMARCAPROD: TStringField
      FieldName = 'MARCAPROD'
      ProviderFlags = []
      Size = 50
    end
    object cdsitVendaUNPROD: TStringField
      FieldName = 'UNPROD'
      ProviderFlags = []
      Size = 5
    end
    object cdsitVendaSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object dsItVenda: TDataSource
    DataSet = cdsitVenda
    Left = 264
    Top = 126
  end
  object dspAux: TDataSetProvider
    DataSet = qryAux
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 38
    Top = 46
  end
  object dspAux2: TDataSetProvider
    DataSet = qryAux2
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 72
    Top = 46
  end
  object dspAux3: TDataSetProvider
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 104
    Top = 46
  end
  object cdsAux: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAux'
    Left = 38
    Top = 88
  end
  object cdsAux2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAux2'
    Left = 72
    Top = 88
  end
  object cdsAux3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAux3'
    Left = 105
    Top = 88
  end
end
