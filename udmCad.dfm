object dmCad: TdmCad
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 427
  Top = 143
  Height = 272
  Width = 574
  object SQLCon: TSQLConnection
    ConnectionName = 'IBConnection'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=D:\wDRB\Software\Apollo\dati\APOLLO.FDB'
      'RoleName=RoleName'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Left = 8
    Top = 1
  end
  object qryAux: TSQLDataSet
    CommandText = 'select * from clientes'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLCon
    Left = 78
    Top = 1
  end
  object qryGen: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLCon
    Left = 43
    Top = 1
  end
  object qryItemConf: TSQLDataSet
    CommandText = 'select * from itemconf order by resumoconf '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLCon
    Left = 214
    Top = 8
    object qryItemConfRESUMOCONF: TStringField
      FieldName = 'RESUMOCONF'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object qryItemConfVALORCONF: TStringField
      FieldName = 'VALORCONF'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qryItemConfMODULOCONF: TStringField
      FieldName = 'MODULOCONF'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qryItemConfIDITEMCONF: TIntegerField
      FieldName = 'IDITEMCONF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItemConfCAMPO: TStringField
      FieldName = 'CAMPO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qryItemConfTIPOINFO: TStringField
      FieldName = 'TIPOINFO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dspItemConf: TDataSetProvider
    DataSet = qryItemConf
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspItemConfGetTableName
    Left = 214
    Top = 51
  end
  object cdsItemConf: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItemConf'
    Left = 214
    Top = 94
    object cdsItemConfRESUMOCONF: TStringField
      FieldName = 'RESUMOCONF'
      Size = 150
    end
    object cdsItemConfVALORCONF: TStringField
      FieldName = 'VALORCONF'
      Size = 3
    end
    object cdsItemConfMODULOCONF: TStringField
      FieldName = 'MODULOCONF'
      Size = 30
    end
    object cdsItemConfIDITEMCONF: TIntegerField
      FieldName = 'IDITEMCONF'
      Required = True
    end
    object cdsItemConfCAMPO: TStringField
      FieldName = 'CAMPO'
      Size = 50
    end
    object cdsItemConfTIPOINFO: TStringField
      FieldName = 'TIPOINFO'
      Size = 1
    end
  end
  object dsItemConf: TDataSource
    DataSet = cdsItemConf
    Left = 214
    Top = 138
  end
  object qryClie: TSQLDataSet
    CommandText = 'select * from clientes'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLCon
    Left = 244
    Top = 8
    object qryClieIDCLIE: TIntegerField
      FieldName = 'IDCLIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryClieRAZAO: TStringField
      FieldName = 'RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object qryClieENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object qryClieNUM: TStringField
      FieldName = 'NUM'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object qryClieCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object qryClieUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object qryClieBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object qryClieCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '99.999-999;0;_'
      Size = 15
    end
    object qryClieCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object qryClieIE: TStringField
      FieldName = 'IE'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object qryClieFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '(99) 9999-9999;0;_'
      Size = 25
    end
    object qryClieCELULAR: TStringField
      FieldName = 'CELULAR'
      ProviderFlags = [pfInUpdate]
      EditMask = '(99) 9999-9999;0;_'
      Size = 25
    end
    object qryClieEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object qryClieOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object qryClieCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qryClieDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      ProviderFlags = [pfInUpdate]
    end
    object qryClieATIVO: TIntegerField
      FieldName = 'ATIVO'
      ProviderFlags = [pfInUpdate]
    end
    object qryClieCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
    end
    object qryClieRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
    end
    object qryClieFANTASIA: TStringField
      FieldName = 'FANTASIA'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object qryClieTIPOCLIE: TStringField
      FieldName = 'TIPOCLIE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qryCliePESSOA: TStringField
      FieldName = 'PESSOA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryClieDATANASCE: TSQLTimeStampField
      FieldName = 'DATANASCE'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspClie: TDataSetProvider
    DataSet = qryClie
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspClieGetTableName
    Left = 244
    Top = 51
  end
  object cdsClie: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClie'
    AfterInsert = cdsClieAfterInsert
    Left = 244
    Top = 94
    object cdsClieIDCLIE: TIntegerField
      FieldName = 'IDCLIE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClieRAZAO: TStringField
      FieldName = 'RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cdsClieENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cdsClieNUM: TStringField
      FieldName = 'NUM'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsClieCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cdsClieUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsClieBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cdsClieCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '99.999-999;0;_'
      Size = 15
    end
    object cdsClieCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object cdsClieIE: TStringField
      FieldName = 'IE'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object cdsClieFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '(99) 9999-9999;0;_'
      Size = 25
    end
    object cdsClieCELULAR: TStringField
      FieldName = 'CELULAR'
      ProviderFlags = [pfInUpdate]
      EditMask = '(99) 9999-9999;0;_'
      Size = 25
    end
    object cdsClieEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cdsClieOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cdsClieCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsClieDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClieATIVO: TIntegerField
      FieldName = 'ATIVO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClieCPF: TStringField
      FieldName = 'CPF'
      EditMask = '999.999.999-99;0;_'
    end
    object cdsClieRG: TStringField
      FieldName = 'RG'
    end
    object cdsClieFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 200
    end
    object cdsClieTIPOCLIE: TStringField
      FieldName = 'TIPOCLIE'
      Size = 30
    end
    object cdsCliePESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 1
    end
    object cdsClieDATANASCE: TSQLTimeStampField
      FieldName = 'DATANASCE'
    end
  end
  object dsClie: TDataSource
    DataSet = cdsClie
    Left = 244
    Top = 138
  end
  object qryProd: TSQLDataSet
    CommandText = 
      'select A.*, B.RAZAO, C.DESCRICAO GRUPO, D.DESCRICAO SUBGRUPO '#13#10'f' +
      'rom produto A '#13#10'LEFT JOIN CLIENTES B ON A.IDFORNEC=B.IDCLIE '#13#10'LE' +
      'FT JOIN GENERICA C ON A.IDGRUPO=C.IDGENERICA AND C.TABELA='#39'GRUPO' +
      'S'#39#13#10'LEFT JOIN GENERICA D ON A.IDSUBGRUPO=D.IDGENERICA AND D.TABE' +
      'LA='#39'SUBGRUPO'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLCon
    Left = 275
    Top = 8
    object qryProdIDPROD: TIntegerField
      FieldName = 'IDPROD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object qryProdREFPROD: TStringField
      FieldName = 'REFPROD'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qryProdMARCAPROD: TStringField
      FieldName = 'MARCAPROD'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qryProdIDGRUPO: TIntegerField
      FieldName = 'IDGRUPO'
      ProviderFlags = [pfInUpdate]
    end
    object qryProdIDFORNEC: TIntegerField
      FieldName = 'IDFORNEC'
      ProviderFlags = [pfInUpdate]
    end
    object qryProdIDSUBGRUPO: TIntegerField
      FieldName = 'IDSUBGRUPO'
      ProviderFlags = [pfInUpdate]
    end
    object qryProdPRECOCPR: TFloatField
      FieldName = 'PRECOCPR'
      ProviderFlags = [pfInUpdate]
    end
    object qryProdCUSTOCPR: TFloatField
      FieldName = 'CUSTOCPR'
      ProviderFlags = [pfInUpdate]
    end
    object qryProdCUSTO: TFloatField
      FieldName = 'CUSTO'
      ProviderFlags = [pfInUpdate]
    end
    object qryProdESTOQUEDISP: TFloatField
      FieldName = 'ESTOQUEDISP'
      ProviderFlags = [pfInUpdate]
    end
    object qryProdESTOQUETOTAL: TFloatField
      FieldName = 'ESTOQUETOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object qryProdESTOQUEMIN: TFloatField
      FieldName = 'ESTOQUEMIN'
      ProviderFlags = [pfInUpdate]
    end
    object qryProdESTOQUEMAX: TFloatField
      FieldName = 'ESTOQUEMAX'
      ProviderFlags = [pfInUpdate]
    end
    object qryProdDTCADASTRO: TSQLTimeStampField
      FieldName = 'DTCADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object qryProdPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
      ProviderFlags = [pfInUpdate]
    end
    object qryProdPESOLIQ: TFloatField
      FieldName = 'PESOLIQ'
      ProviderFlags = [pfInUpdate]
    end
    object qryProdATIVOPROD: TStringField
      FieldName = 'ATIVOPROD'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryProdMARGEMLUCRO: TFloatField
      FieldName = 'MARGEMLUCRO'
      ProviderFlags = [pfInUpdate]
    end
    object qryProdUNPROD: TStringField
      FieldName = 'UNPROD'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object qryProdHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 10000
    end
    object qryProdFOTOPROD: TStringField
      FieldName = 'FOTOPROD'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object qryProdPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryProdESTOQUEPEDIDO: TFloatField
      FieldName = 'ESTOQUEPEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object qryProdESTOQUEORCAMENTO: TFloatField
      FieldName = 'ESTOQUEORCAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object qryProdALIQCOMISSAO: TFloatField
      FieldName = 'ALIQCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object qryProdPRECOMINIMO: TFloatField
      FieldName = 'PRECOMINIMO'
      ProviderFlags = [pfInUpdate]
    end
    object qryProdDTATUALIZADO: TSQLTimeStampField
      FieldName = 'DTATUALIZADO'
      ProviderFlags = [pfInUpdate]
    end
    object qryProdCODBAR: TStringField
      FieldName = 'CODBAR'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qryProdDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object qryProdRAZAO: TStringField
      FieldName = 'RAZAO'
      ProviderFlags = []
      Size = 200
    end
    object qryProdGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = []
      Size = 100
    end
    object qryProdSUBGRUPO: TStringField
      FieldName = 'SUBGRUPO'
      ProviderFlags = []
      Size = 100
    end
  end
  object dspProd: TDataSetProvider
    DataSet = qryProd
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspProdGetTableName
    Left = 275
    Top = 51
  end
  object cdsProd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProd'
    AfterInsert = cdsProdAfterInsert
    Left = 275
    Top = 94
    object cdsProdIDPROD: TIntegerField
      FieldName = 'IDPROD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cdsProdREFPROD: TStringField
      FieldName = 'REFPROD'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsProdMARCAPROD: TStringField
      FieldName = 'MARCAPROD'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsProdIDGRUPO: TIntegerField
      FieldName = 'IDGRUPO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdIDFORNEC: TIntegerField
      FieldName = 'IDFORNEC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdIDSUBGRUPO: TIntegerField
      FieldName = 'IDSUBGRUPO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdPRECOCPR: TFloatField
      FieldName = 'PRECOCPR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsProdCUSTOCPR: TFloatField
      FieldName = 'CUSTOCPR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsProdCUSTO: TFloatField
      FieldName = 'CUSTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsProdESTOQUEDISP: TFloatField
      FieldName = 'ESTOQUEDISP'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsProdESTOQUETOTAL: TFloatField
      FieldName = 'ESTOQUETOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsProdESTOQUEMIN: TFloatField
      FieldName = 'ESTOQUEMIN'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsProdESTOQUEMAX: TFloatField
      FieldName = 'ESTOQUEMAX'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsProdDTCADASTRO: TSQLTimeStampField
      FieldName = 'DTCADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsProdPESOLIQ: TFloatField
      FieldName = 'PESOLIQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsProdATIVOPROD: TStringField
      FieldName = 'ATIVOPROD'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsProdMARGEMLUCRO: TFloatField
      FieldName = 'MARGEMLUCRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdUNPROD: TStringField
      FieldName = 'UNPROD'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsProdHISTORICO: TStringField
      FieldName = 'HISTORICO'
      ProviderFlags = [pfInUpdate]
      Size = 10000
    end
    object cdsProdFOTOPROD: TStringField
      FieldName = 'FOTOPROD'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cdsProdPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsProdESTOQUEPEDIDO: TFloatField
      FieldName = 'ESTOQUEPEDIDO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsProdESTOQUEORCAMENTO: TFloatField
      FieldName = 'ESTOQUEORCAMENTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsProdALIQCOMISSAO: TFloatField
      FieldName = 'ALIQCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdPRECOMINIMO: TFloatField
      FieldName = 'PRECOMINIMO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsProdDTATUALIZADO: TSQLTimeStampField
      FieldName = 'DTATUALIZADO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdCODBAR: TStringField
      FieldName = 'CODBAR'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsProdDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object cdsProdRAZAO: TStringField
      FieldName = 'RAZAO'
      ProviderFlags = []
      Size = 200
    end
    object cdsProdGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = []
      Size = 100
    end
    object cdsProdSUBGRUPO: TStringField
      FieldName = 'SUBGRUPO'
      ProviderFlags = []
      Size = 100
    end
  end
  object dsProd: TDataSource
    DataSet = cdsProd
    Left = 275
    Top = 138
  end
  object qryGenerico: TSQLDataSet
    CommandText = 'select * from generica'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLCon
    Left = 305
    Top = 8
    object qryGenericoIDGENERICA: TIntegerField
      FieldName = 'IDGENERICA'
      Required = True
    end
    object qryGenericoTABELA: TStringField
      FieldName = 'TABELA'
      Required = True
      Size = 30
    end
    object qryGenericoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object qryGenericoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qryGenericoOBS: TStringField
      FieldName = 'OBS'
      Size = 150
    end
  end
  object dspGenerico: TDataSetProvider
    DataSet = qryGenerico
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAllowCommandText]
    OnGetTableName = dspGenericoGetTableName
    Left = 305
    Top = 51
  end
  object cdsGenerico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGenerico'
    Left = 305
    Top = 94
    object cdsGenericoIDGENERICA: TIntegerField
      FieldName = 'IDGENERICA'
      Required = True
    end
    object cdsGenericoTABELA: TStringField
      FieldName = 'TABELA'
      Required = True
      Size = 30
    end
    object cdsGenericoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsGenericoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsGenericoOBS: TStringField
      FieldName = 'OBS'
      Size = 150
    end
  end
  object dsGenerico: TDataSource
    DataSet = cdsGenerico
    Left = 305
    Top = 138
  end
  object qryEstoque: TSQLDataSet
    CommandText = 
      'select A.*, '#13#10'B.PRODUTO, '#13#10'B.REFPROD, '#13#10'B.MARCAPROD, '#13#10'B.ESTOQUE' +
      'DISP, '#13#10'B.ESTOQUETOTAL, '#13#10'B.UNPROD '#13#10'from Estoque A '#13#10'join PRODU' +
      'TO B on A.IDPROD=B.IDPROD'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLCon
    Left = 336
    Top = 8
    object qryEstoqueIDESTOQUE: TIntegerField
      FieldName = 'IDESTOQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryEstoqueIDPROD: TIntegerField
      FieldName = 'IDPROD'
      ProviderFlags = [pfInUpdate]
    end
    object qryEstoqueENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
    end
    object qryEstoqueSAIDA: TFloatField
      FieldName = 'SAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryEstoqueSALDO: TFloatField
      FieldName = 'SALDO'
      ProviderFlags = [pfInUpdate]
    end
    object qryEstoqueORIGEM: TStringField
      FieldName = 'ORIGEM'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qryEstoqueDOCUMENTO: TIntegerField
      FieldName = 'DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object qryEstoqueDATA: TSQLTimeStampField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object qryEstoqueDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object qryEstoquePRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Size = 150
    end
    object qryEstoqueREFPROD: TStringField
      FieldName = 'REFPROD'
      ProviderFlags = []
      Size = 50
    end
    object qryEstoqueMARCAPROD: TStringField
      FieldName = 'MARCAPROD'
      ProviderFlags = []
      Size = 50
    end
    object qryEstoqueESTOQUEDISP: TFloatField
      FieldName = 'ESTOQUEDISP'
      ProviderFlags = []
    end
    object qryEstoqueESTOQUETOTAL: TFloatField
      FieldName = 'ESTOQUETOTAL'
      ProviderFlags = []
    end
    object qryEstoqueUNPROD: TStringField
      FieldName = 'UNPROD'
      ProviderFlags = []
      Size = 5
    end
    object qryEstoqueUSUARIO: TStringField
      FieldName = 'USUARIO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object dspEstoque: TDataSetProvider
    DataSet = qryEstoque
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspEstoqueGetTableName
    Left = 336
    Top = 51
  end
  object cdsEstoque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstoque'
    AfterInsert = cdsEstoqueAfterInsert
    Left = 336
    Top = 94
    object cdsEstoqueIDESTOQUE: TIntegerField
      FieldName = 'IDESTOQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEstoqueIDPROD: TIntegerField
      FieldName = 'IDPROD'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEstoqueENTRADA: TFloatField
      FieldName = 'ENTRADA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsEstoqueSAIDA: TFloatField
      FieldName = 'SAIDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsEstoqueSALDO: TFloatField
      FieldName = 'SALDO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
    end
    object cdsEstoqueORIGEM: TStringField
      FieldName = 'ORIGEM'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsEstoqueDOCUMENTO: TIntegerField
      FieldName = 'DOCUMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEstoqueDATA: TSQLTimeStampField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEstoqueDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object cdsEstoquePRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Size = 150
    end
    object cdsEstoqueREFPROD: TStringField
      FieldName = 'REFPROD'
      ProviderFlags = []
      Size = 50
    end
    object cdsEstoqueMARCAPROD: TStringField
      FieldName = 'MARCAPROD'
      ProviderFlags = []
      Size = 50
    end
    object cdsEstoqueESTOQUEDISP: TFloatField
      FieldName = 'ESTOQUEDISP'
      ProviderFlags = []
      DisplayFormat = '###,###,##0.00'
    end
    object cdsEstoqueESTOQUETOTAL: TFloatField
      FieldName = 'ESTOQUETOTAL'
      ProviderFlags = []
      DisplayFormat = '###,###,##0.00'
    end
    object cdsEstoqueUNPROD: TStringField
      FieldName = 'UNPROD'
      ProviderFlags = []
      Size = 5
    end
    object cdsEstoqueUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 30
    end
  end
  object dsEstoque: TDataSource
    DataSet = cdsEstoque
    Left = 336
    Top = 138
  end
  object qryConf: TSQLDataSet
    CommandText = 'select * from CONF'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLCon
    Left = 184
    Top = 8
    object qryConfIDCONF: TIntegerField
      FieldName = 'IDCONF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryConfKEYGEN: TStringField
      FieldName = 'KEYGEN'
      ProviderFlags = [pfInUpdate]
      Size = 2000
    end
    object qryConfRAZAOEMP: TStringField
      FieldName = 'RAZAOEMP'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object qryConfFANTASIAEMP: TStringField
      FieldName = 'FANTASIAEMP'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object qryConfCNPJEMP: TStringField
      FieldName = 'CNPJEMP'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object qryConfENDERECOEMP: TStringField
      FieldName = 'ENDERECOEMP'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qryConfNUMEROEMP: TStringField
      FieldName = 'NUMEROEMP'
      ProviderFlags = [pfInUpdate]
    end
    object qryConfCOMPLEMENTOEMP: TStringField
      FieldName = 'COMPLEMENTOEMP'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object qryConfBAIRROEMP: TStringField
      FieldName = 'BAIRROEMP'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qryConfIEMUNEMP: TStringField
      FieldName = 'IEMUNEMP'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object qryConfCIDADEEMP: TStringField
      FieldName = 'CIDADEEMP'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qryConfUFEMP: TStringField
      FieldName = 'UFEMP'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object qryConfCEPEMP: TStringField
      FieldName = 'CEPEMP'
      ProviderFlags = [pfInUpdate]
    end
    object qryConfIEEMP: TStringField
      FieldName = 'IEEMP'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object qryConfCONTATOEMP: TStringField
      FieldName = 'CONTATOEMP'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qryConfFONEEMP: TStringField
      FieldName = 'FONEEMP'
      ProviderFlags = [pfInUpdate]
    end
    object qryConfFAXEMP: TStringField
      FieldName = 'FAXEMP'
      ProviderFlags = [pfInUpdate]
    end
    object qryConfEMAILEMP: TStringField
      FieldName = 'EMAILEMP'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object qryConfSITEEMP: TStringField
      FieldName = 'SITEEMP'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object qryConfDATABACKUP: TStringField
      FieldName = 'DATABACKUP'
      ProviderFlags = [pfInUpdate]
    end
    object qryConfVALIDADELIC: TStringField
      FieldName = 'VALIDADELIC'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qryConfQTDELIC: TStringField
      FieldName = 'QTDELIC'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object qryConfPROGRAMABACKUP: TStringField
      FieldName = 'PROGRAMABACKUP'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object qryConfLOGOEMP: TStringField
      FieldName = 'LOGOEMP'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object qryConfPASTASERVIDOR: TStringField
      FieldName = 'PASTASERVIDOR'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object qryConfHOSTEMAIL: TStringField
      FieldName = 'HOSTEMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object qryConfUSUARIOEMAIL: TStringField
      FieldName = 'USUARIOEMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object qryConfSENHAEMAIL: TStringField
      FieldName = 'SENHAEMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qryConfPORTAEMAIL: TIntegerField
      FieldName = 'PORTAEMAIL'
      ProviderFlags = [pfInUpdate]
    end
    object qryConfSSLEMAIL: TIntegerField
      FieldName = 'SSLEMAIL'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspCOnf: TDataSetProvider
    DataSet = qryConf
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAllowCommandText]
    OnGetTableName = dspConfGetTableName
    Left = 184
    Top = 51
  end
  object cdsCOnf: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCOnf'
    AfterInsert = cdsConfAfterInsert
    Left = 184
    Top = 94
    object cdsCOnfIDCONF: TIntegerField
      FieldName = 'IDCONF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCOnfKEYGEN: TStringField
      FieldName = 'KEYGEN'
      ProviderFlags = [pfInUpdate]
      Size = 2000
    end
    object cdsCOnfRAZAOEMP: TStringField
      FieldName = 'RAZAOEMP'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cdsCOnfFANTASIAEMP: TStringField
      FieldName = 'FANTASIAEMP'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cdsCOnfCNPJEMP: TStringField
      FieldName = 'CNPJEMP'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsCOnfIEEMP: TStringField
      FieldName = 'IEEMP'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsCOnfENDERECOEMP: TStringField
      FieldName = 'ENDERECOEMP'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsCOnfNUMEROEMP: TStringField
      FieldName = 'NUMEROEMP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCOnfCOMPLEMENTOEMP: TStringField
      FieldName = 'COMPLEMENTOEMP'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cdsCOnfBAIRROEMP: TStringField
      FieldName = 'BAIRROEMP'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsCOnfIEMUNEMP: TStringField
      FieldName = 'IEMUNEMP'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object cdsCOnfCIDADEEMP: TStringField
      FieldName = 'CIDADEEMP'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsCOnfUFEMP: TStringField
      FieldName = 'UFEMP'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsCOnfCEPEMP: TStringField
      FieldName = 'CEPEMP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCOnfCONTATOEMP: TStringField
      FieldName = 'CONTATOEMP'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsCOnfFONEEMP: TStringField
      FieldName = 'FONEEMP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCOnfFAXEMP: TStringField
      FieldName = 'FAXEMP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCOnfEMAILEMP: TStringField
      FieldName = 'EMAILEMP'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cdsCOnfSITEEMP: TStringField
      FieldName = 'SITEEMP'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cdsCOnfDATABACKUP: TStringField
      FieldName = 'DATABACKUP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsCOnfVALIDADELIC: TStringField
      FieldName = 'VALIDADELIC'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsCOnfQTDELIC: TStringField
      FieldName = 'QTDELIC'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsCOnfPROGRAMABACKUP: TStringField
      FieldName = 'PROGRAMABACKUP'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cdsCOnfLOGOEMP: TStringField
      FieldName = 'LOGOEMP'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cdsCOnfPASTASERVIDOR: TStringField
      FieldName = 'PASTASERVIDOR'
      ProviderFlags = [pfInUpdate]
      Size = 300
    end
    object cdsCOnfHOSTEMAIL: TStringField
      FieldName = 'HOSTEMAIL'
      Size = 200
    end
    object cdsCOnfUSUARIOEMAIL: TStringField
      FieldName = 'USUARIOEMAIL'
      Size = 200
    end
    object cdsCOnfSENHAEMAIL: TStringField
      FieldName = 'SENHAEMAIL'
      Size = 30
    end
    object cdsCOnfPORTAEMAIL: TIntegerField
      FieldName = 'PORTAEMAIL'
    end
    object cdsCOnfSSLEMAIL: TIntegerField
      FieldName = 'SSLEMAIL'
    end
  end
  object dsCOnf: TDataSource
    DataSet = cdsCOnf
    Left = 184
    Top = 138
  end
  object qryPlano: TSQLDataSet
    CommandText = 'select * from PLANOCONTA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLCon
    Left = 368
    Top = 8
    object qryPlanoIDPLANO: TIntegerField
      FieldName = 'IDPLANO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPlanoNOMEPLANO: TStringField
      FieldName = 'NOMEPLANO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qryPlanoATIVO: TStringField
      FieldName = 'ATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryPlanoTIPOPLANO: TStringField
      FieldName = 'TIPOPLANO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qryPlanoDRE: TStringField
      FieldName = 'DRE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dspPlano: TDataSetProvider
    DataSet = qryPlano
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspPlanoGetTableName
    Left = 368
    Top = 51
  end
  object cdsPlano: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlano'
    AfterInsert = cdsPlanoAfterInsert
    Left = 368
    Top = 94
    object cdsPlanoIDPLANO: TIntegerField
      FieldName = 'IDPLANO'
      Required = True
    end
    object cdsPlanoNOMEPLANO: TStringField
      FieldName = 'NOMEPLANO'
      Size = 50
    end
    object cdsPlanoATIVO: TStringField
      FieldName = 'ATIVO'
      OnGetText = cdsPlanoATIVOGetText
      Size = 1
    end
    object cdsPlanoTIPOPLANO: TStringField
      FieldName = 'TIPOPLANO'
      Size = 30
    end
    object cdsPlanoDRE: TStringField
      FieldName = 'DRE'
      OnGetText = cdsPlanoDREGetText
      Size = 1
    end
  end
  object dsPlano: TDataSource
    DataSet = cdsPlano
    Left = 368
    Top = 138
  end
  object qryCidade: TSQLDataSet
    CommandText = 'select * from CODIBGE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLCon
    Left = 400
    Top = 8
    object qryCidadeCODMUN: TIntegerField
      FieldName = 'CODMUN'
      Required = True
    end
    object qryCidadeCODUF: TIntegerField
      FieldName = 'CODUF'
    end
    object qryCidadeMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Size = 50
    end
    object qryCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object dspCidade: TDataSetProvider
    DataSet = qryCidade
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAllowCommandText]
    OnGetTableName = dspCidadeGetTableName
    Left = 400
    Top = 51
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCidade'
    Left = 400
    Top = 94
    object cdsCidadeCODMUN: TIntegerField
      FieldName = 'CODMUN'
      Required = True
    end
    object cdsCidadeCODUF: TIntegerField
      FieldName = 'CODUF'
    end
    object cdsCidadeMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Size = 50
    end
    object cdsCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object dsCidade: TDataSource
    DataSet = cdsCidade
    Left = 400
    Top = 138
  end
  object qryBalanco: TSQLDataSet
    CommandText = 
      'select A.*, B.REFPROD, B.PRODUTO from BALANCO A LEFT JOIN PRODUT' +
      'O B on A.IDPROD=B.IDPROD'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLCon
    Left = 432
    Top = 8
    object qryBalancoIDBALANCO: TIntegerField
      FieldName = 'IDBALANCO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryBalancoIDPROD: TIntegerField
      FieldName = 'IDPROD'
      ProviderFlags = [pfInUpdate]
    end
    object qryBalancoIDSEQ: TIntegerField
      FieldName = 'IDSEQ'
      ProviderFlags = [pfInUpdate]
    end
    object qryBalancoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      ProviderFlags = [pfInUpdate]
    end
    object qryBalancoSTATUS: TStringField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryBalancoESTOQUETOTAL: TFloatField
      FieldName = 'ESTOQUETOTAL'
      ProviderFlags = [pfInUpdate]
    end
    object qryBalancoESTOQUECONT: TFloatField
      FieldName = 'ESTOQUECONT'
      ProviderFlags = [pfInUpdate]
    end
    object qryBalancoESTOQUEDIF: TFloatField
      FieldName = 'ESTOQUEDIF'
      ProviderFlags = [pfInUpdate]
    end
    object qryBalancoREFPROD: TStringField
      FieldName = 'REFPROD'
      ProviderFlags = []
      Size = 50
    end
    object qryBalancoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Size = 150
    end
  end
  object dspBalanco: TDataSetProvider
    DataSet = qryBalanco
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspBalancoGetTableName
    Left = 432
    Top = 51
  end
  object cdsBalanco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBalanco'
    AfterInsert = cdsBalancoAfterInsert
    Left = 432
    Top = 94
    object cdsBalancoIDBALANCO: TIntegerField
      FieldName = 'IDBALANCO'
      Required = True
    end
    object cdsBalancoIDPROD: TIntegerField
      FieldName = 'IDPROD'
    end
    object cdsBalancoIDSEQ: TIntegerField
      FieldName = 'IDSEQ'
    end
    object cdsBalancoDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object cdsBalancoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsBalancoESTOQUETOTAL: TFloatField
      FieldName = 'ESTOQUETOTAL'
      DisplayFormat = '###,###,##0,.00'
    end
    object cdsBalancoESTOQUECONT: TFloatField
      FieldName = 'ESTOQUECONT'
      DisplayFormat = '###,###,##0,.00'
    end
    object cdsBalancoESTOQUEDIF: TFloatField
      FieldName = 'ESTOQUEDIF'
      DisplayFormat = '###,###,##0,.00'
    end
    object cdsBalancoREFPROD: TStringField
      FieldName = 'REFPROD'
      Size = 50
    end
    object cdsBalancoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 150
    end
  end
  object dsBalanco: TDataSource
    DataSet = cdsBalanco
    Left = 432
    Top = 138
  end
  object qryAux2: TSQLDataSet
    CommandText = 'select * from clientes'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLCon
    Left = 112
    Top = 1
  end
  object qryAux3: TSQLDataSet
    CommandText = 'select * from clientes'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLCon
    Left = 144
    Top = 1
  end
  object qryVend: TSQLDataSet
    CommandText = 'select * from VENDEDOR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLCon
    Left = 463
    Top = 8
    object qryVendIDVEND: TIntegerField
      FieldName = 'IDVEND'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVendNOMEVENDEDOR: TStringField
      FieldName = 'NOMEVENDEDOR'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qryVendFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object qryVendCELULAR: TStringField
      FieldName = 'CELULAR'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object qryVendCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qryVendNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object qryVendCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qryVendUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qryVendCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qryVendEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object qryVendPERCOMISSAO: TFloatField
      FieldName = 'PERCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendATIVO: TStringField
      FieldName = 'ATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qryVendIBGE: TIntegerField
      FieldName = 'IBGE'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendDTCADASTRO: TSQLTimeStampField
      FieldName = 'DTCADASTRO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspVend: TDataSetProvider
    DataSet = qryVend
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    OnGetTableName = dspVendGetTableName
    Left = 463
    Top = 51
  end
  object cdsVend: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVend'
    AfterInsert = cdsVendAfterInsert
    Left = 463
    Top = 94
    object cdsVendIDVEND: TIntegerField
      FieldName = 'IDVEND'
      Required = True
    end
    object cdsVendNOMEVENDEDOR: TStringField
      FieldName = 'NOMEVENDEDOR'
      Size = 100
    end
    object cdsVendFONE: TStringField
      FieldName = 'FONE'
      Size = 25
    end
    object cdsVendCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 25
    end
    object cdsVendCPF: TStringField
      FieldName = 'CPF'
    end
    object cdsVendRG: TStringField
      FieldName = 'RG'
    end
    object cdsVendENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsVendNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object cdsVendCEP: TStringField
      FieldName = 'CEP'
    end
    object cdsVendBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object cdsVendUF: TStringField
      FieldName = 'UF'
      Size = 3
    end
    object cdsVendCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object cdsVendEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 200
    end
    object cdsVendPERCOMISSAO: TFloatField
      FieldName = 'PERCOMISSAO'
    end
    object cdsVendATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 3
    end
    object cdsVendIBGE: TIntegerField
      FieldName = 'IBGE'
    end
    object cdsVendDTCADASTRO: TSQLTimeStampField
      FieldName = 'DTCADASTRO'
    end
  end
  object dsVend: TDataSource
    DataSet = cdsVend
    Left = 463
    Top = 138
  end
  object cdsAux: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAux'
    Left = 77
    Top = 88
  end
  object dspAux: TDataSetProvider
    DataSet = qryAux
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 77
    Top = 44
  end
  object dspAux2: TDataSetProvider
    DataSet = qryAux2
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 112
    Top = 44
  end
  object cdsAux2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAux2'
    Left = 112
    Top = 88
  end
  object dspAux3: TDataSetProvider
    DataSet = qryAux3
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 144
    Top = 45
  end
  object cdsAux3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAux3'
    Left = 144
    Top = 88
  end
end
