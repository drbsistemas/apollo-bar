object FRel_Padrao: TFRel_Padrao
  Left = 351
  Top = 158
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio Padr'#227'o'
  ClientHeight = 505
  ClientWidth = 686
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
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
  object pnImg: TcxImage
    Left = 631
    Top = 0
    Align = alRight
    AutoSize = True
    Properties.Center = False
    Properties.GraphicClassName = 'TJPEGImage'
    Properties.Proportional = False
    Properties.ReadOnly = True
    Properties.ShowFocusRect = False
    Style.BorderStyle = ebsUltraFlat
    Style.LookAndFeel.Kind = lfStandard
    Style.LookAndFeel.NativeStyle = False
    Style.Shadow = False
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 0
    Transparent = True
    Height = 505
    Width = 55
  end
  object pnFundo: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 1
    Height = 505
    Width = 631
    object cxOrdem: TcxGroupBox
      Left = 2
      Top = 192
      Align = alTop
      PanelStyle.Active = True
      Style.BorderStyle = ebsNone
      TabOrder = 5
      Visible = False
      Height = 23
      Width = 627
      object cbOrdem: TcxComboBox
        Left = 83
        Top = 1
        ParentFont = False
        ParentShowHint = False
        Properties.DropDownListStyle = lsFixedList
        ShowHint = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 130
      end
      object cxLabel4: TcxLabel
        Left = 7
        Top = 3
        AutoSize = False
        Caption = 'Ordem:'
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
        Width = 75
        AnchorX = 82
      end
      object cbCores: TcxCheckBox
        Left = 219
        Top = 1
        Caption = 'Usar Cores Alternadas'
        ParentColor = False
        ParentFont = False
        Style.Color = clWindowFrame
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clMaroon
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.LookAndFeel.SkinName = 'Office2010Silver'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
        StyleFocused.BorderColor = clWindowFrame
        StyleFocused.BorderStyle = ebs3D
        StyleFocused.Color = 15921919
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
        StyleHot.Color = clWindowFrame
        StyleHot.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
        TabOrder = 1
        Transparent = True
        Width = 157
      end
    end
    object cxProd: TcxGroupBox
      Left = 2
      Top = 46
      Align = alTop
      PanelStyle.Active = True
      Style.BorderStyle = ebsNone
      TabOrder = 2
      Visible = False
      Height = 85
      Width = 627
      object cxLabel9: TcxLabel
        Left = 7
        Top = 45
        AutoSize = False
        Caption = 'Grupo:'
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
        Width = 75
        AnchorX = 82
      end
      object cxLabel10: TcxLabel
        Left = 7
        Top = 23
        AutoSize = False
        Caption = 'Fornecedor:'
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
        Width = 75
        AnchorX = 82
      end
      object eCodFornec: TcxButtonEdit
        Left = 83
        Top = 21
        Hint = '(F3) Busca Fornecedor'
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Buttons = <
          item
            Default = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000202E0000202E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFAF6F0C9C3C1DCDBE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EEE4D9C8B189806EB2
              AFADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF3E7E1FEF8F4998C6EA5A0A2E8E7E3F2F1F5FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E8E9BAB9B8A4ABA3F3FFFFFF
              FFFFA7B8A6A8BBAB94AAAAA09D99DFE5E5FFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
              C9C2BAC1C0B8E1C9C4F9A990E84E39DD2703FE472AF66454FAB09ADED3CC9794
              8B989693FFFFFFFFFFFFFFFFFFCFC8C3E0D7D8EA8973E82B04F23E00F84809EF
              C4B6E39E88F54000EF3500E83717F7C0AEB8C7BC9C958CFFFFFFE7DED8E0E7D9
              E75427F64B00FF811CFF6A0EFF9349FFFFFFF1AA88F47D21FF7417FF7B16E633
              00FD906DBBBAB7C4C0BCE7E5E6E69F7BF65F00FF9437FF8A2DFF8828FC8930FE
              FFFFE7BDA1FC7806FF8B31FF8D29FF9630E94B00EDC2B6ADB0A8E3E7DEE28045
              FFA342FF9B43FFA349FF9E49FC9232FDF6EEEEDDCAFA8F2AFFA349FFA249FF9E
              4BFD9A30FBA165BDC8C0E5E8E9E69B53FFC669FFB052FFB34DFFB553F1A852F9
              E4D3F3F0DDF7A043FFB55AFFB353FFB557FCA732FDBF8DC0C1C1EFECE2DAC7BE
              FBA330FFE4B1FFB45AFFB24FFFAF4FFBB853DDC097FCB250FFB556FFB86AFEB9
              60FC9E37E4D5D3D6D1C8F9F5EFE4E0DADAA983F5A52BFFE8AAFFD598FCB54EFD
              EECFE7FCFFEDB667FFC677FFBE5BF89B27FECDB2CCC7C7F9F5F3FFFFFFF9F0E9
              E9E6D7E0C2B4E89946F4B04EFFBE70FEBE64FBB55DFFB24FFBA445F7AD5FEDD3
              D6E0D8CCF6F3EAFFFFFFFFFFFFFFFFFFFAF8F2F0E2D7E6E0DCDEC6BAE7AE83F1
              AF7EEEB57CE9B28FE9D4CEE9DFDCE6E1D4FCF9F9FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFAFBF7F3F1EEF3EEF3F1F3F1F1F2ECF3EBF3F2E7FDF9FAFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            Kind = bkGlyph
          end>
        Properties.CharCase = ecUpperCase
        Properties.ClickKey = 114
        Properties.OnButtonClick = eCodFornecPropertiesButtonClick
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        StyleFocused.Color = 15921919
        TabOrder = 3
        Text = '0'
        OnExit = eCodFornecExit
        OnKeyPress = eCodProdKeyPress
        Height = 21
        Width = 60
      end
      object eFornec: TcxTextEdit
        Left = 142
        Top = 21
        TabStop = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 30
        Properties.ReadOnly = True
        Style.Color = 15855081
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Silver'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
        StyleFocused.Color = 15921919
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
        TabOrder = 4
        Text = 'TODOS'
        Width = 290
      end
      object eGrupo: TcxTextEdit
        Left = 142
        Top = 42
        TabStop = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 30
        Properties.ReadOnly = True
        Style.Color = 15855081
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Silver'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
        StyleFocused.Color = 15921919
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
        TabOrder = 6
        Text = 'TODOS'
        Width = 290
      end
      object eCodGrupo: TcxButtonEdit
        Left = 83
        Top = 42
        Hint = '(F3) Busca Grupos'
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Buttons = <
          item
            Default = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000202E0000202E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFAF6F0C9C3C1DCDBE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EEE4D9C8B189806EB2
              AFADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF3E7E1FEF8F4998C6EA5A0A2E8E7E3F2F1F5FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E8E9BAB9B8A4ABA3F3FFFFFF
              FFFFA7B8A6A8BBAB94AAAAA09D99DFE5E5FFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
              C9C2BAC1C0B8E1C9C4F9A990E84E39DD2703FE472AF66454FAB09ADED3CC9794
              8B989693FFFFFFFFFFFFFFFFFFCFC8C3E0D7D8EA8973E82B04F23E00F84809EF
              C4B6E39E88F54000EF3500E83717F7C0AEB8C7BC9C958CFFFFFFE7DED8E0E7D9
              E75427F64B00FF811CFF6A0EFF9349FFFFFFF1AA88F47D21FF7417FF7B16E633
              00FD906DBBBAB7C4C0BCE7E5E6E69F7BF65F00FF9437FF8A2DFF8828FC8930FE
              FFFFE7BDA1FC7806FF8B31FF8D29FF9630E94B00EDC2B6ADB0A8E3E7DEE28045
              FFA342FF9B43FFA349FF9E49FC9232FDF6EEEEDDCAFA8F2AFFA349FFA249FF9E
              4BFD9A30FBA165BDC8C0E5E8E9E69B53FFC669FFB052FFB34DFFB553F1A852F9
              E4D3F3F0DDF7A043FFB55AFFB353FFB557FCA732FDBF8DC0C1C1EFECE2DAC7BE
              FBA330FFE4B1FFB45AFFB24FFFAF4FFBB853DDC097FCB250FFB556FFB86AFEB9
              60FC9E37E4D5D3D6D1C8F9F5EFE4E0DADAA983F5A52BFFE8AAFFD598FCB54EFD
              EECFE7FCFFEDB667FFC677FFBE5BF89B27FECDB2CCC7C7F9F5F3FFFFFFF9F0E9
              E9E6D7E0C2B4E89946F4B04EFFBE70FEBE64FBB55DFFB24FFBA445F7AD5FEDD3
              D6E0D8CCF6F3EAFFFFFFFFFFFFFFFFFFFAF8F2F0E2D7E6E0DCDEC6BAE7AE83F1
              AF7EEEB57CE9B28FE9D4CEE9DFDCE6E1D4FCF9F9FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFAFBF7F3F1EEF3EEF3F1F3F1F1F2ECF3EBF3F2E7FDF9FAFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            Kind = bkGlyph
          end>
        Properties.CharCase = ecUpperCase
        Properties.ClickKey = 114
        Properties.OnButtonClick = eCodGrupoPropertiesButtonClick
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        StyleFocused.Color = 15921919
        TabOrder = 5
        Text = '0'
        OnExit = eCodGrupoExit
        OnKeyPress = eCodProdKeyPress
        Height = 21
        Width = 60
      end
      object eSubGrupo: TcxTextEdit
        Left = 142
        Top = 63
        TabStop = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 30
        Properties.ReadOnly = True
        Style.Color = 15855081
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Silver'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
        StyleFocused.Color = 15921919
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
        TabOrder = 8
        Text = 'TODOS'
        Width = 290
      end
      object eCodSub: TcxButtonEdit
        Left = 83
        Top = 63
        Hint = '(F3) Busca SubGrupos'
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Buttons = <
          item
            Default = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000202E0000202E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFAF6F0C9C3C1DCDBE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EEE4D9C8B189806EB2
              AFADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF3E7E1FEF8F4998C6EA5A0A2E8E7E3F2F1F5FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E8E9BAB9B8A4ABA3F3FFFFFF
              FFFFA7B8A6A8BBAB94AAAAA09D99DFE5E5FFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
              C9C2BAC1C0B8E1C9C4F9A990E84E39DD2703FE472AF66454FAB09ADED3CC9794
              8B989693FFFFFFFFFFFFFFFFFFCFC8C3E0D7D8EA8973E82B04F23E00F84809EF
              C4B6E39E88F54000EF3500E83717F7C0AEB8C7BC9C958CFFFFFFE7DED8E0E7D9
              E75427F64B00FF811CFF6A0EFF9349FFFFFFF1AA88F47D21FF7417FF7B16E633
              00FD906DBBBAB7C4C0BCE7E5E6E69F7BF65F00FF9437FF8A2DFF8828FC8930FE
              FFFFE7BDA1FC7806FF8B31FF8D29FF9630E94B00EDC2B6ADB0A8E3E7DEE28045
              FFA342FF9B43FFA349FF9E49FC9232FDF6EEEEDDCAFA8F2AFFA349FFA249FF9E
              4BFD9A30FBA165BDC8C0E5E8E9E69B53FFC669FFB052FFB34DFFB553F1A852F9
              E4D3F3F0DDF7A043FFB55AFFB353FFB557FCA732FDBF8DC0C1C1EFECE2DAC7BE
              FBA330FFE4B1FFB45AFFB24FFFAF4FFBB853DDC097FCB250FFB556FFB86AFEB9
              60FC9E37E4D5D3D6D1C8F9F5EFE4E0DADAA983F5A52BFFE8AAFFD598FCB54EFD
              EECFE7FCFFEDB667FFC677FFBE5BF89B27FECDB2CCC7C7F9F5F3FFFFFFF9F0E9
              E9E6D7E0C2B4E89946F4B04EFFBE70FEBE64FBB55DFFB24FFBA445F7AD5FEDD3
              D6E0D8CCF6F3EAFFFFFFFFFFFFFFFFFFFAF8F2F0E2D7E6E0DCDEC6BAE7AE83F1
              AF7EEEB57CE9B28FE9D4CEE9DFDCE6E1D4FCF9F9FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFAFBF7F3F1EEF3EEF3F1F3F1F1F2ECF3EBF3F2E7FDF9FAFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            Kind = bkGlyph
          end>
        Properties.CharCase = ecUpperCase
        Properties.ClickKey = 114
        Properties.OnButtonClick = eCodSubPropertiesButtonClick
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        StyleFocused.Color = 15921919
        TabOrder = 7
        Text = '0'
        OnExit = eCodSubExit
        OnKeyPress = eCodProdKeyPress
        Height = 21
        Width = 60
      end
      object cxLabel11: TcxLabel
        Left = 7
        Top = 66
        AutoSize = False
        Caption = 'SubGrupo:'
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
        Width = 75
        AnchorX = 82
      end
      object eCodProd: TcxButtonEdit
        Left = 83
        Top = 0
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Buttons = <
          item
            Default = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000202E0000202E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFAF6F0C9C3C1DCDBE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EEE4D9C8B189806EB2
              AFADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF3E7E1FEF8F4998C6EA5A0A2E8E7E3F2F1F5FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E8E9BAB9B8A4ABA3F3FFFFFF
              FFFFA7B8A6A8BBAB94AAAAA09D99DFE5E5FFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
              C9C2BAC1C0B8E1C9C4F9A990E84E39DD2703FE472AF66454FAB09ADED3CC9794
              8B989693FFFFFFFFFFFFFFFFFFCFC8C3E0D7D8EA8973E82B04F23E00F84809EF
              C4B6E39E88F54000EF3500E83717F7C0AEB8C7BC9C958CFFFFFFE7DED8E0E7D9
              E75427F64B00FF811CFF6A0EFF9349FFFFFFF1AA88F47D21FF7417FF7B16E633
              00FD906DBBBAB7C4C0BCE7E5E6E69F7BF65F00FF9437FF8A2DFF8828FC8930FE
              FFFFE7BDA1FC7806FF8B31FF8D29FF9630E94B00EDC2B6ADB0A8E3E7DEE28045
              FFA342FF9B43FFA349FF9E49FC9232FDF6EEEEDDCAFA8F2AFFA349FFA249FF9E
              4BFD9A30FBA165BDC8C0E5E8E9E69B53FFC669FFB052FFB34DFFB553F1A852F9
              E4D3F3F0DDF7A043FFB55AFFB353FFB557FCA732FDBF8DC0C1C1EFECE2DAC7BE
              FBA330FFE4B1FFB45AFFB24FFFAF4FFBB853DDC097FCB250FFB556FFB86AFEB9
              60FC9E37E4D5D3D6D1C8F9F5EFE4E0DADAA983F5A52BFFE8AAFFD598FCB54EFD
              EECFE7FCFFEDB667FFC677FFBE5BF89B27FECDB2CCC7C7F9F5F3FFFFFFF9F0E9
              E9E6D7E0C2B4E89946F4B04EFFBE70FEBE64FBB55DFFB24FFBA445F7AD5FEDD3
              D6E0D8CCF6F3EAFFFFFFFFFFFFFFFFFFFAF8F2F0E2D7E6E0DCDEC6BAE7AE83F1
              AF7EEEB57CE9B28FE9D4CEE9DFDCE6E1D4FCF9F9FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFAFBF7F3F1EEF3EEF3F1F3F1F1F2ECF3EBF3F2E7FDF9FAFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            Kind = bkGlyph
          end>
        Properties.CharCase = ecUpperCase
        Properties.ClickKey = 114
        Properties.OnButtonClick = eCodProdPropertiesButtonClick
        Style.BorderStyle = ebsUltraFlat
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        StyleFocused.Color = 15921919
        TabOrder = 0
        Text = '0'
        OnExit = eCodProdExit
        OnKeyPress = eCodProdKeyPress
        Width = 130
      end
      object eProduto: TcxTextEdit
        Left = 212
        Top = 0
        TabStop = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 30
        Properties.ReadOnly = True
        Style.BorderStyle = ebsUltraFlat
        Style.Color = 15855081
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Silver'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
        StyleFocused.Color = 15921919
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
        TabOrder = 1
        Text = 'TODOS'
        Width = 220
      end
      object cxLabel2: TcxLabel
        Left = 7
        Top = 2
        AutoSize = False
        Caption = 'Produto:'
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
        Width = 75
        AnchorX = 82
      end
      object cbAtivo: TcxComboBox
        Left = 468
        Top = 0
        Hint = 'Altera para registro (Ativo/Inativo/Todos'
        ParentShowHint = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'Todos'
          'Ativos'
          'Inativos')
        ShowHint = False
        TabOrder = 2
        Text = 'Todos'
        Width = 93
      end
      object cxLabel3: TcxLabel
        Left = 431
        Top = 2
        AutoSize = False
        Caption = 'Ativo:'
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
        Width = 38
        AnchorX = 469
      end
      object ecodProduto: TcxTextEdit
        Left = 351
        Top = 0
        TabStop = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 30
        Properties.ReadOnly = True
        Style.BorderStyle = ebsNone
        Style.Color = clRed
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Silver'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
        StyleFocused.Color = 15921919
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
        TabOrder = 14
        Visible = False
        Width = 57
      end
    end
    object cxData: TcxGroupBox
      Left = 2
      Top = 2
      Align = alTop
      PanelStyle.Active = True
      Style.BorderStyle = ebsNone
      TabOrder = 0
      Visible = False
      Height = 22
      Width = 627
      object cxLabel5: TcxLabel
        Left = 7
        Top = 4
        AutoSize = False
        Caption = 'Data Inicial:'
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
        Width = 75
        AnchorX = 82
      end
      object eDataIni: TcxDateEdit
        Left = 83
        Top = 2
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
      object cxLabel1: TcxLabel
        Left = 219
        Top = 4
        AutoSize = False
        Caption = 'Data Final:'
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
        AnchorX = 301
      end
      object eDataFim: TcxDateEdit
        Left = 302
        Top = 2
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
        TabOrder = 1
        Width = 130
      end
    end
    object pnBtn: TcxGroupBox
      Left = 2
      Top = 447
      Align = alBottom
      Style.BorderStyle = ebsUltraFlat
      TabOrder = 6
      Height = 56
      Width = 627
      object cxPrint: TcxButton
        Left = 237
        Top = 0
        Width = 75
        Height = 55
        Hint = 'Imprimir o registro'
        Caption = '&Imprimir (F6)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = cxPrintClick
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          000050505066BCBBBBEFCAC9C9FFCBCACAFECCCBCAFECDCCCBFECDCCCCFECDCC
          CCFECDCCCCFECDCDCCFECDCDCCFECDCDCCFECDCDCCFECBCACAFECAC9C9FECBCA
          CAFECBCACAFECBCACAFECBCACAFECBCACAFECBCACAFECAC9C9FECBCACAFFCBC9
          CAFF797878975B5B5A715C5C5B735857576F1010101400000000000000000000
          0000A5A4A4D1CCCACBFFD0CFCEFFD2D1D0FFD3D3D2FFD5D4D4FFD5D4D4FFD6D6
          D5FFD6D6D5FFD7D6D6FFD7D6D6FFD7D6D6FFD6D5D5FFCFCECEFFD3D2D2FFE4E4
          DBFFEBEADEFFECEBDFFFECEBDFFFECECE0FFECECE0FFECECE0FFECECE0FFECEB
          DFFFEBEADFFFEAE9DDFFDBDAD7FFCFCECFFF5151516700000000000000000000
          00009E9E9ECACECDCDFFD3D2D1FFD5D5D4FFD8D6D7FFDAD9D9FFDBDADAFFDDDC
          DCFFDDDCDCFFDEDDDDFFDEDDDDFFE0DEDEFFDBD9D9FFD2D2D1FFE4E3DEFF9E9C
          CFFF7875C7FF807ECBFF807ECCFF817ECCFF817ECCFF817ECCFF817ECCFF807E
          CCFF807DCBFF7A77C7FFCECCDBFFDDDCD8FF7473749200000000000000000000
          00009E9E9EC9CFCECEFFD5D5D4FFD9D8D8FFDDDCDCFFDFDEDEFFE0E0DFFFE2E1
          E1FFE3E2E2FFE4E3E3FFE4E3E4FFE6E5E5FFDFDEDEFFDBDAD5FFD6D4DDFF201C
          AEFF0000A9FF0903ADFF0903ADFF0903ADFF0903ADFF0903ADFF0903ADFF0903
          ADFF0A04ADFF0000A5FF7C7AC7FFF7F6E3FF908F8EB100000000000000000000
          00009F9E9EC9D0CFCFFFD6D7D6FFDCDBDBFFE0DFDFFFE3E2E2FFE5E4E4FFE7E6
          E6FFE9E8E8FFEAE9E9FFEBEAEAFFECEBEBFFE3E2E3FFE0E0D7FFB3B1D5FF0E09
          ACFF1711B2FF1913B2FF1913B2FF1913B2FF1913B2FF1913B2FF1913B2FF1913
          B2FF1913B2FF0C06AEFF4D4ABBFFCDCBD7FF97979CC400000000000000000000
          00009F9E9EC9D2D1D0FFD8D7D7FFDEDDDCFFE2E1E1FFE6E5E5FFEAE9E9FFECEB
          EBFFEDECECFFEEEDEDFFEEEDEDFFF0EFEFFFE6E5E5FFE0E0D6FFA6A3D1FF0B05
          AAFF1812B2FF1913B2FF1913B2FF1913B2FF1913B2FF1913B2FF1913B2FF1913
          B2FF1913B2FF110AAFFF4540B8FF6E6CB9FF7E7D94C500000000000000000000
          0000A09F9EC9D3D2D1FFDADAD8FFDFDEDEFFE4E3E4FFE9E8E8FFEDECECFFEFEE
          EEFFF0EFEFFFF1F0F0FFF2F1F1FFF4F3F3FFEAE9E9FFDFDED5FFAFAED0FF0E09
          A7FF1711AFFF1913B2FF1913B2FF1913B2FF1913B2FF1913B2FF1913B2FF1913
          B2FF1A14B1FF0B06AAFF4C48B6FFE8E8DCFF898887A900000000000000000000
          0000A09F9EC9D3D2D1FFDAD9D9FFE1E0E0FFE7E6E6FFECEBEBFFEFEEEEFFF1F0
          F0FFF2F1F1FFF4F3F3FFF4F3F3FFF5F4F4FFF1F0F0FFDCDBD5FFC3C2CCFF1714
          A0FF0100A1FF0903ABFF0802ADFF0802ADFF0802ADFF0802ADFF0802ADFF0902
          ACFF0904A8FF00009CFF6D6BB8FFE5E4D6FF5252526900000000000000000000
          0000A09F9EC9D3D2D1FFDBDADAFFE3E2E2FFEAE9E9FFEEEDEDFFEFEEEEFFF3F1
          F2FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF5F4F4FFEAE9E7FFDFDEDCFF9695
          C8FF7270BCFF7C79C6FF817FCFFF827ED2FF827ED2FF827ED2FF827ED2FF807D
          CDFF7774BCFA3E3C73AB61606E916E6E6B860D0D0D1100000000000000000000
          0000A09F9FC9D3D2D2FFDCDBDBFFE3E2E2FFEAE9E9FFEEEDEDFFF2F1F1FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF5F4F4FFF6F5F4FFFFFE
          F7FFEBEADFFFEEEEE1FFFEFEF1FFFFFFF8FFFFFFF8FFFFFFF8FFFFFFF7FFFAF9
          EDFFDFDED2F42A2A2B3700000000000000000000000000000000000000000000
          0000A09F9FC9D3D2D2FFDCDBDBFFE4E3E3FFEBEAEAFFEFEEEEFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF5F4
          F4FFE0DFDFFFD8D7D7FFE9E8E7FFF1F0F0FFF4F3F3FFF4F3F3FFEFEEEEFFE4E2
          E2FFBCBBBBE51B1B1A2200000000000000000000000000000000000000000000
          0000A09F9FC9D3D2D2FFDCDCDBFFE4E3E3FFEBEAEAFFEFEEEEFFF3F1F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF6F5
          F5FFEBEAEAFFD4D3D3FFE2E1E1FFEBEAEAFFEFEEEEFFEEEDEDFFE9E9E8FFDEDD
          DDFFA3A2A2CB0000000000000000000000000000000000000000000000000000
          0000A09F9FC9D3D2D2FFDDDCDCFFE4E3E3FFECEBEBFFF0EFEFFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF6F5
          F5FFEAE9E9FFD1D0D0FFDBDAD9FFE1E0E0FFE3E2E2FFE4E2E2FFE0DFDEFFD8D7
          D6FFA3A2A2CC0000000000000000000000000000000000000000000000000000
          0000A09F9FC9D4D3D3FFDDDCDCFFE5E4E4FFECEBEBFFF0EFEFFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF6F5
          F5FFE9E8E8FFCBCACAFFD0CFCEFFD2D1D1FFD3D2D1FFD3D2D1FFD2D1D0FFCFCE
          CDFFA1A0A0CC0000000000000000000000000000000000000000000000000000
          0000A09F9FC9D4D3D3FFDDDCDCFFE5E4E4FFECEBEBFFF0EFEFFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF5F4
          F4FFF1F0F0FFE4E3E3FFE2E1E1FFE1E0E0FFDDDCDCFFD9D8D8FFD5D4D3FFD0CF
          CFFFA2A0A0CB0000000000000000000000000000000000000000000000000000
          0000A09F9FC9D4D3D3FFDDDCDCFFE5E4E4FFECEBEBFFF0EFEFFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF6F5F5FFF3F2F2FFF0EFEFFFEAE9E9FFE4E3E2FFDDDCDBFFD6D5
          D4FFA2A1A1CA0000000000000000000000000000000000000000000000000000
          0000A09F9FC9D4D3D3FFDDDCDCFFE5E4E4FFECEBEBFFF0EFEFFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF1F0F0FFEEEDEDFFE9E8E8FFE2E1E1FFDBDADAFFD5D4
          D3FFA2A1A1CA0000000000000000000000000000000000000000000000000000
          0000A09F9FC9D4D3D3FFDDDCDCFFE5E4E4FFECEBEBFFF0EFEFFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF1F0F0FFEDECECFFE8E7E7FFE2E1E1FFDCDADBFFD4D4
          D3FFA2A1A1CA0000000000000000000000000000000000000000000000000000
          0000A09F9FC9D4D3D3FFDDDCDCFFE5E4E4FFECEBEBFFF0EFEFFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF1F0F0FFEDECECFFE8E7E7FFE2E1E1FFDBDADAFFD4D4
          D3FFA2A1A1CA0000000000000000000000000000000000000000000000000000
          0000A09F9FC9D4D3D2FFDDDCDCFFE5E4E4FFECEBEBFFF0EFEFFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF3F1F2FFF0EFEFFFECEBEBFFE7E6E6FFE1E0E0FFDAD9DAFFD4D3
          D2FFA2A1A0CA0000000000000000000000000000000000000000000000000000
          0000A09F9FC9D3D2D2FFDDDCDBFFE4E3E3FFEBEBEAFFEEEEEDFFF3F1F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF2F1F1FFEFEEEEFFEBEAEAFFE6E5E5FFE0DFDFFFDAD9D9FFD4D3
          D2FFA2A1A0CA0000000000000000000000000000000000000000000000000000
          0000A09F9FC9D3D2D2FFDCDBDBFFE4E3E3FFEBEAEAFFEFEEEEFFF2F1F1FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF3F2F2FFEFEEEFFFECEBECFFE7E6E8FFE2E1E2FFDDDBDDFFD6D6D7FFD1D0
          D1FFA09FA0CA0000000000000000000000000000000000000000000000000000
          0000A09F9FC9D3D2D2FFDCDBDBFFE3E2E2FFEAE9E9FFEEEDEDFFF1F1F0FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2
          F3FFF6F5F2FFFFFFF4FFFFFFF1FFFCFCECFFF7F7E6FFF1F1E1FFEBEBDCFFE5E6
          D6FFB3B3A6CE0000000000000000000000000000000000000000000000000000
          0000A09F9EC9D3D2D1FFDBDADAFFE2E1E1FFE9E8E8FFEDECECFFF0EFEFFFF3F2
          F2FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F2FFF6F5
          F2FFEDEDEEFF9290D0FF7D7AC8FF817FC5FF7F7CC1FF7B79BCFF7977B8FF7674
          B3FF55537BB10000000000000000000000000000000000000000000000000000
          0000A09F9EC9D3D2D1FFDBDADAFFE1E0E0FFE8E7E7FFECEBEBFFEFEEEEFFF1F0
          F0FFF3F2F2FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF2F1F1FFEFEFEFFFFEFE
          F4FF7473C7FF00009DFF02009FFF02009DFF000099FF020094FF010091FF0000
          6BC504040C130000000000000000000000000000000000000000000000000000
          00009F9E9EC9D2D1D1FFDAD9D9FFE0DFDEFFE6E5E5FFEAE9E9FFEDECECFFEFEE
          EEFFF1F0F0FFF2F1F1FFF2F1F1FFF2F1F1FFF1F0F0FFEFEFEEFFEDEDEDFFFCFC
          F2FF4E4BBAFF0502A1FF1B14A4FF1812A1FF17129DFF171199FF120E70C10100
          0A12000000000000000000000000000000000000000000000000000000000000
          00009F9E9EC9D2D1D0FFD9D8D8FFDEDDDDFFE2E1E1FFE7E6E6FFEBEAEAFFEDEC
          ECFFEDECECFFEEEDEDFFEFEEEEFFEEEDEDFFEEEDEDFFEDECECFFEAE8E9FFFBFA
          EDFF5351B8FF05029DFF1913A1FF16119CFF161098FF100C71C4010109100000
          0000000000000000000000000000000000000000000000000000000000000000
          00009F9E9EC9D1D0CFFFD7D6D6FFDCDBDBFFE0DFDEFFE3E2E2FFE7E6E6FFE9E8
          E8FFEAE9E9FFEBEAEAFFEBEAEAFFEBEAEAFFEAE9E9FFE8E7E7FFE4E3E4FFF7F6
          E7FF524FB4FF05019AFF18129DFF151098FF100C70C102010B13000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009E9D9EC9CFCECEFFD5D5D4FFDAD9D9FFDDDCDCFFDFDEDDFFE1E0E0FFE3E2
          E2FFE4E3E3FFE5E4E4FFE5E4E4FFE5E4E4FFE4E3E3FFE2E1E0FFDFDEDEFFF1F1
          E2FF504EAFFF040296FF171198FF100C72C40101091000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009E9E9ECACDCCCCFFD3D3D2FFD6D5D4FFD8D7D7FFDAD9D9FFDCDADBFFDDDC
          DCFFDEDDDCFFDEDDDCFFDEDDDDFFDEDDDCFFDDDCDCFFDCDBDBFFD9D8D9FFEBEA
          DDFF4E4DABFF040192FF110D70C102010B130000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000A2A2A2CECBCACAFFCFCECEFFD1D0D0FFD3D2D2FFD5D4D4FFD5D5D4FFD6D5
          D5FFD6D5D5FFD7D6D6FFD7D6D6FFD7D6D5FFD6D5D5FFD5D5D4FFD3D2D3FFE6E4
          D6FF4B49A6FF04016DC401010910000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003A3A3A4AA8A7A7D6BCBBBBEFB9B8B8E8BAB9B9E8BAB9B9E8BBBABAE8BBBA
          BAE8BBBABAE8BBBABAE8BBBABAE8BBBABAE8BBBABAE8BBBABAE8B8B7B8E7D4D4
          C6F3363374B700000B1300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Layout = blGlyphTop
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        SpeedButtonOptions.Flat = True
        SpeedButtonOptions.Transparent = True
      end
      object cxSair: TcxButton
        Left = 312
        Top = 0
        Width = 75
        Height = 55
        Hint = 'Sair da tela'
        Cancel = True
        Caption = '&Fechar (F10)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = cxSairClick
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000073737393CAC8C9FFCBCACBFFCECDCDFFCFCECDFFD0CFCEFFD0CFCFFFD0D0
          CFFFD0CFCFFFD0D0CFFFD0D0CFFFD0D0CFFFD0D0CFFFD0D0CFFFD0D0CFFFD1D0
          D0FFD0CFCFFFD1CFCFFFCECECDFFCFCECEFFD0CFD0FFD1D0D0FFCECDCDFFBAB9
          BAED1616161C0000000000000000000000000000000000000000000000000000
          0000A6A5A5D2CDCCCBFFD1D0CFFFD3D2D1FFD4D4D3FFD6D5D5FFD7D6D6FFD8D8
          D7FFD9D8D8FFD9D8D8FFD9D8D8FFD9D8D8FFD9D8D8FFD9D8D8FFD9D8D8FFD9D8
          D8FFD8D7D7FFD5D3D3FFD8D8D7FFE4E3E3FFECEBE8FFEEEDE9FFEAE9E7FFDCDB
          DCFF6E6E6E880303030400000000000000000000000000000000000000000000
          00009F9E9ECACFCECEFFD4D3D2FFD7D6D6FFDAD9D9FFDCDBDBFFDCDCDBFFDFDE
          DEFFE0DFDFFFE0DFDFFFE1E0DFFFE1E0DFFFE1E0DFFFE1E0DFFFE0DFDFFFDFDE
          DEFFDAD9D9FFDFDFDEFFE5E4E4FFE2E1DFFFD4D3D9FFCECDD5FFD8D7D9FFE9E7
          E6FFE7E6E6FF7F7E7E9902020202000000000000000000000000000000000000
          0000A09F9ECACFCFCFFFD6D6D4FFDBD9DAFFDEDDDDFFE0E0DFFFE2E1E1FFE4E3
          E3FFE6E5E5FFE6E5E5FFE7E6E6FFE7E6E6FFE7E6E6FFE7E6E6FFE6E5E5FFE1E0
          E0FFDEDDDDFFE4E3E3FFDBDAD9FFE1E0DBFF6763B7FF3834ABFFB3B1C6FFD6D6
          CFFFE1E0E0FFE7E6E6FF504F4F63000000000000000000000000000000000000
          00009F9E9FCAD1D0D0FFD8D7D7FFDDDCDCFFE1E0E0FFE5E4E4FFE8E7E7FFE9E8
          E8FFEBEAEAFFECEBEBFFECEBEBFFEDECECFFECECEBFFECEBEBFFECEBEBFFE0DF
          DFFFE1E0E0FFDEDCDDFFE5E3E3FFE3E3E0FF423FACFF07029DFFAAA8C5FFD5D4
          CEFF7D7D7D9BE6E5E5FEB4B4B4D4000000000000000000000000000000000000
          0000A09F9FCAD2D1D0FFD9D9D9FFDFDEDEFFE4E3E3FFE9E8E8FFEBEAEAFFEDEC
          ECFFEFEEEEFFEFEEEEFFF0EFEFFFF0EFEFFFF0EFEFFFF0EFEFFFEEEDEDFFDFDE
          DEFFE2E1E1FFE1E0E0FFEAE9E8FFE6E5E3FF4A46AFFF100B9FFFAEACC7FFD6D5
          CFFF37373746C0BFBFDBDFDEDEFC000000000000000000000000000000000000
          0000A1A09FCAD3D2D1FFDBDAD9FFE1E0DFFFE6E5E5FFEBEAEAFFEEEDEDFFF0EF
          EFFFF2F1F1FFF2F1F1FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF1F0F0FFE0DF
          DFFFE0DFDFFFE7E6E6FFEDECEBFFE8E7E5FF4A46AFFF100B9EFFAEACC7FFD6D5
          CFFF3131313EA5A4A4BFE5E4E4FF000000000000000000000000000000000000
          0000A1A09FCAD3D2D2FFDCDBDBFFE2E1E1FFE9E8E8FFEDECECFFF0EFEFFFF2F1
          F1FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F2FFE0DF
          DFFFE2E1E1FFE4E4E3FFEFEEEDFFEBEAE7FF4B47B0FF100B9FFFAFACC8FFD6D5
          CFFF37373746C0C0C0DBE1E0E0FC000000000000000000000000000000000000
          0000A1A09FCAD3D2D2FFDCDBDBFFE3E2E2FFEAE9E9FFEEEDEDFFF1F0F0FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFE5E4
          E4FFE3E2E2FFE1E0E0FFEEEDEDFFECEBE9FF4B47B1FF100B9FFFAEADC8FFD6D5
          CFFF7D7D7D9BE9E8E8FFBBBABBDA000000000000000000000000000000000000
          0000A1A0A0CAD4D3D3FFDDDCDCFFE4E3E3FFEBEAEAFFEFEEEEFFF2F1F1FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF5F4F4FFEEED
          EDFFE1E0E0FFE8E6E7FFE4E3E1FFECEBE8FF4B47B1FF0D07A0FFAEADC8FFD8D8
          D1FFE0E0DFFDE9E9E8FF5A59596F000000000000000000000000000000000000
          0000A1A0A0CAD4D3D3FFDDDCDCFFE4E3E3FFEBEBEAFFF0EFEFFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF5F4
          F4FFE8E7E7FFE3E2E2FFE9E8E7FFF3F1EAFF5550BCFF0E08ABFFB3B1CDFFEBEB
          E3FFECEBEBFF8B8A8AA606050507000000000000000000000000000000000000
          0000A1A0A0CAD4D3D3FFDDDCDCFFE5E4E4FFECEBEBFFF0EFEFFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF5F4F4FFE8E7E7FFE3E2E1FFF6F5EDFF4C48BEFF0500ABFFB4B3D1FFE3E3
          DBFF7D7C7C970A0A0A0C00000000000000000000000000000000000000000000
          0000A2A1A0CAD5D4D3FFDEDDDDFFE5E4E4FFECEBEBFFF0EFEFFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFEEEDEDFFF0EFEBFF9795CAFF706CBAFFC6C4D1FFD3D2
          CEFF2323232C0000000000000000000000000000000000000000000000000000
          0000A2A1A0CAD5D4D3FFDEDDDDFFE5E4E4FFECEBEBFFF1EFF0FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF3F2F2FFF0EFEFFFECEBEBFFEEEDE8FFEAEAE2FFDAD9D8FFD0CD
          CEFF282727320000000000000000000000000000000000000000000000000000
          0000A2A1A0CAD5D4D3FFDEDDDDFFE5E4E4FFECEBEBFFF1EFF0FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF3F2F2FFF0EFEFFFECEBEBFFE6E5E5FFDFDEDEFFD8D7D7FFD0CE
          CEFF292828330000000000000000000000000000000000000000000000000000
          0000A2A1A0CAD5D4D3FFDEDDDDFFE5E4E4FFECEBEBFFF1EFF0FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF3F2F2FFF0EFEFFFECEBEBFFE6E5E5FFDFDEDEFFD8D7D7FFD0CE
          CEFF292828330000000000000000000000000000000000000000000000000000
          0000A2A1A0CAD5D4D3FFDEDDDDFFE5E4E4FFECEBEBFFF1EFF0FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF3F2F2FFF0EFEFFFECEBEBFFE6E5E5FFDFDEDEFFD8D7D7FFCFCE
          CEFF282828330000000000000000000000000000000000000000000000000000
          0000A2A1A0CAD5D4D3FFDEDDDDFFE5E4E4FFECEBEBFFF1EFF0FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF3F2F2FFEFEEEEFFEBEAEAFFE5E4E4FFDFDEDEFFD8D7D7FFCFCE
          CEFF282828330000000000000000000000000000000000000000000000000000
          0000A2A1A0CAD5D4D3FFDEDDDDFFE5E4E4FFECEBEBFFF1F0F0FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF2F1F1FFEFEEEEFFEBEAEAFFE4E3E3FFDEDDDDFFD7D6D6FFCFCE
          CEFF282828330000000000000000000000000000000000000000000000000000
          0000A1A0A0CAD4D3D3FFDDDCDCFFE5E4E4FFECEBEBFFEFEEEEFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF3F2F2FFF1F0F0FFEEEDEDFFE9E8E8FFE3E2E2FFDDDCDCFFD7D6D5FFCFCE
          CDFF282828330000000000000000000000000000000000000000000000000000
          0000A1A0A0CAD4D3D3FFDDDCDCFFE4E3E3FFEBEBEAFFEFEEEEFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF2F1F2FFEFEDEEFFEBEBEAFFE6E5E6FFE1DFE0FFDAD9DAFFD5D4D4FFCDCC
          CDFF282828330000000000000000000000000000000000000000000000000000
          0000A1A0A0CAD3D3D2FFDDDCDBFFE4E3E2FFEBEAEAFFEEEEEDFFF2F1F1FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2
          F3FFF6F6F2FFFDFCF2FFF9F9EEFFF5F4E8FFEFEEE2FFE9E8DEFFE3E2D8FFDCDB
          D0FF2C2C2A340000000000000000000000000000000000000000000000000000
          0000A1A09FCAD3D2D2FFDCDBDBFFE3E2E2FFEAE9E9FFEDEDECFFF0EFEFFFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F2FFF9F9
          F2FFE5E4EBFFABA8D9FFADABD5FFACA9D1FFA7A6CCFFA3A2C7FFA09EC2FF9B99
          BCFF1C1C222F0000000000000000000000000000000000000000000000000000
          0000A1A09FCAD3D2D2FFDBDBDBFFE2E1E1FFE8E7E7FFEDECECFFEFEFEEFFF2F1
          F1FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F2FFF3F2F2FFF5F5F1FFECEB
          EDFF3F3DB5FF0402A0FF0704A0FF06049DFF060498FF060494FF04028FFF0E0D
          4677020204060000000000000000000000000000000000000000000000000000
          0000A09F9FCAD2D1D1FFDBDAD9FFE0E0DFFFE6E5E5FFEBEAEAFFEEEDEDFFEFEE
          EEFFF1F0F0FFF2F1F1FFF3F2F2FFF2F1F1FFF1F0F0FFF0EFEFFFF8F7F0FFD0CE
          E4FF0D0BA5FF0F0BA4FF1610A2FF150F9EFF140F9AFF140E96FF060343760000
          0000000000000000000000000000000000000000000000000000000000000000
          0000A09F9FCAD2D1D1FFDAD9D8FFDFDEDEFFE3E2E2FFE8E7E7FFEBEAEAFFEDEC
          ECFFEEEDEDFFEFEEEEFFEFEEEEFFEFEEEEFFEDEDECFFEDECECFFF4F3EDFFD3D1
          E1FF1413A5FF110CA0FF16119FFF16119BFF151096FF0A074375000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000A09E9ECAD1D0D0FFD7D6D7FFDDDCDBFFE1E0DFFFE4E3E3FFE7E6E6FFE9E8
          E8FFEBEAEAFFEBEAEAFFEBEAEAFFEBEAEAFFEAE9E9FFE9E8E8FFEFEEE8FFD0CF
          DCFF1411A1FF100B9DFF16109BFF151096FF0A08457800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009F9E9ECAD0CFCEFFD5D5D5FFDAD9D9FFDEDDDCFFE0E0DFFFE1E1E0FFE3E2
          E2FFE5E4E3FFE5E4E4FFE5E4E4FFE5E4E4FFE3E2E2FFE2E1E1FFE9E9E1FFCCCA
          D7FF13119DFF100B99FF161096FF0A0743740000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009F9E9ECBCECDCDFFD3D3D2FFD6D6D5FFD8D7D8FFDBDADAFFDCDBDBFFDDDC
          DCFFDEDDDCFFDEDDDDFFDEDDDDFFDEDDDDFFDDDCDCFFDCDBDBFFE2E2DCFFC6C5
          D1FF121198FF0F0A94FF0A074477000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000A3A2A2CFCCCBCBFFD0CFCEFFD2D2D0FFD3D2D2FFD5D4D4FFD6D5D5FFD6D5
          D5FFD6D6D5FFD7D6D6FFD7D6D6FFD7D6D6FFD6D5D5FFD5D5D4FFDDDCD5FFC1BF
          CBFF121093FF0705427500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003C3C3C4DACABABDABCBBBCEFBAB9B9E9BAB9B9E9BAB9B9E9BBBABAE9BBBA
          BAE9BBBABAE9BBBABAE9BBBABAE9BBBABAE9BBBABAE9BBBABAE9C3C3BDEAB2B0
          BAF1080742740000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Layout = blGlyphTop
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        SpeedButtonOptions.Flat = True
        SpeedButtonOptions.Transparent = True
      end
    end
    object cxOpcao: TcxGroupBox
      Left = 2
      Top = 131
      Align = alTop
      PanelStyle.Active = True
      Style.BorderStyle = ebsNone
      TabOrder = 3
      Visible = False
      Height = 19
      Width = 627
      object cbOpcao: TcxComboBox
        Left = 83
        Top = -1
        ParentFont = False
        ParentShowHint = False
        Properties.DropDownListStyle = lsFixedList
        ShowHint = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 200
      end
      object clOpcao: TcxLabel
        Left = 7
        Top = 1
        AutoSize = False
        Caption = 'Op'#231#227'o 1:'
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
        Width = 75
        AnchorX = 82
      end
    end
    object cxOpcao2: TcxGroupBox
      Left = 2
      Top = 150
      Align = alTop
      PanelStyle.Active = True
      Style.BorderStyle = ebsNone
      TabOrder = 4
      Visible = False
      Height = 21
      Width = 627
      object cbOpcao2: TcxComboBox
        Left = 83
        Top = 1
        ParentFont = False
        ParentShowHint = False
        Properties.DropDownListStyle = lsFixedList
        ShowHint = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 200
      end
      object clOpcao2: TcxLabel
        Left = 7
        Top = 3
        AutoSize = False
        Caption = 'Op'#231#227'o 2:'
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
        Width = 75
        AnchorX = 82
      end
    end
    object cxClie: TcxGroupBox
      Left = 2
      Top = 24
      Align = alTop
      PanelStyle.Active = True
      Style.BorderStyle = ebsNone
      TabOrder = 1
      Height = 22
      Width = 627
      object clClie: TcxLabel
        Left = -6
        Top = 4
        AutoSize = False
        Caption = 'Cliente/Fornec:'
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
        Width = 90
        AnchorX = 84
      end
      object eCodClie: TcxButtonEdit
        Left = 83
        Top = 1
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.Buttons = <
          item
            Default = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000202E0000202E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFAF6F0C9C3C1DCDBE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EEE4D9C8B189806EB2
              AFADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFF3E7E1FEF8F4998C6EA5A0A2E8E7E3F2F1F5FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E8E9BAB9B8A4ABA3F3FFFFFF
              FFFFA7B8A6A8BBAB94AAAAA09D99DFE5E5FFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
              C9C2BAC1C0B8E1C9C4F9A990E84E39DD2703FE472AF66454FAB09ADED3CC9794
              8B989693FFFFFFFFFFFFFFFFFFCFC8C3E0D7D8EA8973E82B04F23E00F84809EF
              C4B6E39E88F54000EF3500E83717F7C0AEB8C7BC9C958CFFFFFFE7DED8E0E7D9
              E75427F64B00FF811CFF6A0EFF9349FFFFFFF1AA88F47D21FF7417FF7B16E633
              00FD906DBBBAB7C4C0BCE7E5E6E69F7BF65F00FF9437FF8A2DFF8828FC8930FE
              FFFFE7BDA1FC7806FF8B31FF8D29FF9630E94B00EDC2B6ADB0A8E3E7DEE28045
              FFA342FF9B43FFA349FF9E49FC9232FDF6EEEEDDCAFA8F2AFFA349FFA249FF9E
              4BFD9A30FBA165BDC8C0E5E8E9E69B53FFC669FFB052FFB34DFFB553F1A852F9
              E4D3F3F0DDF7A043FFB55AFFB353FFB557FCA732FDBF8DC0C1C1EFECE2DAC7BE
              FBA330FFE4B1FFB45AFFB24FFFAF4FFBB853DDC097FCB250FFB556FFB86AFEB9
              60FC9E37E4D5D3D6D1C8F9F5EFE4E0DADAA983F5A52BFFE8AAFFD598FCB54EFD
              EECFE7FCFFEDB667FFC677FFBE5BF89B27FECDB2CCC7C7F9F5F3FFFFFFF9F0E9
              E9E6D7E0C2B4E89946F4B04EFFBE70FEBE64FBB55DFFB24FFBA445F7AD5FEDD3
              D6E0D8CCF6F3EAFFFFFFFFFFFFFFFFFFFAF8F2F0E2D7E6E0DCDEC6BAE7AE83F1
              AF7EEEB57CE9B28FE9D4CEE9DFDCE6E1D4FCF9F9FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFAFBF7F3F1EEF3EEF3F1F3F1F1F2ECF3EBF3F2E7FDF9FAFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            Kind = bkGlyph
          end>
        Properties.CharCase = ecUpperCase
        Properties.ClickKey = 114
        Properties.OnButtonClick = eCodCliePropertiesButtonClick
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        StyleFocused.Color = 15921919
        TabOrder = 0
        Text = '0'
        OnExit = eCodClieExit
        OnKeyPress = eCodProdKeyPress
        Height = 21
        Width = 60
      end
      object eCliente: TcxTextEdit
        Left = 143
        Top = 1
        TabStop = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 30
        Properties.ReadOnly = True
        Style.Color = 15855081
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Silver'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
        StyleFocused.Color = 15921919
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
        TabOrder = 1
        Text = 'TODOS'
        Width = 290
      end
    end
    object cxAgrupa: TcxGroupBox
      Left = 2
      Top = 171
      Align = alTop
      PanelStyle.Active = True
      Style.BorderStyle = ebsNone
      TabOrder = 7
      Visible = False
      Height = 21
      Width = 627
      object cbAgrupa: TcxComboBox
        Left = 83
        Top = 1
        ParentFont = False
        ParentShowHint = False
        Properties.DropDownListStyle = lsFixedList
        ShowHint = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 200
      end
      object cxLabel7: TcxLabel
        Left = 7
        Top = 3
        AutoSize = False
        Caption = 'Agrupar:'
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
        Width = 75
        AnchorX = 82
      end
    end
  end
end
