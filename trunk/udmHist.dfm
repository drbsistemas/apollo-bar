object dmHistorico: TdmHistorico
  OldCreateOrder = False
  Left = 355
  Top = 212
  Height = 246
  Width = 166
  object Hist_Prod: TUCHist_DataSet
    DataSet = dmCad.cdsProd
    ControlHistorico = Hist_Controle
    Left = 88
    Top = 8
  end
  object Hist_Controle: TUCControlHistorico
    UserControl = FPrinc.UserControl1
    Options.SaveNewRecord = True
    Options.SaveDelete = True
    Options.SavePostInsert = True
    Options.SavePostEdit = True
    Options.TypeSavePostEdit = tpSaveModifiedFields
    TableHistory.TableName = 'UCTABHistory'
    TableHistory.FieldApplicationID = 'ApplicationID'
    TableHistory.FieldUserID = 'UserID'
    TableHistory.FieldEventDate = 'EventDate'
    TableHistory.FieldEventTime = 'EventTime'
    TableHistory.FieldForm = 'Form'
    TableHistory.FieldCaptionForm = 'FormCaption'
    TableHistory.FieldEvent = 'Event'
    TableHistory.FieldObs = 'Obs'
    TableHistory.FieldTableName = 'tName'
    UsersHistory.MenuItem = FPrinc.Historico1
    HistoryMsg.Evento_Insert = 'Inserido'
    HistoryMsg.Evento_Delete = 'Apagado'
    HistoryMsg.Evento_Edit = 'Editado'
    HistoryMsg.Evento_NewRecord = 'Novo registro'
    HistoryMsg.Hist_All = 'Todos'
    HistoryMsg.Msg_LimpHistorico = 'Excluir todo o conte'#250'do do hist'#243'rico ?'
    HistoryMsg.Msg_MensConfirma = 'Confirma'#231#227'o'
    HistoryMsg.Msg_LogEmptyHistory = 'Usu'#225'rio %s apagou todo o hist'#243'rico as %s'
    HistoryMsg.LabelDescricao = 'Hist'#243'rico de tabelas'
    HistoryMsg.LabelUser = 'Usu'#225'rio'
    HistoryMsg.LabelForm = 'Formul'#225'rio'
    HistoryMsg.LabelEvento = 'Evento'
    HistoryMsg.LabelTabela = 'Tabela'
    HistoryMsg.LabelDataEvento = 'Data'
    HistoryMsg.LabelHoraEvento = 'Hora'
    HistoryMsg.Msg_NewRecord = '%s inseriu um novo registro'
    HistoryMsg.Hist_MsgExceptPropr = 'Favor informar a propriedade %s'
    HistoryMsg.Hist_BtnFiltro = '&Aplicar Filtro'
    HistoryMsg.Hist_BtnExcluir = '&Excluir Hist'#243'rico'
    HistoryMsg.Hist_BtnFechar = '&Fechar'
    Left = 24
    Top = 8
  end
  object Hist_Generico: TUCHist_DataSet
    DataSet = dmCad.cdsGenerico
    ControlHistorico = Hist_Controle
    Left = 88
    Top = 50
  end
  object Hist_Conf: TUCHist_DataSet
    DataSet = dmCad.cdsConf
    ControlHistorico = Hist_Controle
    Left = 88
    Top = 96
  end
  object Hist_ItemPar: TUCHist_DataSet
    DataSet = dmCad.cdsItemConf
    ControlHistorico = Hist_Controle
    Left = 88
    Top = 144
  end
  object Hist_Cliente: TUCHist_DataSet
    DataSet = dmCad.cdsClie
    ControlHistorico = Hist_Controle
    Left = 24
    Top = 64
  end
  object Hist_Relatorio: TUCHist_DataSet
    DataSet = dmRel.cdsRel
    ControlHistorico = Hist_Controle
    Left = 27
    Top = 112
  end
end
