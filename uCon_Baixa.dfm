object Fcon_Baixa: TFcon_Baixa
  Left = 270
  Top = 134
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Baixa de Contas'
  ClientHeight = 503
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxSelec: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Alignment = alTopCenter
    Caption = 'Contas selecionadas'
    PanelStyle.Active = True
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = False
    Style.Shadow = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 0
    Height = 175
    Width = 800
    object cxGroupBox1: TcxGroupBox
      Left = 2
      Top = 2
      Align = alTop
      Style.BorderStyle = ebsUltraFlat
      TabOrder = 0
      Height = 22
      Width = 796
      object eData: TcxDateEdit
        Left = 662
        Top = 1
        TabStop = False
        ParentFont = False
        Properties.DateButtons = [btnClear, btnToday]
        Properties.ReadOnly = False
        Style.Color = clWhite
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Silver'
        Style.Shadow = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
        StyleFocused.Color = 15921919
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
        TabOrder = 0
        Width = 130
      end
      object cxLabel5: TcxLabel
        Left = 581
        Top = 3
        AutoSize = False
        Caption = 'Dt. Pagamento:'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clMaroon
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.Alignment.Horz = taRightJustify
        Properties.LabelEffect = cxleCool
        Transparent = True
        Height = 17
        Width = 82
        AnchorX = 663
      end
      object cxContas: TcxLabel
        Left = 29
        Top = 0
        Caption = 'Contas Selecionadas'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clGray
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.LookAndFeel.NativeStyle = True
        Style.TextColor = clWindowFrame
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.LineOptions.InnerColor = clWindowFrame
        Properties.LineOptions.OuterColor = clWindowFrame
        Properties.ShadowedColor = clWindowFrame
        Transparent = True
      end
    end
    object grSelec: TcxGrid
      Left = 2
      Top = 24
      Width = 796
      Height = 149
      Hint = 'Grid de Dados'
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = cxcbsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Black'
      RootLevelOptions.TabsForEmptyDetails = False
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCustomDrawCell = cxGridDBTableView1CustomDrawCell
        DataController.DataSource = dmFinanceiro.dsSelec
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '###,###,##0.00'
            Kind = skSum
            FieldName = 'VLRJUROS'
            DisplayText = 'Juros'
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<N'#227'o h'#225' registros>'
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        object STATUS: TcxGridDBColumn
          Caption = 'St'
          DataBinding.FieldName = 'STATUS'
          Width = 65
        end
        object IDCONTA: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'IDCONTA'
          Width = 50
        end
        object NOMECLIE: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'NOMECLIE'
          Width = 230
        end
        object DTEMISSAO: TcxGridDBColumn
          Caption = 'Dt. Emiss'#227'o'
          DataBinding.FieldName = 'DTEMISSAO'
          Width = 100
        end
        object DCUMENTO: TcxGridDBColumn
          Caption = 'Documento'
          DataBinding.FieldName = 'DOCUMENTO'
          Width = 100
        end
        object VENCTO: TcxGridDBColumn
          Caption = 'Dt. Vencto'
          DataBinding.FieldName = 'DTVENCTO'
          Width = 100
        end
        object VLRINI: TcxGridDBColumn
          Caption = 'Vlr. Inicial'
          DataBinding.FieldName = 'VLRINI'
          Width = 80
        end
        object VLRJUROS: TcxGridDBColumn
          Caption = 'Vlr. Juros'
          DataBinding.FieldName = 'VLRJUROS'
          Width = 70
        end
        object VLRMULTA: TcxGridDBColumn
          Caption = 'Vlr. Multa'
          DataBinding.FieldName = 'VLRMULTA'
          Width = 70
        end
        object VLRBRUTO: TcxGridDBColumn
          Caption = 'Vlr. Total'
          DataBinding.FieldName = 'VLRBRUTO'
          Width = 80
        end
        object DIASATRASO: TcxGridDBColumn
          Caption = 'Dias Atraso'
          DataBinding.FieldName = 'DIASATRASO'
        end
        object VLRPAGO: TcxGridDBColumn
          Caption = 'Vlr. Pago'
          DataBinding.FieldName = 'VLRPAGO'
          Visible = False
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object pnBottom: TcxGroupBox
    Left = 0
    Top = 472
    Align = alBottom
    Style.BorderStyle = ebsUltraFlat
    TabOrder = 1
    Height = 31
    Width = 800
    object cxSeleciona: TcxButton
      Left = 280
      Top = 1
      Width = 120
      Height = 30
      Hint = 'Quita os titulos e lan'#231'a as movimenta'#231#245'es no caixa.'
      Caption = '&Baixar (F4)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = cxSelecionaClick
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000019191920B4B3B3E3CBCACAFF59595972000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000004B4B4B60CFCECEFFD5D4D4FFD5D4D4FFCFCECEFF2A2A2A360000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000858484A8D3D2D1FFDBDADAFFDEDDDDFFDEDDDDFFD9D8D8FFCDCCCAFE0101
        0101000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001818181FB8B8
        B7E6D6D5D5FFDFDEDEFFE7E6E4FFE8E7E7FFE7E6E6FFE1E0E0FFD6D7D5FF9E9D
        9DC7000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000004B4B4B60D0CFCFFFDBDA
        DAFFE3E2E2FFEAE9EAFFEEEDEEFFF0EFF0FFEEEDEDFFEBEAEAFFE1E0E0FFD4D3
        D3FF6160607B0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000858484A8D4D3D3FFDEDDDDFFE7E6
        E5FFEDECEDFFF6F5F2FFFFFFF8FFFFFFF9FFF8F7F4FFF0EFF0FFEBEAEAFFDFDE
        DEFFD2D1D0FF2727273200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000001818181FB9B7B8E6D7D7D6FFE0DFDFFFE9E8E9FFF0EF
        EFFFFFFFF8FFFFFFFBFFC2C0E4FFB9B8E1FFFFFFF8FFFDFDF6FFEFEEEEFFE7E8
        E6FFDCDCDBFFCAC9C7F900000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000004B4B4B60CFCFCEFFDAD9D8FFE1E0E0FFE9E8E8FFF8F7F1FFFFFF
        FEFFE6E4EFFF4A46C1FF0000A6FF0000A5FF5E5AC7FFFFFFFDFFFCFBF5FFEDEC
        ECFFE5E4E4FFD9D8D8FF989797C0000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000848484A8D3D2D0FFDBDADAFFE2E1E1FFEBEAE9FFFFFFF5FFFFFFF7FF8986
        D4FF0600ACFF0000A9FF1610B1FF1610B1FF0000A6FF7470CDFFFFFFFFFFF8F7
        F4FFEBEBECFFE2E1E1FFD4D3D3FF595959720000000000000000000000000000
        000000000000000000000000000000000000000000000000000011111116B8B7
        B7E7D3D3D2FFDBDADAFFE1E0E0FFF5F4EBFFFFFFF5FFC1BFDFFF2924B4FF0000
        A3FF0F0AAAFF1813ABFF1812AAFF1812ABFF140EAEFF0000A6FF8B88D5FFFFFF
        FFFFF5F4F1FFE9E8E8FFDEDDDDFFD1D0CFFF2121212A00000000000000000000
        0000000000000000000000000000000000000000000000000000B9B8B8E9D2D3
        D0FFD8D7D7FFE3E3DFFFFFFFECFFE9E7E8FF5D59BFFF0000A1FF0500A3FF1612
        A6FF1712A3FF16119EFF16119AFF16119EFF1812A6FF110CAAFF0000A6FFA29F
        DCFFFFFFFDFFF0EFEEFFE5E4E4FFDBDAD9FFC7C6C4F600000000000000000000
        0000000000000000000000000000000000000000000000000000C6C5C5F9D4D4
        D3FFEDECDFFFF9F9E5FF9491CAFF110AA3FF00009CFF120EA3FF1712A0FF1611
        9CFF140F90F40A08497F0000020409073F6D16119BFF1812A4FF0F08A8FF0000
        A7FFB8B6E0FFFFFFF9FFEBEAEBFFE2E1E1FFD8D7D6FF919090B7000000000000
        00000000000000000000000000000000000000000000000000004F4F4C61EBEA
        D6FFC0BECFFF3733A9FF000097FF0B049CFF16119DFF161099FF110D77CC0605
        2D50000000000000000000000000000000000907447716119AFF1712A4FF0B04
        A6FF0200A8FFCBCBE4FFFFFFF5FFE7E6E6FFDFDEDEFFD4D4D3FF5454546B0000
        0000000000000000000000000000000000000000000000000000000000005A58
        85C1000090FF010094FF140F99FF151096FF0D0A5C9F03021626000000000000
        000000000000000000000000000000000000000000000907406F16119AFF1712
        A3FF0700A3FF0D07A9FFDDDBE8FFFFFFF2FFE4E3E3FFDCDBDBFFD0CFCEFF1B1B
        1B23000000000000000000000000000000000000000000000000000000000000
        00000A076FC4120D7CD709074070000002030000000000000000000000000000
        000000000000000000000000000000000000000000000000000008063A661610
        9AFF1712A2FF0200A2FF1B15ACFFEBE9EAFFFDFDEEFFE1E0E0FFD9D8D7FFC1C0
        BEF0000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000806
        3A6616109BFF1712A2FF00009FFF2B25B0FFF6F5EDFFF5F5E9FFDEDDDDFFD5D5
        D4FF8C8B8AB00000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000008063A66161099FF1712A1FF00009DFF3D38B3FFFDFCEBFFEEEDE5FFDBDA
        DCFFD1D2D0FF4D4C4C6200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000007063861161199FF1610A1FF00009CFF514EB9FFFFFFECFFE8E7
        E1FFD9D8D8FFCECECDFF1515151B000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000705315616119AFF1510A0FF000099FF6863BDFFFFFF
        E9FFE2E3DFFFD6D5D5FFBCBBBBEB000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000007053256151199FF130E9EFF000098FF7C79
        C1FFFFFFE8FFDFDEDBFFD3D3D2FF868584A90000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000006053156161096FF100C9BFF0000
        97FF918EC6FFFEFEE7FFDADAD8FFD1D0CEFF4646465900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000007053054161196FF0D08
        9BFF000097FFA4A3CBFFF9F8E3FFD6D6D4FFCDCCCBFF0D0C0C10000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000050428461611
        96FF0A0498FF010099FFB6B3CEFFF3F2DEFFD3D2D0FFA1A1A0CC000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000604
        2947151095FF070296FF0A0599FFC4C3CFFFE9EAD8FFCAC9C9FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000006042947151096FF030093FF171198FFC5C5C9FF60605C74000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000005042642151091F900008CFF1312325000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
    end
    object cxFechar: TcxButton
      Left = 399
      Top = 1
      Width = 120
      Height = 30
      Hint = 'Cancela a a'#231#227'o de quita'#231#227'o de contas.'
      Cancel = True
      Caption = '&Desistir (F10)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = cxFecharClick
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000045454558BEBDBDF0B6B6B5E72F2F2F3C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000002F2F2F3CB7B6
        B6E7BEBDBDF04545455800000000000000000000000000000000000000000000
        00000000000050505066CFCECCFFD2D1D0FFD1D1D0FFCCCACBFF3D3C39470000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000038373747CDCCCCFFD2D2
        D1FFD2D2D1FFCFCECEFF50505066000000000000000000000000000000000000
        000050505066D0CFCDFFD5D4D4FFD8D7D7FFD7D7D6FFD4D2D3FFEBEAD5FF2D2D
        3447000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000037373747CECDCDFFD6D5D5FFD9D8
        D8FFD9D8D8FFD6D5D5FFCFCECDFF50504F660000000000000000000000005050
        5066D0CFCDFFD6D5D5FFDBDADAFFDDDCDCFFDDDCDCFFEDECDFFFDDDDD6FF2D29
        9DFF020128470000000000000000000000000000000000000000000000000000
        000000000000000000000000000038373747CFCECEFFD8D8D7FFDEDDDDFFE0DF
        DFFFDFDFDEFFDDDCDCFFD7D6D6FFD0CFCDFF505050660000000044444457CDCC
        CCFFD5D6D4FFDBDADBFFDFDFDEFFE1E0E0FFF6F5E7FFE9E8E3FF2A25A7FF0000
        96FF161196FF0604294700000000000000000000000000000000000000000000
        0000000000000000000038373747D0CFCFFFDAD9D9FFE0DFDFFFE5E4E4FFE6E5
        E5FFE5E4E4FFE2E1E1FFDDDCDDFFD6D5D5FFCFCECCFF44444457C6C5C5FAD2D1
        D1FFD7D7D7FFDEDDDCFFE2E1E1FFFAF9EAFFEFEEE9FF2C26AEFF00009DFF1712
        A2FF16119EFF151096FF06042947000000000000000000000000000000000000
        00000000000038373747D0CFCFFFDBDADAFFE2E1E1FFE9E7E8FFECEBEBFFEDEC
        ECFFEBEAEAFFE5E4E4FFE0DFDEFFD9D8D8FFD3D2D1FFC7C6C6FBBDBCBCF0D2D1
        D0FFD8D7D7FFDDDCDDFFF7F6E8FFF0EEE9FF2C27B2FF0000A4FF1711ABFF1812
        A7FF1712A3FF16119EFF151097FF060429470000000000000000000000000000
        000038373747D0CFCEFFDBDBDAFFE3E2E2FFE9E9E8FFEDEEECFFEFEEEEFFEEED
        EDFFEDECECFFE6E5E5FFE0DFDFFFD9D8D8FFD3D2D1FFBEBDBDF02D2D2D3ACECC
        CBFFD4D4D4FFEFEEE0FFE9E9E3FF2D26AFFF0000A3FF1713ADFF1813ADFF1812
        ACFF1812A9FF1712A4FF16119FFF151097FF040328470000000000000000393A
        3847D0CECFFFDBDADAFFE4E3E3FFECEAEBFFEFEEEEFFF3F2F2FFF1F0F0FFEFEE
        EEFFECEBEBFFE5E4E4FFDEDDDDFFD6D5D5FFCDCCCBFF2E2E2E3B000000003837
        3747DCDBD0FFDEDDD8FF2A26A8FF00009EFF1713ABFF1813AEFF1813AFFF1813
        AFFF1813ADFF1812AAFF1712A5FF1811A0FF0E0996FF01001C3228272732D8D7
        D1FFDDDCDCFFE5E4E4FFEDECECFFF0EFEFFFF4F3F3FFF5F4F4FFF3F2F2FFEDEC
        ECFFE9E8E8FFE0DFDFFFD8D8D7FFCECDCDFF3737374700000000000000000000
        00003A3A384727249DFF000097FF1612A4FF1812A9FF1813ADFF1813AFFF1913
        B2FF1913B0FF1813AEFF1812ABFF1812A7FF000097FF3430A4FFE5E4D9FFE2E1
        DEFFE7E5E7FFEEEDEDFFF2F1F1FFF3F2F2FFF4F3F3FFF3F2F2FFEFEEEEFFE9E8
        E8FFE2E1E1FFDAD9D9FFCFCECEFF373737470000000000000000000000000000
        00000000000000002747100B95FF16119FFF1712A5FF1812AAFF1813AEFF1913
        B0FF1913B2FF1913B1FF1913B0FF0000A4FF3731B3FFF2F1E8FFF2F1E9FFEAE9
        E9FFEEEDEDFFF3F2F2FFF5F4F4FFF4F3F3FFF5F4F4FFF0EFEFFFECEBEBFFE3E2
        E2FFDBDADAFFD0CFCFFF37373747000000000000000000000000000000000000
        0000000000000000000004032847151099FF16119FFF1712A5FF1812ABFF1813
        AFFF1913B2FF1812B2FF0000A9FF3A34BAFFFFFFF4FFFFFFF4FFEFEEEFFFF1F0
        F0FFF3F2F2FFF4F3F3FFF4F3F3FFF4F3F3FFF1F0F0FFEDECECFFE4E3E3FFDBDA
        DAFFD0CFCFFF3837374700000000000000000000000000000000000000000000
        000000000000000000000000000006042947151097FF1711A0FF1712A6FF1813
        ACFF1912B0FF0000A9FF3934BCFFFFFFF7FFFFFFF8FFF3F2F3FFF4F3F3FFF4F3
        F3FFF4F3F3FFF4F3F3FFF4F3F3FFF1F2F0FFEEEBEDFFE5E4E4FFDBDADAFFD0CF
        CEFF383737470000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000006042847151098FF1711A1FF1811
        A8FF0000A5FF3A34BCFFFFFFF7FFFFFFF7FFF4F1F3FFF4F3F3FFF4F3F3FFF4F3
        F3FFF4F3F3FFF4F3F3FFF3F2F2FFEEEDEDFFE6E6E5FFDDDCDCFFD0CFCFFF3837
        3747000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000040328470E0997FF0000
        9AFF3733B4FFFFFFF4FFFFFFF8FFF3F1F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
        F3FFF4F3F3FFF4F3F3FFF1F0F0FFEAE9E9FFDFDEDEFFD1D1D0FF383737470000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000001001B313430
        A6FFF3F2E9FFFFFFF4FFF4F2F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
        F3FFF4F3F3FFF4F3F3FFF0EFEFFFE6E5E5FFD5D4D4FF27262631000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000026262631E4E4
        D9FFF3F2E9FFF0EEEFFFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
        F3FFF4F3F3FFF4F3F3FFF0EFEFFFE6E5E5FFD5D4D4FF26262631000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000039393847D7D8D1FFE2E1
        DEFFEAE9E9FFF1F0F0FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
        F3FFF4F3F3FFF4F3F3FFF1F0F0FFE9E8E8FFDEDDDDFFD1D0CFFF373737470000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000037373747D0CFCFFFDDDCDBFFE6E5
        E5FFEEEDEDFFF3F2F2FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
        F3FFF4F3F3FFF4F3F3FFF2F1F1FFEDECECFFE4E3E3FFDBDADAFFCFCECEFF3737
        3747000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000038373747D0CFCEFFDBDADAFFE5E4E4FFECEB
        EBFFF3F2F2FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
        F3FFF4F3F3FFF4F3F3FFF4F3F3FFF0EFEFFFEAE9E9FFE2E1E1FFD9D8D8FFCFCE
        CDFF383737470000000000000000000000000000000000000000000000000000
        0000000000000000000038373747D0CFCFFFDBDADAFFE4E3E3FFEBEAEAFFF1F0
        F0FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F2FFF1F0F0FFF0EFEFFFF0EFEFFFF1F0
        F0FFF3F2F2FFF4F3F3FFF4F3F3FFF4F3F3FFF0EFEFFFE9E8E8FFE1E0E0FFD9D8
        D8FFCFCECEFF3838384700000000000000000000000000000000000000000000
        00000000000038373847D0CFCEFFDBDAD9FFE3E2E2FFEAE9E9FFF0EFEFFFF5F4
        F4FFF4F3F3FFF5F4F4FFF3F2F2FFEEEDEDFFEAE9E9FFE7E6E6FFE7E6E6FFEAE9
        E9FFEEEDEDFFF1F0F0FFF3F2F2FFF5F4F4FFF1F0F0FFEFEEEEFFE7E6E6FFDFDF
        DEFFD8D7D7FFCFCECDFF37373747000000000000000000000000000000000000
        000037373747CFCECEFFDAD9D9FFE1E0E0FFE9E8E9FFF0EFEFFFF4F3F3FFF4F3
        F3FFF3F2F2FFF2F1F1FFEEEDEDFFE6E5E5FFDFDEDEFFD5D4D4FFD6D5D4FFDFDE
        DEFFE6E5E5FFEDECECFFF1F0F0FFF3F2F2FFF3F2F2FFEFEEEEFFEBEAEAFFE5E4
        E4FFDEDDDDFFD7D6D6FFCECDCDFF373737470000000000000000000000003737
        3747CECDCCFFD8D7D6FFE0DFDEFFE8E6E7FFECEDEBFFF2F1F1FFF4F3F3FFF4F3
        F3FFF0EFEFFFEDECECFFE5E4E4FFDCDCDBFFD1D1D0FF2827273228282832D2D1
        D1FFDCDBDBFFE4E3E2FFEAE9E9FFEEEDEDFFF0EFEFFFEFEEEEFFEDECECFFE9E8
        E8FFE3E2E2FFDDDCDCFFD6D5D5FFCDCCCCFF38373747000000002E2E2E3BCDCC
        CBFFD5D4D4FFDDDCDBFFE3E2E2FFEBEAEAFFEFEEEEFFF0EFEFFFF2F1F1FFEEEF
        EDFFEAE9EBFFE4E3E3FFDBDADAFFD0CFCFFF3837374700000000000000003838
        3847D1CFCFFFDBDADAFFE2E2E1FFEAE7E9FFEEEDEDFFEEEDEDFFEDEEECFFECEB
        EBFFE6E5E5FFE1E0E0FFDBDADAFFD4D4D3FFCCCBCBFF2D2D2D3ABEBDBDF0D2D1
        D0FFD8D7D7FFDEDDDDFFE4E3E3FFEBEAEAFFEEEDEDFFEEEDEDFFECEBEBFFE9E8
        E8FFE3E2E2FFDBDADAFFD0CFCEFF373737470000000000000000000000000000
        000038373747D0CFCEFFDAD9D9FFE1E0E0FFE7E6E6FFEAE9E9FFEDECECFFEAE9
        E9FFE7E6E6FFE2E1E1FFDDDDDCFFD7D7D6FFD3D1D0FFBDBCBCF0C7C6C6FBD2D1
        D0FFD7D7D6FFDDDCDCFFE3E2E1FFE7E6E6FFEBEAEAFFEBEAEAFFE7E6E6FFE1E0
        E0FFDBDAD9FFD0CFCEFF37373747000000000000000000000000000000000000
        00000000000038373747D0CFCFFFDAD9D9FFE0DFDFFFE5E4E4FFE7E6E6FFE9E8
        E8FFE7E6E6FFE2E1E1FFDDDCDCFFD8D7D7FFD2D1D0FFC6C5C5FA44444457CDCC
        CBFFD5D4D3FFDAD9D9FFE1DFDEFFE3E2E1FFE5E4E5FFE3E2E2FFDFDFDEFFDAD9
        D9FFD0CFCFFF3737374700000000000000000000000000000000000000000000
        0000000000000000000038373847D0CFCFFFD9D8D8FFDEDDDDFFE2E1E1FFE3E2
        E2FFE2E1E1FFDFDEDEFFDBDADBFFD5D4D4FFCDCCCCFF44444457000000005050
        5066CDCCCCFFD5D4D4FFDAD9D9FFDEDDDCFFDEDDDDFFDDDCDBFFD8D7D6FFCFCE
        CEFF383838470000000000000000000000000000000000000000000000000000
        000000000000000000000000000038373747CFCECEFFD7D6D6FFDCDBDBFFDEDD
        DDFFDEDDDCFFDBDADAFFD6D5D5FFD0CFCDFF5050506600000000000000000000
        0000504F5066CFCECCFFD5D4D3FFD7D6D6FFD8D7D7FFD5D4D4FFCECDCCFF3737
        3747000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000037373747CECDCDFFD5D4D4FFD8D7
        D7FFD8D7D7FFD5D4D4FFD0CFCDFF505050660000000000000000000000000000
        00000000000050505066CECDCBFFD1D1D0FFD2D1D0FFCECDCBFF383737470000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000038373747CECDCDFFD2D1
        D0FFD2D1D0FFCFCECCFF50505066000000000000000000000000000000000000
        0000000000000000000045454558BDBCBCEFB7B6B6E72F2F2F3C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000002F2F2F3CB7B6
        B6E7BDBCBCEF4545455800000000000000000000000000000000}
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
    end
  end
  object cxLeft: TcxGroupBox
    Left = 0
    Top = 175
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 2
    Height = 297
    Width = 800
    object cxBaixa: TcxGrid
      Left = 261
      Top = 99
      Width = 295
      Height = 195
      Hint = 'Grid de Dados'
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = cxcbsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Black'
      RootLevelOptions.TabsForEmptyDetails = False
      object cxGridDBTableView2: TcxGridDBTableView
        OnDblClick = cxGridDBTableView2DblClick
        OnKeyDown = cxGridDBTableView2KeyDown
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsBaixa
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<N'#227'o h'#225' registros>'
        OptionsView.GroupByBox = False
        object cxGridDBColumn11: TcxGridDBColumn
          Caption = 'C'#243'd.'
          DataBinding.FieldName = 'IDFPAGTO'
          Width = 46
        end
        object cxGridDBColumn12: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAOFPAGTO'
          Width = 143
        end
        object cxGridDBColumn13: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VLRPAGO'
          Width = 106
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 561
      Top = 6
      Caption = 'Vlr. Inicial'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 2
      Height = 56
      Width = 233
      object eVlrIni: TcxCurrencyEdit
        Left = 16
        Top = 17
        TabStop = False
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '###,###,##0.00'
        Properties.ReadOnly = True
        Style.BorderStyle = ebsNone
        Style.Color = 15855081
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clTeal
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.Color = clWhite
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 210
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 561
      Top = 64
      Caption = 'Juros/Multa'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 3
      Height = 56
      Width = 115
      object eJuros: TcxCurrencyEdit
        Left = 7
        Top = 17
        TabStop = False
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '###,###,##0.00'
        Properties.ReadOnly = True
        Style.BorderStyle = ebsNone
        Style.Color = 15855081
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clTeal
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.Color = clWhite
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 100
      end
    end
    object cxGroupBox4: TcxGroupBox
      Left = 679
      Top = 64
      Caption = 'Vlr. Desc.'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 4
      Height = 56
      Width = 115
      object eDesc: TcxCurrencyEdit
        Left = 8
        Top = 17
        TabStop = False
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '###,###,##0.00'
        Properties.ReadOnly = True
        Style.BorderStyle = ebsNone
        Style.Color = 15855081
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clTeal
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.Color = clWhite
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 100
      end
    end
    object cxGroupBox5: TcxGroupBox
      Left = 561
      Top = 180
      Caption = 'Vlr. Pago'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 5
      Height = 56
      Width = 233
      object ePago: TcxCurrencyEdit
        Left = 16
        Top = 17
        TabStop = False
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '###,###,##0.00'
        Properties.ReadOnly = True
        Style.BorderStyle = ebsNone
        Style.Color = 15855081
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clTeal
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.TextColor = clBlack
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.Color = clWhite
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 210
      end
    end
    object cxGroupBox6: TcxGroupBox
      Left = 561
      Top = 122
      Caption = 'Vlr. Total'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 6
      Height = 56
      Width = 233
      object eTotal: TcxCurrencyEdit
        Left = 16
        Top = 17
        TabStop = False
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '###,###,##0.00'
        Properties.ReadOnly = True
        Style.BorderStyle = ebsNone
        Style.Color = 15855081
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clTeal
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.TextColor = clMaroon
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.Color = clWhite
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 210
      end
    end
    object cxGroupBox7: TcxGroupBox
      Left = 561
      Top = 238
      Caption = 'Vlr. Restante'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 7
      Height = 56
      Width = 233
      object eRestante: TcxCurrencyEdit
        Left = 16
        Top = 17
        TabStop = False
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '###,###,##0.00'
        Properties.ReadOnly = True
        Style.BorderStyle = ebsNone
        Style.Color = 15855081
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clTeal
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.Color = clWhite
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 210
      end
    end
    object cxGroupBox8: TcxGroupBox
      Left = 7
      Top = 6
      Caption = 'Formas de Pagamento'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 8
      Height = 288
      Width = 250
      object cxLabel1: TcxLabel
        Left = 5
        Top = 260
        Caption = '(F2) Apaga '#250'ltima Forma de Pagamento'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clGray
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.LookAndFeel.NativeStyle = True
        Style.TextColor = clInactiveCaptionText
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.LineOptions.InnerColor = clWindowFrame
        Properties.LineOptions.OuterColor = clWindowFrame
        Properties.ShadowedColor = clWindowFrame
        Transparent = True
      end
      object cxOpcao: TcxRadioGroup
        Left = 3
        Top = 225
        Align = alBottom
        Caption = 'Imprimir (F1)'
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'Nenhum'
            Value = 0
          end
          item
            Caption = 'Recibo'
            Value = 1
          end>
        ItemIndex = 0
        Style.BorderStyle = ebsNone
        Style.TextColor = clInactiveCaptionText
        TabOrder = 1
        Height = 53
        Width = 244
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 18
        Width = 244
        Height = 207
        Align = alClient
        Color = 15855081
        DataSource = dsFpagto
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = [dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Width = 186
            Visible = True
          end>
      end
    end
    object pnCond: TcxGroupBox
      Left = 261
      Top = 6
      Caption = 'C'#243'd.  Forma de Pagamento'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 91
      Width = 295
      object eFPagto: TcxTextEdit
        Left = 42
        Top = 18
        TabStop = False
        AutoSize = False
        ParentFont = False
        Properties.ReadOnly = True
        Style.BorderStyle = ebsUltraFlat
        Style.Color = 15855081
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = True
        Style.LookAndFeel.NativeStyle = False
        Style.TextColor = clNone
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Height = 31
        Width = 245
      end
      object eCodFpagto: TcxTextEdit
        Left = 7
        Top = 18
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        StyleFocused.Color = 15921919
        TabOrder = 0
        Text = '0'
        OnExit = eCodFpagtoExit
        OnKeyPress = eCodFpagtoKeyPress
        Height = 31
        Width = 35
      end
      object cxLabel6: TcxLabel
        Left = 197
        Top = 48
        Caption = 'Vlr. Pago R$'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clGray
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.LookAndFeel.NativeStyle = True
        Style.TextColor = clWindowFrame
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.LineOptions.InnerColor = clWindowFrame
        Properties.LineOptions.OuterColor = clWindowFrame
        Properties.ShadowedColor = clWindowFrame
        Transparent = True
      end
      object eVlrPago: TcxCurrencyEdit
        Left = 7
        Top = 50
        AutoSize = False
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 2
        Properties.DisplayFormat = '###,###,##0.00'
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        StyleFocused.Color = 15921919
        TabOrder = 2
        OnExit = eVlrPagoExit
        Height = 31
        Width = 280
      end
    end
  end
  object dsBaixa: TDataSource
    DataSet = rxBaixa
    Left = 224
    Top = 344
  end
  object rxBaixa: TRxMemoryData
    FieldDefs = <
      item
        Name = 'DATAMOV'
        DataType = ftDateTime
      end
      item
        Name = 'IDCAIXA'
        DataType = ftInteger
      end
      item
        Name = 'IDPLANO'
        DataType = ftInteger
      end
      item
        Name = 'IDCARTAO'
        DataType = ftFloat
      end
      item
        Name = 'TXCARTAO'
        DataType = ftFloat
      end
      item
        Name = 'VLRPAGO'
        DataType = ftFloat
      end
      item
        Name = 'HISTORICO'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'IDFPAGTO'
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAOFPAGTO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DOC'
        DataType = ftString
        Size = 100
      end>
    Left = 224
    Top = 312
    object rxBaixaDATAMOV: TDateTimeField
      FieldName = 'DATAMOV'
    end
    object rxBaixaIDCAIXA: TIntegerField
      FieldName = 'IDCAIXA'
    end
    object rxBaixaIDPLANO: TIntegerField
      FieldName = 'IDPLANO'
    end
    object rxBaixaIDCARTAO: TFloatField
      FieldName = 'IDCARTAO'
    end
    object rxBaixaTXCARTAO: TFloatField
      FieldName = 'TXCARTAO'
    end
    object rxBaixaVLRPAGO: TFloatField
      FieldName = 'VLRPAGO'
      DisplayFormat = '###,###,##0.00'
    end
    object rxBaixaIDFPAGTO: TIntegerField
      FieldName = 'IDFPAGTO'
    end
    object rxBaixaDESCRICAOFPAGTO: TStringField
      FieldName = 'DESCRICAOFPAGTO'
    end
    object rxBaixaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object rxBaixaDOC: TStringField
      FieldName = 'DOC'
      Size = 100
    end
  end
  object rxFpagto: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 100
      end>
    Left = 55
    Top = 245
    object rxFpagtoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object rxFpagtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object dsFpagto: TDataSource
    DataSet = rxFpagto
    Left = 55
    Top = 269
  end
end
