object Fcad_Prod: TFcad_Prod
  Left = 272
  Top = 160
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cadastro de Produtos'
  ClientHeight = 484
  ClientWidth = 941
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnCad: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 0
    Height = 484
    Width = 941
    object cxGroupBox1: TcxGroupBox
      Left = 2
      Top = 58
      Align = alTop
      PanelStyle.Active = True
      Style.BorderStyle = ebsNone
      TabOrder = 0
      Height = 241
      Width = 937
      object cxLabel4: TcxLabel
        Left = 46
        Top = 14
        AutoSize = False
        Caption = 'C'#243'digo:'
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
        AnchorX = 136
      end
      object eCodigo: TcxTextEdit
        Left = 136
        Top = 12
        TabStop = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.HotTrack = True
        Style.LookAndFeel.NativeStyle = False
        Style.Shadow = False
        Style.IsFontAssigned = True
        StyleDisabled.BorderColor = clWindowFrame
        StyleDisabled.BorderStyle = ebs3D
        StyleDisabled.Color = clWindowFrame
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.TextColor = clWindowFrame
        StyleFocused.Color = 15921919
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 121
      end
      object cxLabel5: TcxLabel
        Left = 46
        Top = 35
        AutoSize = False
        Caption = 'Refer'#234'ncia:'
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
        AnchorX = 136
      end
      object eRef: TcxTextEdit
        Left = 136
        Top = 33
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 30
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
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
        TabOrder = 3
        Width = 200
      end
      object cxLabel6: TcxLabel
        Left = 46
        Top = 56
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
        Width = 90
        AnchorX = 136
      end
      object eProduto: TcxTextEdit
        Left = 136
        Top = 54
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 150
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
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
        TabOrder = 4
        Width = 400
      end
      object eAtivo: TcxCheckBox
        Left = 260
        Top = 12
        Caption = 'Ativo'
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
        Width = 121
      end
      object eMarca: TcxTextEdit
        Left = 136
        Top = 172
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 50
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
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
        TabOrder = 12
        Width = 300
      end
      object cxLabel7: TcxLabel
        Left = 46
        Top = 174
        AutoSize = False
        Caption = 'Marca:'
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
        AnchorX = 136
      end
      object cxLabel8: TcxLabel
        Left = 440
        Top = 173
        AutoSize = False
        Caption = 'Un:'
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
        Height = 17
        Width = 35
        AnchorX = 475
      end
      object eUn: TcxTextEdit
        Left = 476
        Top = 172
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 30
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
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
        TabOrder = 13
        Width = 60
      end
      object cxLabel9: TcxLabel
        Left = 46
        Top = 133
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
        Width = 90
        AnchorX = 136
      end
      object cxLabel10: TcxLabel
        Left = 46
        Top = 111
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
        Width = 90
        AnchorX = 136
      end
      object eCodFornec: TcxButtonEdit
        Left = 136
        Top = 109
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
        TabOrder = 6
        Text = '0'
        OnExit = eCodFornecExit
        OnKeyPress = eCodFornecKeyPress
        Height = 21
        Width = 60
      end
      object eFornec: TcxTextEdit
        Left = 196
        Top = 109
        TabStop = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 30
        Properties.ReadOnly = True
        Style.Color = clBtnFace
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
        TabOrder = 7
        Text = 'NENHUM'
        Width = 340
      end
      object eGrupo: TcxTextEdit
        Left = 196
        Top = 130
        TabStop = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 30
        Properties.ReadOnly = True
        Style.Color = clBtnFace
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
        TabOrder = 9
        Text = 'NENHUM'
        Width = 340
      end
      object eCodGrupo: TcxButtonEdit
        Left = 136
        Top = 130
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
        TabOrder = 8
        Text = '0'
        OnExit = eCodGrupoExit
        OnKeyPress = eCodGrupoKeyPress
        Height = 21
        Width = 60
      end
      object eSubGrupo: TcxTextEdit
        Left = 196
        Top = 151
        TabStop = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 30
        Properties.ReadOnly = True
        Style.Color = clBtnFace
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
        TabOrder = 11
        Text = 'NENHUM'
        Width = 340
      end
      object eCodSub: TcxButtonEdit
        Left = 136
        Top = 151
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
        TabOrder = 10
        Text = '0'
        OnExit = eCodSubExit
        OnKeyPress = eCodGrupoKeyPress
        Height = 21
        Width = 60
      end
      object cxLabel11: TcxLabel
        Left = 46
        Top = 154
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
        Width = 90
        AnchorX = 136
      end
      object eCodbar: TcxTextEdit
        Left = 136
        Top = 193
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 30
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
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
        TabOrder = 16
        OnExit = eCodbarExit
        Width = 300
      end
      object cxLabel12: TcxLabel
        Left = 46
        Top = 195
        AutoSize = False
        Caption = 'C'#243'd. Barras:'
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
        AnchorX = 136
      end
      object cxLabel13: TcxLabel
        Left = 334
        Top = 14
        AutoSize = False
        Caption = 'Dt. Cadastro:'
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
        Width = 80
        AnchorX = 414
      end
      object eDtCad: TcxDateEdit
        Left = 415
        Top = 12
        AutoSize = False
        Enabled = False
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Height = 21
        Width = 121
      end
      object cxImage: TcxImage
        Left = 536
        Top = 12
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000080
          000000800806000000C33E61CB000000206348524D00007A25000080830000F9
          FF000080E9000075300000EA6000003A980000176F925FC54600000009704859
          7300000B0C00000B0C013F4022C800001B9A49444154785EED5D67D01CD5951D
          81820942C806830896589194965C20995D4BB20D08E3C5AC0C48B6840CE54542
          E84B12FFC939E79C438950842A8A2A72CEA98A9C639129728E7B4ED377EACC9D
          F7BA7BBEEF9B914AD33F5ECD4CA717EEB9E786F75E4FE5E79F7FAE94A57DC7A0
          147E9B2B4009801200ED4B7FA5E9FBB9523240C9002503B43313940C503240C9
          002503B4B91694002801D0B6A6B06D3BDECE5AAF7D2F01D0E6EC5702A0044019
          05B4B3392819A0648092014A0668732D28015002A06D4D61DB76BC9DB5BECC03
          948C5755FC9201DA1C0C25004A00F47F1878E79D7756F6DF7F7F96950F38E080
          2D50B643D9DE179CE7B11D5026A38CE43D871D7658E5EBAFBF0E02D39E8B6B2B
          CB7AE158581FD3B10CF699E74E39E594CAF7DF7FDF2B65EED54D790ED45D77DD
          45E10F43077646E9445998537A70FEDFB8673C01F0EDB7DF960048016040F09F
          0A8EA50E00B7DD76DBCA68F06C3472BF14001DF8AC2B071E78A01EEBC63D0B0F
          3DF4D04DBFFCF2CBB6070005AC425716F0ECB05401E0ABAFBE1A70D45147ED88
          4652F81D14B22FA1E32940BA70DF82BBEFBE7BCD10CBA4CCB2CCD3BF9A370F02
          D57C03C95203809F7EFAA902218D42A3BB21F4CE90F063C70C14B877D191471E
          B93381A420E0B36FBDF5D6AA56B4930FA06CB05403E0871F7E1870ECB1C7EE44
          2AF7823EE8A0833A422500884EB2C0C30F3F5CC3027876E5E8A38F6E3B00C46C
          BFF701383E79BE59E87CAF6E8A55F4FAEBAF0F8540F746E932C1AAD00F3EF8E0
          0E5FF4BCDD4316B8F2CA2BB7F9F1C71FABED7BEDB5D72A38DF36F4EFED7C8805
          5A6E022890C71E7BAC72C71D7754EEB9E79E8A77D660BB49FF9D102A4BA2F126
          F0430E39A4030E5E5DE1715EA34060C4006DDFE9BBEFBE4BCC00A3820B2EB8A0
          6DB4DF3B80DE27F00E61CB7C0008A472E289275A8C5F39E698636A42B6471F7D
          B40A000A55858EF0AE83E5F0C30FAF2976DC80C0FBA0E90B51CF4EF00392E713
          70EC743B3140968F138A025A6202986C38F3CC336BC2934B2EB9643968FE0894
          CD162F5EBC3D84B48042A4B6ABC08F38E2880E3877D5824821F9CEE30405AFE5
          3D0402D8A00BE7679F76DA6953E1534CC1F326634026E3D9C9673B15085BFB3B
          09BF27A0FC5A7D8396318007000432060DF9074A071D3F52B769BD09DF844E81
          83D6EB0A8FB338202C2008F0FC45A1827A16B5696168CD71DE178549B6B55B9A
          0914000C41E5D4767AFB3D0CF9CCDE538BA9D1A6F12678988B0E68734DE13116
          02C318C14C84B041D53F88E5132C847489A5CCC4933ECBEEE7A73EAB487D56A7
          FFCC7A969DD36BFCB19C3E59769511D3C4534F3DB5D21213C04A600206A2D29D
          D1E1FDD86975F6A8FDAAF914AA09FEB8E38EEB6039FEF8E36B3E090A05829905
          EF1B84A28546F20CCBCAB50E284C9C2DC2186E4BFFACE96120276920C4FF4223
          EA846F36DF349F5A6D1A6F823FE184133A7C3140F01A6303F50D8C0942D18281
          428168DF4361A89EE3BD7A5F2C4FE18157E43A7F8D82AFE8FDA17E841809B220
          0BF4206CDEB0E900B8EFBEFBD66092060DE92AAAF914B0091D9E7D872F3CC76B
          588C0D089E9883686165D1815C96AE8BB11840C0C9B43D902B19D228080AD306
          E91FB6861EE9221D544FFB149ED23E054CA19F74D249D54F7EB7C2730610B280
          82201629282BB0FE65A958F8ACF9932CD01B28E884DF72CB2D6398326F040485
          2F06FD0F865D9E850ABB0D00E6F19BD3A70E9FD1BE6ABC0A5E01602030731003
          81460A163A5AF8A849A6D0B150122A76ACAFF767D595F7ECD8790379080C0401
          7D0128D2F6C89BD4CCA1E481A130009E7DF6D955A1FDFB98C7AFE19EB7FB6AF3
          0D005EF8279F7C72950578CE58404140205884606C60A681755A3100EAB1D877
          BBD67F1AB8EC53135659CFD5BA1B69475EFB4309B32C7F08B2E9C6D8CCF8E69B
          6F06E709BDD145A109A290E51B0194CD679AD76B3E85A2D46F76DFA8DF844FA1
          878A3707EA13F828C1F206F6C9BAF57BE8B726A0342FE1135306B2501DF6DCD0
          B34209AE46DAA4F585EAF160D1A4993102991932980D00AC0879156681220CC0
          872DF7C4134FAC0D945501A0E15E48F86AFB4DDB63005036089903F50D3C202C
          72B024938594BDFD0C25ABF28EA5C0E984A0BAA0B95D189B6E94E43B8E75E27C
          67DE33B2CE87D88F0C61A6860A4900A0CF7B00004329AFA2202802003E6CF9A7
          9E7A6A5D54321F88EBD434AF4FF450582AFC46B45FFD053E031DE2002603897A
          BA287C0383269554D83ED9D4E8EFA2C0A1C0D8360C3EA997E66C9F73CE39674F
          4C5ACDBEECB2CB665C78E185B3F07B0E1CE7B9B87601AF433FBA0986501D0A6C
          FDAE39128D8ED41F3200E03E026018E5D5DF0018F8CC33CF8C0400F645659DB1
          648F5177160008086FFFBD434820A0335D18C0BD1E7FFCF13FB1F03B06A02B04
          003DE6CF5B024A73127ACCAEB763A1E73B1075A682EC8090F7B8F7DE7B777CE1
          85177EFFF9E79F6F8664CC04644BC763D6741CA2A6F1F83E014ED9269826DF06
          EB1BB6BBE28A2B66E0F9F3C910E84B67A8DD59F5FBACA981800AC9D439EE9D83
          FA8643F883FA1B0083E0048E44250900BCD76F9AE963FE90D79F15091803E039
          9D98E0D8E7BDF7DEDB0A1D618263437CDF12C09987BA928133B0E9773BA6E734
          03E9CFC77EFB679A50A0E9145CC7D5575FBDDB2BAFBC3209421E87B66D84B231
          CA1829FCADC7F87D23846863DE7DF7DD2D6FBAE9A6FF415FE711483676A13E29
          282D51164A9D53210900F4670E18E0D72900C8DCB90C9F7B416A4F063FF7DC73
          A30800A08DB62E49D4F854AF3A7F31EFDF0340730466FF3128DD98659CC5014B
          073219501CFB2704D05D5490FD751D85446151E321F8DFA76D32C1B36D04E906
          28EBA38C7685C7795EAFDF0880DEE2BAEBAEDB956684A64E53E4A1762B6BF98C
          A90100CCDB34000CF20008C5FCA1AC5F160B2848EC7B6AFB09807F40C33878C9
          80F23B6D6B0800A1147323C7B4DD9A994CB3939D007BE7CD37DFBC337221E353
          619AD0D9B6F5507E87B20ECADA286BA18C480BBFF338CF8F42F98F1428092310
          4888AEFE883AE7D3BCE50156CD0341A01368F0CDBA9A0A0098803A06F0DE7F5E
          DA3764EB3513684243E7BA2FBEF8E299B0A123D3015D0B00F81D40B13B3A5DC7
          008D083BEF5A1502CD0DFBF8E0830FFE3915188546505290142A05FC5B94DFA0
          D0F60E4359450A7FAF9A9EE77504C6BA28040D9F933C0F29DC893079741673D9
          CDFC11CF024D07803100E826310121EFDF2280ACDCBF6A7A6C72880080373D03
          0058231DD8E100C01A175D74D16E59839427DCBCF35EF8F4D8E1BCFD29151669
          9C82A700B9609542A78057465901E557284CC2F8C2FC3CCFAF940283369AFD22
          3318103678F3CD37B78682CCCB6202CF001615D027836F9630009CC0A6F80055
          13E001E067FC3C9D660DBA5D6B0E907D52C8E79D77DE6E00003BC3C4C68AF83E
          1CA0F83B84D2A3CE91DACE3C01C7CE879C477AEA588AF69754F8D4565238357E
          B554906C17854B8F3B09BBB87C0D4E58B5C816373A64035370100C8CD5D93702
          894C42DF617D4413DB326424F3C41C5ACF00B698860C00E56A0D00CC01F4133F
          26C02282F05EBC3A3914F2B9E79EBB1BC22A6A1807790800B0CAF9E79F1F0480
          0E5691BAF59A90DD05C3755F7EF9E533C13AA468DA790A895A4B3AA7E0A9E514
          7AE269C331AC6037D4F2885256433F46E399E35036C0F88C40E837E481071EA8
          707D234192DE47D01008ECDFEA286403B2CBFAD857318D0EA78F0A7C381B3201
          2D0340CC04E439317A5EB5DEC7BE0400E27E0280F634A15400602858613AC0D7
          A371796FC2BCAC7660601966EE83706DF35428143EED37DB429AA7262782E752
          7538A62B203ADA0A59D259D04286C95DF8ECA146A6099A3D716E2A9EFB5B68B8
          455DC6080437D980E6840EE47AE8F3C600FA1E0C397D1868BFFD4A2ACAC318A0
          5961605D14A0616068D54F16187CC794D6F82C74A8E7ECB3CFAE030058613ACF
          85327F0A046F22B2C22AAF5908737B30AD4AEA37EF9E1A4A21515855AAE7B278
          68EAFA10EEBF30F88B705F37732469B1296A664DBB503885BE2FCAD600CC0002
          0721AEB101014EFF802020138C7AFEF9E7273185CC7EFAF6E94CA96606CD096C
          990F6013406A0634A91143AF1EF782375AC3C0F69C75D659F401AA0C00CD180A
          5698CE7356A7012194E5CBAB5FEFB141A5D307B0CCFBE8A38F26401046FB6C43
          55F8D47C38865C19BD39932F10788F9FAAD5B97C3947665884FB7680C73F30DD
          CE9DCCB3A42C476792FEC5BAC8248E66184C53104B4DDB2CA9CD8EB60C009A08
          D20998102D1715829FD081039600C09B00B04215007EF2A791FA15A83AC014E6
          F5D75FFFB754F80CD986A5B45FCDAD5370F00FC670150E073DB4DBC9CFD9EB35
          00CD7EA87FAADB026F2020D324110236E0FC81F307AA60C6B49603D005332D73
          020D00B155BFD6C8AC49181D7413A44E9F9286B1F8B40600640080623ACFE994
          AF0742A3F56B6A957D7BFAE9A7B78100287C8B4068F3ABD3ABD0FEE1D0E27918
          F06EBFA3A9E0F2B364452FB2804C06994F60E6803E061DCD353FFDF4D38DE1AC
          CE6512CACF14FAD94186814DCF03582248E702341A88D1B2D2B4A733A331FBB4
          8E51C8679C7146260014049A93F0FE418C423DEB601049FF7331F08CF7E9F451
          1B699FAB39756A2D62F53F6352AC66595C41C1EBF2762EA59FF5C61B6FE8E20D
          828060A33FB01A7C8475900CDB8D2CE0D727A8E6DB8410CD514B32814500109A
          CE0C09C290AD8B20D82152B10700A3003200CF19FBD8428C100B64D94E2F7C3E
          874E1C9CCC99B0BF74C498D563985633AD8A3511C9AA282E8A6954E8FE7AAEE4
          BDFDF6DB3D0B106CF437687A56C72B71B60350167AB05BBF6DA1484BE602C800
          3A1D6C957B3ACED2380D5F42D46F0E4D0C00300B41001803140142AC5E086821
          66F9FE9A3A62D47EC6EA35336A88D1B92DABA7AFC24F97A42F8233B89D6D804D
          CD81B2C070CC134CE20A6C35B7BAFA48D7041803343D0AD0F500AA895E08DE6E
          857E8756BAA4316DCFE9A79F5E67020800C6D8BA444A9778A949C9AADF2FD7E2
          F3A86908ED98F6A5F631D9A3DA3F803BA3311B58B72A5A97C7871CC21858D225
          5CA1357C041D7D8155C0389BF27E9AA7D0BA445D18DBECE960AE07A832806EFF
          F220507B1513424800D6C1D4A1A903004D00CC420200BFF852419007445F37EF
          E5F3E8982163F7070C3CC3310A40B57F00347579D8FF69BC2E24541FFAF9E5DD
          FE1E6A36C6E75F48DCD0E6EBB4BC45042BC1211D8BFB1658FADD345EC7CAD607
          1A009AC60006002E09B315415E136D7055F02A10EFCCA82DD355B014327606D7
          310058613A3A9A00C04A0C809EEA2D6912F2A00D00F7DF7FFF7FA7B6BFC6F923
          1800C04158DEB5A30780D7FAD01E8550B42000F06BF8CC0CAC806578630C001E
          F4D67F5B17D85200C4B67E87BCD5AC632100A40E4D1000640002C06F3BF74E61
          AC4E6F3FD58672C30B9CB229A913A64BAA92100D5EF9A06BAEB9E68F5C7FAFDA
          AC9A1EDBA0E2F2004934401300677926349600D050D342C221580A378E6BFE19
          9EDA5E4905BFEE212000907769DE821063007AC0863AD54275545400EA24FA25
          D54A6566CFD2F56D99000801D033815F5E1DD37C5B5D4B1F00D3CDD360EB2DDF
          6FB1BF69242775B60400AA1B6394F6B3368368A6D0C04326415A7847D4477FC3
          AFE1A3FF31E8A1871EE24B36BBADBF0A02FB6E7B055A0A00DD17A0D4A483AE03
          EE8561C26A14006602F200E0EBCB029E50683766F376C70C207D801A073015D0
          8A58C63512429F67616008002618BFC38763A619420209D9BE2DF06CFA003439
          BA969FF50FBCE1861B12A75337E1A8E0AD8ED4C4704551F3A6839501AC412A88
          90979A772C83CE7A606FEB7C00F805890930A1992908F92459755BBDBAC1821A
          84E7CEC52C20F3F1BAAE9E82A186261336575D75D55FB90F8F9A6CF4AFED5100
          E8F31500A47F266DF08E25E61C2CE1A400588E4C843071175C9BCC3528C37870
          B11DF4299A6A02B02C3C8902887E6D909A8190779E270845B468631000CA007E
          D0BD39CAAB574D8E090782EDC232EFB11293DB1CBE65E87EF3FEFBEF6F8C36CF
          E5802B00BCE07DBFAC0E8E1FEB817D9F887A6CA6D133C080B7DF7E7B353C7F6F
          02D34C48C8CCD8730D004D8F02D801DF71D56405810784A77C8D63AD73E91C7A
          9401A8117E207CFD3130A8E6AB761A35D30F40AE817699DAA83E00299999414E
          D9AEF5E4934F324193689D67C31003889D4EF6F283DAFF02A7D2D619D0E47827
          B072E38D376E6649271B6FCF04EA5BB4940162D4171344EC78484B38581472CC
          041800D87913A2778EB2DAE1EB741E3ADF6E3AEFA5975EA266FAD89C295A4ED4
          7059D828388453712DDF95C07500D59762C500404DA6DDBFF6DA6BFF063F834B
          C048FF04545DCAF98B2FBE1884ACE9EEECAB9A1AB6D5C0C44F8D4008004415AD
          F1019A09006300D8BFBAE960FA006613B3342F0F886A437D8846A70B19BF29EE
          9D3BE607505B3951341265F48B2FBE3809A1E91C7AEA04027324CC94A60C957C
          8700BB39750C81FE1F5EB0C14C23279BB8BED0A69B7DCE81AFC4DD28146D2813
          18F5F3330D2B9B0B00F5016CD06276384F009E8ABDB34447CF0380D3C1790030
          9392C5386AFB4D9B5CA28634BDEF238F3CA2AFAAF5D3B56481648D3F6CEE3878
          F3531142CE8490E7E199F493B8177001A28FF958C3301B933AD33EFEF8E34D79
          3D81936A7F70BAF9ADB7DE1A82FBF91E86EA9C8317BCE61BC47C250068DA9230
          8D027CF8134A521401818F65AD63EC7CB30010AA53C3336A136374B465F7575F
          7D555FB962F900C6EDB6868FC24CB6AEC1A68FC5FEC04DB10F706B8CD5B62FBF
          FCF244087D73D93EC605A6A47EDA7E75FEAA2967CE370030931965D0C7B09CC1
          5201003200062689021400DEFEA976AB93A7DF439EBF7368320110738AB27C81
          507C1E4AD0A4749ABC71036DDE015E7F4D7806E191B2690AAA0B395310D87EC0
          D0A7EE29A85B63487F83C2C70AE24D52C7AF66BA59CD948EBD1E371FA0A50CE0
          7D019FB18A8546A124898B938300806398F8005E237C8C9C159269DD3E39A329
          5E6A2035118B32B6117FC02FE4B4B5FDB6DB871A4E9AB7C2DF3415F4196C4F41
          CD0253133EF20BEBD90BB854FBCD09F48297B0B2753E0019008DAB3240330180
          AC5C5D22480190C7022110F8F031068034C46334427FA01B730013B90A182C68
          7901D23693433407C35236E05A3EDB0B4840D85E41FA124C2EF13ADD5330E09D
          77DE49F60BE0156FEBA31EBE7E87CE64DD6BF555D3D5FE1B385AE6049A0950DB
          1402813141567E5CE37E15049F472DF700E074B03981AA15594992A2F979E704
          FA7F38210868937740BD2B61C9B65FDB4F9340C152B32964AE26B2C2B091C799
          45ACD953C03D0270DA96C36EA7ADF0FC6472488057F70EC39019F0008013DABC
          30D07C006A4508002A0845694C086A7FD5098B018051803240881A63F56AC8A8
          D71460802A18181EA230E41B8F25DBCB2357E0814046A0D348415BE16F02A4BA
          9984AFD8E7BF9FA1FD7CB3FADF537055FF5FC140A0E6C800EA4356052E7D0002
          A0A93E8099000F00EF14FA41CEFAED3DF094CEEA188000406490F800A1FA7B53
          A71F507BAE0AC1692563FA8510DA0C7C6E78E9A5970E46EAB882C48DFED59D65
          1113E7D1F60A222AA860C3C97298245B07F7EF84FB29F4BA7F56D1FA14040A78
          7F3C8D5C9A0B8010037894861C9590A6C7E84C04D083D537753E8007400C8866
          96F433E63D87E8DF22014FC9F29B6FE6EC8120E7A04C81BF3106FD5C0D801882
          758303AD60BFE0602C445915E747E35EBEEA9DC04996859349339E1FFC7B9D90
          E0ED180185BA9AC700310084E8C90B40B3561E10A14E51CB01805DFDC6103301
          A17B62A192AFDB5FA776D433409680D273B4DB340D6486F91030FFFB7036CAAC
          B4ECC5E3A9D0F97EE59E3CC1F78501962A00C4B4CF3B7C11072C6100C4C68CB7
          93CDA148B4AC0CC770576A5E1600B2182776CE3FAF80E013DF006D5187911A4D
          5A4FD2C269E16F1E2FFC0F6A0AC2981F1033014B04004AC3DE310B6965CCEE6A
          A73860B86E2EB26A0CAB12670BDF47F0983AA1311394576FC8EF883051F07F0F
          0D2004800341E6F545809545F34B8D096047F21AEA4D83074ADEFDA455E4D2FF
          097B3A9685DF792CEFBE90703DCBF8DFBD11BE328001C17F161178EC9ABC7E7A
          73D5521FC000100242D66017D17E73C0D24FFE9D6C52524A2DF48EFFBCB0A9BF
          01D0174187EE6D54F829189BEF047296CCEC59CC56156DBCA3FC9ABF858979E1
          0E1CB92CD49BB6F876F5B7708B3CAFD1762F11001431038D7644059F0582DE3C
          B7917BB46F4504E67D02F50D8AFA09BE7D45C65799B8652680218D0E4A23039B
          756D8C0A63751519A066B62D0F188D3A87DEA687D82E0B98CB140062DA6F83AE
          83D39FA628A4857982EEAFF3BDE993D66D0068DAA2502682E803780628AAA121
          C751059A27F4AC818E0D5E1E4B6439B3ADF605426CE5DB9F35060400D2CCCDCB
          0462A3622E007440FDE07AFA0A09BC1110C4EE0F8121E63CC6182504EAFED2F4
          3C20C7DAEF4D847F4EB30130186FB35807952669CD229DF0D41C42B31762A300
          08398D5E73637578506401B49176F507507A332E0C9591099C25AF8BEFD7B785
          0FC18357C712A9BD5051DDD465962679446739327D1DBCD0C07990E4FDF67DE9
          6B9B1ABD3FCBF4640191D3CA78830A979CD7BDDAC6B2A9A1CFA2AF8BFF15F2F2
          C3B03C2AD916D568A796F4F5BDD1E0DEDCD35FFD8CD59D0700644C27C9AAA37E
          65002E70188A1746FF2700C0E9CCC2931BFD35287D7D4E6F04DA573FA5AF6D2E
          7A3FED3F16DEFCFBC30F3FE47E83A63040B22B062C300273DEBB90051A8D738B
          76A6BC2ED97256B8500E5C498C55469321A3D85EC328D31735019C92E51B33D7
          FCE4934F36E2CE5656DA4843CB6B8B0BB5E858A5C25FB878F1E2FF85ED1F09F9
          70D712A7D0FBF53F83747B342B58F7830F3E98802D515CF4C0553151A7B06847
          CAEB1A03472AF864920CCBC977C1B233EE3BE04A64EE55E002D59A975BF6D509
          B4B5F0DCC4C875F0C9ABCDB19C792CD6B84DC372A7BD0982140CD5D93B9BC52B
          3F7F99CDECA7428563E9040BEF89ED6B7CA50D85CF175B73EDC430149AEB420E
          208151C404F01A7DA1B16D8E4CFE0CE9B3CF3EDB04EFB39B82EDCC3BC33FD815
          2F749E81172ECEC0ABDDEB8A1E8F5DA3F7F11A2D3C67BFEDBAD033F51A5F8FBF
          DF3F33743ED417DF4E7B4EA85DFEFE581B626366D7E31DC5D3B1CE702724E5B6
          4558CEFF2FB23FAAA2F673EF4143DADF080074732451C6CD0EF438D900FB0324
          EE7D1BC3FFCCE33E397CF6AAD8BDFE1959CFEC4D7DB17A1A6D77D1BA8B5E67F5
          87AEE7F8A2709CADD85E437BB5AD69BF6E67CB54F2A20CA06FCAA029E08607EE
          84E146476E7D220DE9DFA265ED932BCFFDA234BD2DFAC755D47C7AFE75AFB4A7
          761729852E9207D93F5D1004AC94B443DBC38690110886B2346F0C68EB39CEFA
          C755757B0D8B08DEAE691400E60FF09529A41B6E791A8642E79048242BD03CB0
          D87FE7959F7D1F0B1B53523DC799E34D05ACD96BD888E0FB0200DD20C97043FF
          168D3128115996E68C01C797422703EB96B3C236DF83A4370C60F7D816289A85
          E4BD76284C4094A5B963C071B67F2CEBB5E0FBCA001E38BA1FAEFCFECB1BC69A
          59FAA2B835F7F6DB837A637FCA7B8A79EACD1CA7120005C3A5660A61493EBB04
          400980254F434B5203DABDEE92014A062819A09D59A0648092014A062819A0CD
          B5A004400980B635856DDBF176D67AED7B09803667BF12002500CA28A09DCD41
          C9002503940C5032409B6B41098012006D6B0ADBB6E3EDACF5651EA064BCAAE2
          970CD0E6602801D0E600F87FCDD6B6DDAAED95380000000049454E44AE426082}
        Properties.GraphicClassName = 'TJPEGImage'
        Properties.ReadOnly = True
        Properties.ShowFocusRect = False
        Properties.Stretch = True
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = False
        Style.Shadow = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfStandard
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfStandard
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 27
        Transparent = True
        Height = 128
        Width = 130
      end
      object btnCancelar: TcxButton
        Left = 600
        Top = 139
        Width = 65
        Height = 26
        Hint = 'Limpar Foto'
        TabOrder = 15
        TabStop = False
        OnClick = btnCancelarClick
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000007B7A7A9BC6C5C5F7838382A60000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000068686884C6C5C5F6939292B9000000000000000000000000000000000000
          0000888888ADD3D2D1FFD5D5D4FFD2D2D1FFADAD99B900000000000000000000
          0000000000000000000000000000000000000000000000000000000000007473
          7393D3D2D2FFD8D7D7FFD4D5D3FFA1A0A1CB0000000000000000000000008887
          88ACD4D4D3FFDBDADBFFDEDDDDFFF4F4E1FFC8C6CFFF120F6CB9000000000000
          000000000000000000000000000000000000000000000000000074747493D4D5
          D3FFDEDCDDFFDFE0DEFFDDDCDDFFD6D5D5FFA5A4A2CE0000000079797899D2D1
          D1FFDCDADBFFE0DFE1FFFEFEEBFFD5D3DEFF140FA2FF040097FF100B6BB90000
          0000000000000000000000000000000000000000000074737493D6D5D5FFE1E0
          E0FFE8E7E7FFE9E8E8FFE6E5E4FFDDDEDDFFD5D4D3FF939393BACBCACAFFD5D4
          D3FFDCDBDDFFFEFEEBFFDBD9E3FF1610ABFF0200A3FF1812A4FF16119DFF0F0C
          6BB90000000000000000000000000000000074737393D7D6D5FFE3E2E2FFECEB
          EAFFEFEEEEFFEEEDEDFFE9E8E8FFE1E0E0FFD7D6D7FFCDCCCBFF504F4F65D1D0
          D0FFF4F4E2FFD5D3DEFF1610ACFF0200A7FF1913ADFF1812AAFF1712A5FF1611
          9CFF090769B9000000000000000078777493D7D6D6FFE4E3E4FFEEEDEDFFF2F1
          F1FFF2F1F1FFEFEEEEFFE8E7E7FFDDDCDCFFD3D2D2FF69686884000000006464
          5F78BFBDCBFF1410A1FF0200A2FF1914ADFF1813B0FF1813B0FF1813ADFF1712
          A6FF0B069CFF01005AA167676680DFDED9FFE5E4E5FFEFEEEEFFF4F3F3FFF5F4
          F4FFF2F1F1FFEBEBEAFFE2E0E1FFD6D5D3FF7473739300000000000000000000
          000016144878000093FF1712A4FF1812ACFF1813B0FF1913B2FF1913B2FF130E
          ACFF00009FFF7572BFFFF3F3E4FFEAE9E9FFF0EFEFFFF4F3F3FFF5F4F4FFF4F3
          F3FFEDECECFFE4E3E3FFD7D5D6FF747474930000000000000000000000000000
          0000000000000200437816119CFF1712A5FF1813ADFF1913B2FF140DB2FF0000
          A7FF817ECFFFFFFFF9FFF5F4F1FFF1F0F2FFF5F4F4FFF4F3F3FFF4F3F3FFEFEE
          EEFFE5E4E4FFD6D7D5FF74747493000000000000000000000000000000000000
          000000000000000000000A08457816119BFF1912A6FF120EADFF0000A7FF827F
          D2FFFFFFFDFFFBFAF6FFF4F3F3FFF4F3F3FFF4F3F3FFF5F4F4FFF0EFEFFFE5E4
          E4FFD7D6D6FF7473739300000000000000000000000000000000000000000000
          0000000000000000000000000000070444780D069AFF00009EFF817ECFFFFFFF
          FDFFFBFAF5FFF3F2F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F2FFE8E7E7FFD8D8
          D7FF747373930000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000038667471BDFFFFFFF7FFFBFA
          F6FFF3F2F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF1F0F0FFE0DFDFFF6665
          6580000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000065656580F1F0E3FFF5F4EFFFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFEFEEEEFFE0DFDFFF8180
          80A1000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000077767493DFDED9FFEAE9E8FFF1F0F1FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF2F1F1FFE8E7E7FFDAD9
          D9FF939392B90000000000000000000000000000000000000000000000000000
          0000000000000000000074737493D7D6D6FFE5E4E5FFF0EFEFFFF5F4F4FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF5F4F4FFEFEEEEFFE4E3
          E3FFD8D7D5FF939292B900000000000000000000000000000000000000000000
          00000000000074747493D6D7D5FFE3E4E2FFEFEEEEFFF4F3F3FFF4F3F3FFF5F4
          F4FFF2F1F1FFEEEFEDFFEEEDEEFFF2F1F1FFF3F2F3FFF5F4F4FFF3F2F2FFEDEC
          ECFFE2E1E1FFD7D6D6FF939393B9000000000000000000000000000000000000
          000074737393D7D6D6FFE2E1E1FFEDECECFFF3F2F2FFF5F4F4FFF4F3F3FFF0EF
          EFFFE9E8E8FFDFDEDDFFDEDDDCFFE7E6E5FFEDECEDFFF3F2F2FFF4F3F3FFF1F0
          F0FFEAE9E9FFE0DFDFFFD6D5D5FF939292B90000000000000000000000007473
          7393D5D4D2FFE1E0DEFFEAE9E9FFF1F0F0FFF5F4F4FFF3F2F2FFEFEEEEFFE6E5
          E5FFD8D7D7FF6665658051515166D5D6D6FFE3E2E2FFECEBEBFFF1F0F0FFF1F0
          F0FFEEEDEDFFE8E7E7FFDEDDDDFFD5D4D3FF929191B90000000066656581D2D1
          D0FFDDDCDAFFE6E5E3FFEDECECFFF0EFEFFFF1F0F0FFEDECECFFE3E3E2FFD7D6
          D6FF7473739300000000000000005F5E5E78D5D4D4FFE1E0E0FFEAE9E9FFEEED
          EDFFEEEEEDFFEBEAEAFFE3E2E2FFDBDCDCFFD2D2D1FF838282A5CBCAC9FFD4D3
          D3FFDDDCDDFFE6E5E5FFEBEAEAFFEDECECFFEAE9E9FFE4E3E3FFD6D6D5FF7473
          7393000000000000000000000000000000005F5E5E78D5D4D3FFE0DFDFFFE8E7
          E7FFEBEAEAFFEAE9E9FFE5E4E4FFDDDCDCFFD5D6D4FFCCCBCBFF6362627DD1D0
          D0FFD9D8D8FFE1E0E0FFE6E5E4FFE4E5E3FFE0DFE0FFD7D5D4FF747374930000
          000000000000000000000000000000000000000000005F5F5E78D4D3D3FFDEDD
          DDFFE4E2E3FFE5E4E4FFE2E1E1FFDCDBDBFFD3D2D1FF7B7A7A9B000000006F6F
          6F8ED2D1CFFFD9D8D8FFDDDCDDFFDDDCDAFFD4D3D2FF74747393000000000000
          00000000000000000000000000000000000000000000000000005F5E5E78D2D3
          D1FFDADAD9FFDEDCDDFFDCDBDBFFD4D3D3FF8A8988AD00000000000000000000
          000071707190D1D0CFFFD4D5D3FFD2D1D0FF7473739300000000000000000000
          0000000000000000000000000000000000000000000000000000000000005E5E
          5E78D1D1D0FFD6D4D3FFD2D2D1FF888888AC0000000000000000000000000000
          0000000000006363637EC7C6C5FA656565810000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000051515167C5C4C4F779787899000000000000000000000000}
      end
      object btnGravar: TcxButton
        Left = 536
        Top = 139
        Width = 65
        Height = 26
        Hint = 'Selecionar Foto'
        TabOrder = 14
        TabStop = False
        OnClick = btnGravarClick
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002B2B
          2B37A5A4A4CF7473739200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000006362627DD2D1
          D1FFD9D8D8FFD4D3D3FF51505067000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000009A9A98C1D8D7D8FFE3E2
          E2FFE5E4E4FFE1E0E0FFD2D1D1FF1515151B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002D2C2C39C9C9C9F7DEDDDDFFE8E7E8FFF1F0
          F0FFF1F0EFFFECEBEBFFE0DFDEFFBCBBBBE90000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000065656581D5D4D4FFE2E1E3FFF0EFEEFFFFFFF9FFFFFF
          FBFFFFFFFCFFFDFCF5FFEBEAEBFFDDDCDBFF8B8A8AAE00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000009A9A99C1D8D7D6FFE5E4E4FFFDFEF3FFFFFFFDFFC3C1E5FF3530
          BAFF5551C5FFFFFFF9FFFFFFF5FFE7E6E8FFD7D6D6FF4847475C000000000000
          0000000000000000000000000000000000000000000000000000000000002B2B
          2B37CCCBCBFBDBDADAFFEBEAE6FFFFFFF7FFF0EFF1FF5C58C6FF0000A8FF0000
          ABFF0000A7FF514DC3FFFFFFFCFFFBFAF3FFE4E5E4FFD1D2D0FF1414141A0000
          00000000000000000000000000000000000000000000000000004D4D4D62D0CF
          CEFFDBDADAFFF8F7E9FFFFFFF2FFA3A1D6FF0B06AAFF0000A4FF140FA8FF1913
          A7FF1711AAFF0000A4FF6B67CBFFFFFFFFFFF4F3EEFFDFDEDEFFB8B7B7E50000
          0000000000000000000000000000000000000000000000000000CBCACAFFDEDD
          D8FFFFFFE7FFC9C7DAFF3834B1FF00009DFF0D07A0FF17129FFF140F89E70907
          3F6E151091F2140FA6FF0000A4FF817ED1FFFFFFFBFFEDEDEAFFDBDADAFF8080
          80A20000000000000000000000000000000000000000000000006F6F667EE5E4
          D6FF6561B8FF00009AFF000099FF15109AFF100C73C604031E35000000000000
          000001010910151097FF130DA3FF0000A2FF9795D5FFFFFFF8FFE7E5E4FFD7D6
          D6FF454545580000000000000000000000000000000000000000000000001D18
          80D7000090FF100B94FC0C0A589702020E180000000000000000000000000000
          00000000000002020E19161196FB0F09A2FF0000A2FFAFACDBFFFFFFF4FFE1E0
          E0FFD1D0D0FF0F0F0F1300000000000000000000000000000000000000000000
          00000403223B0000000000000000000000000000000000000000000000000000
          0000000000000000000001010A11151091F40B059FFF0000A3FFC0BDDDFFFFFF
          EFFFDCDCDAFFB5B4B4E200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000002010B14161196FD08039EFF0A04A4FFD5D3
          E1FFFCFBE9FFD7D6D6FF75757594000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000101090F151090F103009DFF1610
          A5FFDFDEE2FFF3F3E4FFD2D3D1FF3D3D3D4E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000306151091F50000
          98FF221EA8FFEDEAE2FFEBEBDFFFCFCECEFF0B0B0B0E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010105091410
          8EF1000097FF3834ADFFF2F1E3FFE3E4DBFFAAAAAAD600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0204120D85E4000094FF4741B0FFF5F4E2FFDCDBD5FF6B6A6B88000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000305120E89EA000093FF605CB3FFF4F5DEFFD1D2CDFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000100C85E600008FFF6A67B1FF929289AB000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000B076DC10000478400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      object eFoto: TcxTextEdit
        Left = 673
        Top = 98
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 30
        Style.Color = clMaroon
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Silver'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
        StyleFocused.Color = 15921919
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
        TabOrder = 28
        Visible = False
        Width = 60
      end
      object eDescricao: TcxMemo
        Left = 136
        Top = 75
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 5
        Height = 34
        Width = 400
      end
      object cxLabel30: TcxLabel
        Left = 23
        Top = 77
        AutoSize = False
        Caption = 'Descri'#231#227'o:'
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
        Width = 113
        AnchorX = 136
      end
    end
    object cxPage: TcxPageControl
      Left = 2
      Top = 299
      Width = 937
      Height = 183
      ActivePage = cxEstoque
      Align = alClient
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      Style = 11
      TabOrder = 1
      TabWidth = 100
      ClientRectBottom = 177
      ClientRectLeft = 6
      ClientRectRight = 931
      ClientRectTop = 29
      object cxVenda: TcxTabSheet
        Caption = 'Dados Venda'
        ImageIndex = 0
        object ePrecoCpr: TcxCurrencyEdit
          Left = 137
          Top = -1
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '###,###,##0.000'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          OnExit = ePrecoCprExit
          Width = 75
        end
        object cxLabel14: TcxLabel
          Left = 47
          Top = 1
          AutoSize = False
          Caption = 'Pre'#231'o Compra:'
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
          AnchorX = 137
        end
        object cxLabel15: TcxLabel
          Left = 215
          Top = 1
          AutoSize = False
          Caption = 'Custo Compra:'
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
          AnchorX = 305
        end
        object eCustoCpr: TcxCurrencyEdit
          Left = 305
          Top = -1
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '###,###,##0.000'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          OnExit = eCustoCprExit
          Width = 75
        end
        object cxLabel16: TcxLabel
          Left = 383
          Top = 1
          AutoSize = False
          Caption = 'Custo Produto:'
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
          AnchorX = 473
        end
        object eCustoProd: TcxCurrencyEdit
          Left = 473
          Top = -1
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '###,###,##0.000'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          OnExit = eCustoProdExit
          Width = 75
        end
        object eMl: TcxCurrencyEdit
          Left = 137
          Top = 21
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '0.00%'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          OnExit = eMlExit
          Width = 75
        end
        object cxLabel17: TcxLabel
          Left = 48
          Top = 23
          AutoSize = False
          Caption = 'M. Lucro:'
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
          AnchorX = 138
        end
        object cxLabel19: TcxLabel
          Left = 383
          Top = 23
          AutoSize = False
          Caption = 'Desc M'#225'x:'
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
          AnchorX = 473
        end
        object eDescMax: TcxCurrencyEdit
          Left = 473
          Top = 21
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 5
          OnExit = eDescMaxExit
          Width = 75
        end
        object cxLabel18: TcxLabel
          Left = 226
          Top = 23
          AutoSize = False
          Caption = 'Pre'#231'o Venda:'
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
          Width = 78
          AnchorX = 304
        end
        object ePrecoVenda: TcxCurrencyEdit
          Left = 305
          Top = 21
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          OnExit = ePrecoVendaExit
          Width = 75
        end
        object cxLabel20: TcxLabel
          Left = 383
          Top = 45
          AutoSize = False
          Caption = 'Pre'#231'o M'#237'n:'
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
          AnchorX = 473
        end
        object ePrecoMin: TcxCurrencyEdit
          Left = 473
          Top = 43
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Properties.ReadOnly = False
          Style.Color = clWhite
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 8
          OnExit = ePrecoMinExit
          Width = 75
        end
        object cxLabel21: TcxLabel
          Left = 215
          Top = 45
          AutoSize = False
          Caption = 'Custo M'#233'dio:'
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
          AnchorX = 305
        end
        object eCustoMedio: TcxCurrencyEdit
          Left = 305
          Top = 43
          TabStop = False
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 7
          Width = 75
        end
        object cxLabel22: TcxLabel
          Left = 47
          Top = 45
          AutoSize = False
          Caption = 'Comiss'#227'o:'
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
          AnchorX = 137
        end
        object eComissao: TcxCurrencyEdit
          Left = 137
          Top = 43
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '0.00%'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 6
          Width = 75
        end
      end
      object cxEstoque: TcxTabSheet
        Caption = 'Dados Estoque'
        ImageIndex = 1
        object eEstoqueDisp: TcxCurrencyEdit
          Left = 137
          Top = -1
          TabStop = False
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 75
        end
        object cxLabel23: TcxLabel
          Left = 24
          Top = 1
          AutoSize = False
          Caption = 'Estoque Dispon'#237'vel:'
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
          Width = 113
          AnchorX = 137
        end
        object eEstoqueTotal: TcxCurrencyEdit
          Left = 137
          Top = 21
          TabStop = False
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Width = 75
        end
        object cxLabel24: TcxLabel
          Left = 24
          Top = 23
          AutoSize = False
          Caption = 'Estoque Total:'
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
          Width = 113
          AnchorX = 137
        end
        object eQtdeMin: TcxCurrencyEdit
          Left = 305
          Top = -1
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 75
        end
        object cxLabel25: TcxLabel
          Left = 225
          Top = 1
          AutoSize = False
          Caption = 'Qtde M'#237'nima:'
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
          Width = 80
          AnchorX = 305
        end
        object cxLabel26: TcxLabel
          Left = 225
          Top = 23
          AutoSize = False
          Caption = 'Qtde M'#225'xima:'
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
          Width = 80
          AnchorX = 305
        end
        object eQtdeMax: TcxCurrencyEdit
          Left = 305
          Top = 21
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          Width = 75
        end
        object cxLabel27: TcxLabel
          Left = 383
          Top = 1
          AutoSize = False
          Caption = 'Peso L'#237'quido:'
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
          AnchorX = 473
        end
        object ePesoL: TcxCurrencyEdit
          Left = 473
          Top = -1
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 75
        end
        object ePesoB: TcxCurrencyEdit
          Left = 473
          Top = 21
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = '###,###,##0.00'
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 5
          Width = 75
        end
        object cxLabel28: TcxLabel
          Left = 383
          Top = 23
          AutoSize = False
          Caption = 'Peso Bruto:'
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
          AnchorX = 473
        end
        object eObs: TcxMemo
          Left = 137
          Top = 43
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 6
          Height = 75
          Width = 411
        end
        object cxLabel29: TcxLabel
          Left = 24
          Top = 46
          AutoSize = False
          Caption = 'Observa'#231#245'es:'
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
          Width = 113
          AnchorX = 137
        end
      end
    end
    object cxMenuCad: TcxGroupBox
      Left = 2
      Top = 2
      Align = alTop
      Style.BorderStyle = ebsNone
      TabOrder = 2
      Height = 56
      Width = 937
      object cxSalvar: TcxButton
        Left = 394
        Top = 0
        Width = 75
        Height = 55
        Hint = '&Salva o registro'
        Caption = '&Salvar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = cxSalvarClick
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          20000000000000100000000000000000000000000000000000005B5C5B75BEBD
          BDF1BAB9B9EBBBBABAEBBCBBBBEBBCBBBBEBBCBBBBEBBCBBBBEBBDBCBCEBBDBC
          BCEBBDBCBCEBBDBCBCEBBDBCBCEBBDBCBCEBBDBCBCEBBCBBBBEBBCBBBBEBBCBB
          BBEBBCBBBBEBBEBDBAEBD5D4C2EBABAAB5EB27238EF00C0970BA000000000000
          0000000000000000000000000000000000000000000000000000C7C6C6FDCDCC
          CCFFD0CFCFFFD2D1D0FFD3D3D2FFD4D3D3FFD5D4D4FFD5D5D4FFD6D5D5FFD6D5
          D5FFD6D5D5FFD6D5D5FFD6D5D5FFD6D5D5FFD6D5D5FFD5D5D4FFD5D5D4FFD3D2
          D3FFDEDDD5FFF0EFDAFF8886BAFF030092FF060190FF14108DFF0E0B658E0000
          0000000000000000000000000000000000000000000000000000BBBABAECD0CF
          CFFFD3D3D2FFD5D5D5FFD8D7D7FFDAD9D9FFDBDADAFFDCDBDBFFDDDCDCFFDDDC
          DCFFDDDCDCFFDDDCDCFFDDDCDCFFDDDCDCFFDDDCDCFFDCDADBFFDAD9DBFFEEEE
          E0FFE6E7DCFF5551B0FF000092FF0E0997FF151097FF140F90FF1913B4FF0705
          3040000000000000000000000000000000000000000000000000BBBABAEBD2D2
          D1FFD6D5D5FFDAD8D9FFDDDCDCFFDFDEDDFFE1E0DFFFE1E1E0FFE3E2E2FFE3E2
          E2FFE4E3E3FFE4E3E3FFE4E3E3FFE4E3E3FFE3E2E2FFE4E3E1FFFEFFE9FFC9C8
          D7FF2721A7FF000099FF140F9EFF17129CFF151098FF140F91FF1913B4FF1A14
          BEFF010004060000000000000000000000000000000000000000BBBABAEBD3D3
          D2FFD8D8D7FFDDDCDCFFE1E0E0FFE3E2E2FFE6E5E5FFE7E6E6FFE9E8E8FFE9E8
          E8FFEAE9E9FFEAE9E9FFEAE9E9FFEAE9E9FFEBEAE8FFFAF9ECFF9A97CEFF0500
          A0FF05009FFF1813A3FF1611A0FF0C069BFF0A0595FF140F91FF1913B4FF1A14
          BEFF151096CC0000000000000000000000000000000000000000BCBBBBEBD5D4
          D4FFDBDADAFFE0DFDFFFE4E3E3FFE7E6E6FFEAE9E9FFECEBEBFFEDECECFFEEED
          EDFFEEEDEDFFEEEDEDFFEEEDEDFFEDECEDFFFEFDF1FFB4B2DAFF00009DFF110A
          A7FF1611A7FF06009FFF00009AFF2924A4FF302DA2FF00008CFF1913B4FF1A14
          BEFF1A14BBFF0D0A5E8000000000000000000000000000000000BDBCBBEBD6D5
          D4FFDCDBDBFFE2E1E1FFE7E6E6FFEAEAE9FFEDECECFFEFEEEEFFF0EFEFFFF1F0
          F0FFF1F0F0FFF1F0F0FFF2F0F1FFF0EFF0FFF8F7F2FFE9E8ECFF1510ADFF0000
          A0FF0000A3FF3935B1FF9C9ACBFFECEBDEFFE7E6D8FF312D9AFF0600AFFF1A14
          BEFF1A14BBFF1A14BBFF05042634000000000000000000000000BDBCBCEBD6D5
          D5FFDDDCDCFFE3E2E2FFE9E8E8FFEDECECFFEFEEEEFFF1F0F0FFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F2FFFFFFF8FFC5C3E2FF5F5D
          C3FFC4C2DEFFFFFFEDFFF9F9E7FFE1E0DDFFE4E3D8FFDBD9CBFF1B16A4E50F08
          BBFF1A14BBFF1A14BBFF1914B7FA000000000000000000000000BDBCBCEBD7D6
          D6FFDFDEDDFFE5E4E4FFEBEAEAFFEEEDEDFFF1F0F0FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F3FFFFFFF5FFFFFF
          F6FFFFFEF0FFEBEAE8FFE2E1E2FFDCDBDCFFD5D5D5FFE8E7D0FF0B0B11160000
          83B41A14BBFF1A14BBFF1A14BBFF140F8DC00000000000000000BDBCBCEBD8D7
          D7FFDFDEDEFFE6E5E5FFECEBEBFFF0EFEFFFF3F2F2FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF0EF
          F0FFEDECEDFFEAE9E9FFE4E3E3FFDEDDDDFFD7D6D6FFD2D1CEFF121211150000
          00000C0890C71A14BBFF1A14BBFF1A14BBFF0C09547200000000BDBCBCEBD8D7
          D7FFE0DFDEFFE7E6E6FFEDECECFFF0EFEFFFF3F2F2FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF2F1
          F1FFEEEEEDFFEBEAEAFFE5E4E4FFDEDDDDFFD7D6D6FFCECDCCFF23231F270000
          000000000000151092C71A14BBFF1A14BBFF1A14BBFF03031821BDBCBCEBD8D7
          D7FFE0DFDFFFE7E6E6FFEDECECFFF1F0F0FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF2F1
          F1FFEFEEEEFFEBEAEAFFE5E4E4FFDFDEDDFFD7D6D6FFCECDCCFF1F1F1E260000
          00000000000000000000141092C71A14BBFF1A14BBFF1812ABE9BEBDBCEBD8D7
          D7FFE0DFDFFFE8E7E7FFEEEDEDFFF1F0F0FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF2F1
          F1FFEFEEEEFFEBEAEAFFE5E4E4FFDFDEDEFFD8D7D7FFCECDCCFF1E1E1E260000
          0000000000000000000000000000141093C81A14BBFF141091C6BEBDBCEBD8D7
          D7FFE1E0DFFFE8E7E7FFEEEDEDFFF1F0F0FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2
          F2FFEFEEEEFFEBEBEAFFE6E4E4FFDFDEDEFFD8D7D7FFCECDCCFF1E1E1E260000
          00000000000000000000000000000000000008063A4F00000000BEBDBCEBD9D8
          D8FFE1E0DFFFE8E7E7FFEEEDEDFFF1F0F0FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2
          F2FFEFEEEEFFECEBEBFFE6E5E5FFDFDEDEFFD8D7D7FFCECDCCFF1E1E1E260000
          0000000000000000000000000000000000000000000000000000BEBDBCEBD9D8
          D8FFE1E0DFFFE8E7E7FFEEEDEDFFF1F0F0FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2
          F2FFEFEEEEFFEBEBEAFFE6E4E4FFDFDEDEFFD8D7D7FFCECDCCFF1E1E1E260000
          0000000000000000000000000000000000000000000000000000BEBDBCEBD9D8
          D8FFE1E0DFFFE8E7E7FFEEEDEDFFF1F0F0FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF2F1
          F1FFEFEEEEFFEBEAEAFFE5E4E4FFDFDEDEFFD8D7D7FFCECDCCFF1E1E1E260000
          0000000000000000000000000000000000000000000000000000BEBDBCEBD9D8
          D8FFE1E0DFFFE8E7E7FFEEEDEDFFF1F0F0FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF2F1
          F1FFEFEEEEFFEBEAEAFFE5E4E4FFDFDEDDFFD7D6D6FFCFCECCFF1E1E1E260000
          0000000000000000000000000000000000000000000000000000BEBDBCEBD8D7
          D7FFE1E0DFFFE8E7E7FFEEEDEDFFF1F0F0FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF2F1
          F1FFEFEEEEFFEBEAEAFFE5E4E4FFDEDDDDFFD7D6D6FFCFCECCFF1E1E1E260000
          0000000000000000000000000000000000000000000000000000BEBDBCEBD8D7
          D7FFE0DFDFFFE8E7E7FFEEEDEDFFF1F0F0FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF1F0
          F0FFEEEDEDFFE9E8E8FFE4E3E3FFDEDDDCFFD7D6D6FFCFCECCFF1E1E1E260000
          0000000000000000000000000000000000000000000000000000BDBCBCEBD8D7
          D7FFE0DFDFFFE7E6E6FFEDECECFFF1F0F0FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F2FFF0EF
          EFFFEDECECFFE8E7E7FFE2E1E1FFDDDCDBFFD6D5D5FFCDCECCFF1E1E1E260000
          0000000000000000000000000000000000000000000000000000BDBCBCEBD8D7
          D7FFE0DFDEFFE7E6E6FFEDECECFFF0F0EFFFF3F2F2FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF1F0F1FFEEED
          EEFFEBEAEBFFE6E5E6FFDFDFDEFFDAD9DAFFD4D3D2FFCDCCCBFF1E1E1E260000
          0000000000000000000000000000000000000000000000000000BDBCBCEBD8D7
          D7FFDFDFDEFFE6E5E5FFECEBEBFFF0EFEFFFF3F2F2FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF2F1F2FFFFFEF3FFFFFF
          F4FFFFFFF0FFFCFCE9FFF6F5E5FFF0F0DEFFEBEAD8FFE1E2D2FF2323222A0000
          0000000000000000000000000000000000000000000000000000BDBCBCEBD7D6
          D6FFDFDEDEFFE5E4E4FFEBEAEAFFEFEEEEFFF2F1F1FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F2FFFFFFF4FFC4C2E1FF8885
          CCFF8D8ACBFF8B87C7FF8784C2FF8481BDFF807CB8FF7A78B2FF0E0E12190000
          0000000000000000000000000000000000000000000000000000BDBCBCEBD7D6
          D6FFDEDDDCFFE4E3E3FFEAE9E9FFEDEDECFFF0EFEFFFF2F1F1FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF3F2F2FFF1F0F1FFFCFBF2FFD8D6E6FF0000A4FF0000
          9EFF00009CFF000099FF000096FF000092FF00008CFF00002647000000000000
          0000000000000000000000000000000000000000000000000000BDBCBCEBD6D5
          D5FFDDDCDCFFE2E1E1FFE8E7E7FFEBEAEAFFEEEDEDFFF0EFEFFFF1F0F0FFF2F1
          F1FFF2F1F1FFF2F1F1FFF0F0EFFFEEEDEEFFFFFFF2FFACABD8FF00009FFF1813
          A5FF1812A2FF1712A0FF171199FF161195FF0504294800000000000000000000
          0000000000000000000000000000000000000000000000000000BCBBBBEBD5D4
          D4FFDBDADAFFE0E0DFFFE5E4E4FFE8E7E7FFEBEAEAFFEDECECFFEEEDEDFFEFEE
          EEFFEFEEEEFFEEEEEDFFEDEDECFFEBEAEBFFFEFEEFFFABAAD4FF00009CFF1811
          A2FF16119FFF16119AFF151095FF060529480000000000000000000000000000
          0000000000000000000000000000000000000000000000000000BCBBBAEBD4D3
          D3FFD9D8D8FFDEDDDDFFE2E1E1FFE5E4E4FFE7E6E6FFE9E8E8FFEAE9E9FFEBEA
          EAFFEBEAEAFFEAE9E9FFE9E8E8FFE6E5E5FFF8F8EAFFA8A7CFFF00009AFF1611
          9EFF16119AFF151094FF06052A48000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000BBBABAEBD3D2
          D1FFD7D6D6FFDBDADAFFDEDDDDFFE1E0DFFFE2E1E1FFE3E2E2FFE4E3E3FFE5E4
          E4FFE5E4E4FFE4E3E3FFE3E2E2FFE1E0DFFFF2F1E4FFA4A2CAFF000096FF1510
          99FF151094FF0605294800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000BBBABAECD1D0
          CFFFD4D3D3FFD7D6D6FFD9D8D8FFDBDADAFFDCDCDBFFDDDCDCFFDEDDDDFFDEDD
          DDFFDEDDDDFFDEDDDCFFDDDCDCFFDAD9D9FFECEBDEFFA09EC5FF000091FF1410
          95FF06052A480000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C7C6C6FDCECD
          CCFFD1D0CFFFD3D2D1FFD4D3D3FFD5D4D4FFD6D5D5FFD6D5D5FFD7D6D6FFD7D6
          D6FFD7D6D6FFD6D6D5FFD6D5D5FFD4D3D4FFE6E7D7FF9C9AC0FF00008DFF0605
          2A48000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000005B5C5B75BEBD
          BDF1BAB9B9EBBBBABAEBBCBBBAEBBCBBBBEBBDBCBBEBBDBCBCEBBDBCBCEBBDBC
          BCEBBDBCBCEBBDBCBCEBBDBCBCEBBBBABAEBCCCCC0EC8E8BADEF000023400000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Layout = blGlyphTop
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        SpeedButtonOptions.Transparent = True
      end
      object cxDesistir: TcxButton
        Left = 468
        Top = 0
        Width = 75
        Height = 55
        Hint = '&Desistir da modifica'#231#227'o do registro'
        Cancel = True
        Caption = '&Desistir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = cxDesistirClick
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000202020298D8E
          8DB5C4C3C3F9B9B8B8EABBBABAEBBCBBBBEBBCBBBBEBBCBBBBEBBCBBBBEBBDBC
          BCEBBDBCBCEBBDBCBCEBBDBCBCEBBDBCBCEBBDBCBCEBBDBCBCEBBCBBBBEBBBBA
          BBEBC4C3BDEBD2D3C2EB403D95EB1A1689EBBDBBBAEBD8D8CBFC717270900000
          0000000000000000000017129FD9151096CC00000000000000007B7A7A9CC9C8
          C8FFCECDCDFFD1D0CFFFD2D1D1FFD4D3D2FFD4D3D3FFD5D4D4FFD5D5D4FFD6D5
          D5FFD6D5D5FFD6D5D5FFD6D5D5FFD6D5D5FFD6D5D5FFD6D5D5FFD4D5D4FFD8D7
          D6FFDDDCD6FF4643A7FF000091FF010093FF201B9AFFCACACBFFE3E4CDFF0000
          000000000000110CA4E01A14BBFF1A14BBFF15109AD206052C3C75747495CCCA
          CBFFD1D1CFFFD4D4D3FFD7D6D6FFD8D8D7FFDAD9D9FFDBDADAFFDCDBDBFFDDDC
          DCFFDDDCDCFFDDDCDCFFDDDCDCFFDDDCDCFFDDDCDCFFDDDCDCFFDBDADBFFE6E5
          DDFFC1BFD2FF000092FF0C0699FF18139BFF000093FF1E1A9AFFDBDBC7FC0404
          070900009BD51A14BBFF1A14BBFF1A14BBFF1A14BBFF100C709975747494CECD
          CBFFD4D3D2FFD7D6D6FFDBDAD9FFDEDDDCFFDFDEDEFFE1E0E0FFE2E1E1FFE3E2
          E2FFE4E3E2FFE4E3E3FFE4E3E3FFE4E3E3FFE4E3E2FFE3E2E2FFE2E1E1FFE1E0
          E0FFF3F2E4FF9A96C7FF000098FF0E099BFF18139BFF010092FF2B2795F92420
          A6E0130DBBFF1A14BBFF1A14BBFF1A14BBFF0A084A650000000075747494CDCC
          CCFFD5D4D4FFDAD8D9FFDEDDDDFFE1E0E0FFE4E3E3FFE6E5E5FFE8E7E7FFE9E8
          E8FFE9E8E8FFEAE9E9FFEAE9E9FFEAE9E9FFE9E8E8FFE9E8E8FFE8E7E7FFE6E5
          E5FFE5E5E3FFFFFFE9FF9B9AC9FF000099FF0D089BFF161199FF0C0790FF130D
          B8FF1B15BDFF1A14BBFF1A14BBFF0A084B66000000000000000075747494CFCE
          CEFFD6D5D5FFDCDBDBFFE1E0DFFFE5E4E4FFE8E7E7FFEBEAEAFFECECEBFFEDEC
          ECFFEEEDEDFFEEEDEDFFEEEDEDFFEEEDEDFFEEEDEDFFEDECECFFECECEBFFEBEA
          EAFFE8E7E7FFE5E4E4FFFFFFE8FFA3A1CBFF0F0A9DFF110C98FF151093FF1915
          B8FF1A14BDFF1A14BBFF0907405700000000000000000000000075757594D0CF
          CDFFD7D6D6FFDEDDDCFFE3E2E2FFE8E7E7FFEBEBEAFFEEEDEDFFEFEEEEFFF0EF
          EFFFF1F0F0FFF1F0F0FFF2F0F1FFF1F0F0FFF1F0F0FFF0EFEFFFEFEEEEFFEEED
          EDFFEBEBEAFFE6E5E5FFF7F6E8FFF4F3E4FF2823A4FF0C0796FF151093FF1914
          B8FF1A14BDFF1914B7F90000020300000000000000000000000075757594CFCE
          CEFFD8D7D7FFDFDEDEFFE5E4E4FFEAE9E9FFEDEDECFFF0EFEFFFF2F1F1FFF3F2
          F2FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F2FFF2F1F1FFF0EF
          EFFFECEBEDFFFDFCEFFFEBEBE6FF2C27AAFF030099FF16119BFF130E93FF1911
          B8FF1A14BDFF1A14BBFF1913B5F702010E13000000000000000075757594CFD0
          CEFFD9D8D8FFE0DFDFFFE6E5E5FFECEBEBFFEFEEEEFFF2F1F1FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF0EF
          F1FFFEFDF2FFF1F1ECFF2C28AFFF00009DFF1713A1FF100B99FF090491FF1611
          B9FF1913BCFF1A14BBFF1A14BBFF1913B5F702010C110000000075757594D0CF
          CEFFDAD9D9FFE1E0E0FFE8E7E7FFEDECECFFF0EFEFFFF3F2F2FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F3FFFAFA
          F4FFEBEBEEFF2520B1FF0000A2FF1914A5FF100B9FFF000094FF8E8DADF3201F
          4E660801B9FF1A14BBFF1A14BBFF1A14BBFF1914B7F90A08486275757594D0CF
          CEFFDAD9D9FFE1E1E0FFE8E7E7FFEEEDEDFFF1F0F0FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F3FFFEFD
          F6FFDFDDEAFF0000A7FF0802A6FF110CA4FF000099FF8986BEFFFCFDD6FF0000
          00000100374C1913BBFF1A14BBFF1A14BBFF1A14BBFF0E0A628575757594D0CF
          CFFFDAD9D9FFE2E1E0FFE9E8E8FFEEEDEDFFF2F1F1FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFFFFFF7FFCBC9E3FF0500A5FF000099FF8D8CC4FFF5F5DFFFD1D0CDFF0707
          06080000000003013F571B15BBFF1A14BBFF060428360000000075757594D0CF
          CFFFDAD9D9FFE2E1E1FFE9E8E8FFEFEEEEFFF2F1F1FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF2F1F1FFFFFFF5FFC6C4DEFFA19FCFFFF7F6E2FFD8D8D5FFCCCBCBFF0808
          080A00000000000000000705364906042837000000000000000075757594D0CF
          CFFFDBDADAFFE2E1E1FFE9E8E8FFEFEEEEFFF2F1F1FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF2F1F1FFEEEDEDFFF7F7EDFFF6F5E8FFDFDEDCFFD6D4D5FFCDCCCBFF0808
          080A00000000000000000000000000000000000000000000000076757594D0CF
          CFFFDBDADAFFE2E1E1FFEAE9E9FFEFEEEEFFF2F1F1FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF2F1F1FFEFEEEEFFE9E8E9FFE3E2E3FFDCDBDCFFD6D5D5FFCDCDCBFF0808
          080A00000000000000000000000000000000000000000000000076757594D0CF
          CFFFDBDADAFFE2E1E1FFEAE9E9FFEFEEEEFFF2F1F1FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF2F1F1FFEFEEEEFFEAE9E9FFE4E3E3FFDDDCDCFFD6D5D5FFCDCCCBFF0808
          080A00000000000000000000000000000000000000000000000076757594D0CF
          CFFFDBDADAFFE2E1E1FFEAE9E9FFEFEEEEFFF2F1F1FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF2F1F1FFEFEEEEFFEAE9E9FFE4E3E3FFDDDCDCFFD6D5D5FFCDCCCBFF0808
          080A00000000000000000000000000000000000000000000000076757594D0CF
          CFFFDBDADAFFE2E1E1FFEAE9E9FFEFEEEEFFF2F1F1FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF2F1F1FFEEEDEDFFEAE9E9FFE4E3E3FFDDDCDCFFD6D5D5FFCDCCCBFF0808
          080A00000000000000000000000000000000000000000000000075757594D0CF
          CFFFDBDADAFFE2E1E1FFE9E8E8FFEFEEEEFFF2F1F1FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF2F1F1FFEEEDEDFFE9E8E8FFE3E2E2FFDDDCDCFFD6D5D5FFCDCCCCFF0808
          080A00000000000000000000000000000000000000000000000075757594D0CF
          CFFFDAD9D9FFE2E1E1FFE9E8E8FFEFEEEEFFF2F1F1FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF1F0F0FFEDECECFFE8E7E7FFE2E1E1FFDCDBDBFFD5D5D4FFCECCCBFF0808
          080A00000000000000000000000000000000000000000000000075757594D0CF
          CFFFDAD9D9FFE2E1E1FFE9E8E8FFEEEDEDFFF2F1F1FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF2F1
          F1FFF0EFEFFFECEBEBFFE7E6E6FFE1E0E0FFDBDADAFFD5D4D4FFCCCBCBFF0808
          080A00000000000000000000000000000000000000000000000075757594D0CF
          CEFFDAD9D9FFE1E1E0FFE8E7E7FFEEEDEDFFF1F0F0FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF0EF
          F0FFEDECECFFEAE9EAFFE4E3E3FFDEDDDDFFD9D8D9FFD3D2D3FFCCCBCBFF0808
          080A00000000000000000000000000000000000000000000000075757594D0CF
          CEFFDAD9D9FFE1E0E0FFE8E7E7FFEDECECFFF0EFEFFFF3F2F2FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F1FFFFFF
          F3FFFFFFF3FFFFFFEEFFFAFBE9FFF5F5E4FFEFEFDDFFE8E9D7FFE0DFD1FF0A0A
          0A0C00000000000000000000000000000000000000000000000075757594CFD0
          CEFFD9D8D8FFE0DFDFFFE7E6E6FFECECEBFFEFEEEEFFF2F1F1FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F2FFFFFFF4FFB4B2
          DBFF8986CDFF8E8BCAFF8A87C4FF8784C1FF8381BBFF807DB6FF7A77B1FF0101
          010200000000000000000000000000000000000000000000000075757594CFCE
          CEFFD9D8D8FFDFDEDEFFE5E4E4FFEBEAEAFFEEEDEDFFF0EFEFFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F2FFF1F0F1FFFFFFF4FFB7B4DCFF0000
          9FFF00009FFF00009CFF000098FF000094FF000092FF00008CFF0000182C0000
          000000000000000000000000000000000000000000000000000075757594CFCE
          CEFFD8D7D7FFDEDDDDFFE4E3E3FFE9E8E8FFECEBEBFFEEEDEDFFF0EFEFFFF1F0
          F0FFF2F1F1FFF2F1F1FFF1F0F0FFF0EFEFFFEEEDEDFFFFFFF4FF8A86CDFF0000
          9DFF1914A4FF1812A1FF17129DFF171199FF161193FF0302182A000000000000
          000000000000000000000000000000000000000000000000000075757594CECF
          CDFFD7D6D6FFDDDCDBFFE2E1E0FFE6E5E5FFE9E8E8FFECEBEBFFEDECECFFEEED
          EDFFEFEEEEFFEFEEEEFFEEEDEDFFEDECECFFEBEAEBFFFFFFF0FF8D8BCBFF0000
          9CFF1812A1FF16119DFF161198FF151095FF0303182A00000000000000000000
          000000000000000000000000000000000000000000000000000075747494CFCE
          CCFFD5D5D4FFDBD9DAFFDFDEDEFFE2E2E1FFE5E5E4FFE8E7E7FFEAE9E9FFEBEA
          EAFFEBEAEAFFEBEAEAFFEAE9E9FFE9E8E8FFE6E5E6FFFCFCE9FF8A87C6FF0000
          98FF17129EFF161199FF151095FF0303182A0000000000000000000000000000
          000000000000000000000000000000000000000000000000000075747494CECD
          CBFFD4D3D2FFD8D7D7FFDCDBDBFFDFDEDDFFE1E0E0FFE2E1E1FFE3E2E2FFE5E4
          E4FFE5E4E4FFE5E4E4FFE4E3E3FFE3E2E2FFE0DFE0FFF6F6E3FF8784C0FF0000
          96FF171199FF151095FF0303182A000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000075747595CBCA
          CAFFD2D1D0FFD5D4D3FFD7D7D6FFDAD9D9FFDBDADAFFDDDCDCFFDDDCDCFFDEDD
          DDFFDEDDDDFFDEDDDDFFDEDDDCFFDDDCDCFFDAD9D9FFF0EFDEFF8481BBFF0000
          91FF161195FF0303182A00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000007B7A7A9CC9C8
          C8FFCECDCDFFD1D0CFFFD3D2D1FFD4D3D3FFD5D5D4FFD6D5D5FFD6D5D5FFD7D6
          D6FFD7D6D6FFD7D6D6FFD6D5D5FFD6D5D5FFD4D3D2FFE9E9D8FF807EB6FF0000
          8CFF0303182A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000202020298F8E
          8EB5C4C3C3F9B9B8B8EABBBABAEBBCBBBAEBBCBBBBEBBDBCBCEBBDBCBCEBBDBC
          BCEBBDBCBCEBBDBCBCEBBDBCBCEBBDBCBBEBBAB9BAEAD4D4C4F07471A5ED0000
          1424000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Layout = blGlyphTop
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        SpeedButtonOptions.Transparent = True
      end
    end
  end
  object pnCon: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 1
    Transparent = True
    Height = 484
    Width = 941
    object grConsulta: TcxGrid
      Left = 2
      Top = 81
      Width = 937
      Height = 401
      Hint = 'Grid de Dados'
      Align = alClient
      BorderStyle = cxcbsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LevelTabs.Style = 5
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Black'
      object grConsultaDBTableView1: TcxGridDBTableView
        DragMode = dmAutomatic
        OnDblClick = grConsultaDBTableView1DblClick
        NavigatorButtons.ConfirmDelete = False
        OnCustomDrawCell = grConsultaDBTableView1CustomDrawCell
        DataController.DataSource = dmCad.dsProd
        DataController.Filter.AutoDataSetFilter = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.PullFocusing = True
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.NoDataToDisplayInfoText = '<N'#227'o h'#225' registros>'
        OptionsView.GroupByBox = False
        OptionsView.GroupRowStyle = grsOffice11
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 15
        object IDPROD: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'IDPROD'
          Width = 50
        end
        object REFPROD: TcxGridDBColumn
          Caption = 'Refer'#234'ncia'
          DataBinding.FieldName = 'REFPROD'
          Width = 118
        end
        object PRODUTO: TcxGridDBColumn
          Caption = 'Produto'
          DataBinding.FieldName = 'PRODUTO'
          Width = 250
        end
        object UNPROD: TcxGridDBColumn
          Caption = 'Un.'
          DataBinding.FieldName = 'UNPROD'
          Width = 30
        end
        object MARCAPROD: TcxGridDBColumn
          Caption = 'Marca'
          DataBinding.FieldName = 'MARCAPROD'
          Width = 110
        end
        object ESTOQUEDISP: TcxGridDBColumn
          Caption = 'Est. Disp.'
          DataBinding.FieldName = 'ESTOQUEDISP'
          Width = 75
        end
        object ESTOQUETOTAL: TcxGridDBColumn
          Caption = 'Est. Total'
          DataBinding.FieldName = 'ESTOQUETOTAL'
          Width = 75
        end
        object CUSTO: TcxGridDBColumn
          Caption = 'P. Custo'
          DataBinding.FieldName = 'CUSTO'
        end
        object PRECOVENDA: TcxGridDBColumn
          Caption = 'P. Venda'
          DataBinding.FieldName = 'PRECOVENDA'
          Width = 100
        end
        object CODBAR: TcxGridDBColumn
          Caption = 'C'#243'd. Barras'
          DataBinding.FieldName = 'CODBAR'
          Width = 200
        end
      end
      object grConsultaLevel1: TcxGridLevel
        GridView = grConsultaDBTableView1
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 2
      Top = 2
      Align = alTop
      PanelStyle.Active = True
      ParentColor = False
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = ''
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 1
      Height = 79
      Width = 937
      object cxLabel31: TcxLabel
        Left = 7
        Top = 59
        Caption = 'Ordem:'
        Transparent = True
      end
      object cbOrdem: TcxComboBox
        Left = 46
        Top = 57
        ParentShowHint = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'C'#243'digo'
          'Refer'#234'ncia'
          'Produto'
          'Marca'
          'C'#243'd. Barras')
        Properties.OnChange = cbOrdemPropertiesChange
        ShowHint = False
        TabOrder = 1
        Text = 'Produto'
        Width = 121
      end
      object cxLabel32: TcxLabel
        Left = 171
        Top = 59
        Caption = 'Consulta:'
        Transparent = True
      end
      object eConsulta: TcxTextEdit
        Left = 220
        Top = 57
        Properties.CharCase = ecUpperCase
        Properties.OnChange = eConsultaPropertiesChange
        TabOrder = 3
        Width = 300
      end
      object cxLabel33: TcxLabel
        Left = 557
        Top = 59
        Caption = 'Ativo:'
        Transparent = True
      end
      object cbAtivo: TcxComboBox
        Left = 589
        Top = 57
        ParentShowHint = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'Todos'
          'Ativos'
          'Inativos')
        ShowHint = False
        TabOrder = 5
        Text = 'Todos'
        OnClick = cbAtivoClick
        Width = 121
      end
      object btnCon: TcxButton
        Left = 522
        Top = 56
        Width = 30
        Height = 22
        Hint = 'Consulta registros'
        TabOrder = 4
        OnClick = btnConClick
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000001F1F1E253A3962926D6B97D2D3D3C4ECD4D3C3ECA9A8
          A7D2737373921D1D1D2500000000000000000000000000000000000000000000
          0000000000008A8B83A4CECECFFF000094FF000097FF3733ADFFC3C1D5FFF1F0
          E1FFD7D7D6FFCFD0CFFF868682A4000000000000000000000000000000000000
          0000AAA9A6D1F2F2DDFF7C7AC1FF0200A1FF1811AAFF0000A1FF0000A4FFDEDD
          E4FFEEEDE7FFDEDDDDFFDCDBD5FFA4A5A5D10000000000000000000000008483
          83A7EAEBDBFF9B97CAFF0000A0FF140DACFF0100AAFF1710B0FF453FBEFFC9C9
          E5FFFAF9F2FFE8E7E7FFE0DFDEFFEDECDAFF2E2B6FAA000000001A1A1A21D1D0
          CFFFFBFAE6FF5753BDFF0000A2FF0000A7FF2E28B8FFE1DFEEFFFFFFFFFFFFFF
          F8FFF3F2F2FFF5F6F1FFFFFFEEFFFFFFE9FF9896BEFF0000142276767696DAD9
          D7FFFDFDEBFFA9A6D8FF2721B7FF8E8AD5FFFFFFFAFFFFFFF9FFF4F4F3FFF3F2
          F3FFFBFAF5FFFAF9F5FF736FC8FFBEBCD7FF9895C3FF00005296ACABABD7F3F2
          E3FFA7A6D5FFC5C3E4FFE8E6F0FFFFFFF8FFFDFCF5FFF4F3F3FFF4F3F3FFF3F2
          F2FFFFFFFAFFA6A3DDFF00009EFF0903A6FF1E17A2FF0D097DD7CAC9C1EDC6C6
          D7FF635FC3FFD2D0E8FFDEDCEEFFF7F6F4FFF3F2F3FFF4F3F3FFF4F3F3FFF3F2
          F2FFFFFFFBFF9590D8FF0000A7FF150FABFF120DA2FF130E8CEDD7D6C5ED6663
          BAFFB9B6DBFFC4C2E5FFF4F3F3FFFFFFF9FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2
          F3FFFFFFF7FFE6E6F0FF0700ACFF0D07A9FF1510A2FF100B8BEDC1C1B1D75F5B
          B6FF0701A5FF0200A9FF3A35BCFFFAFAF5FFFFFFFAFFFBFAF5FFF4F3F3FFF3F2
          F3FFFFFFF7FFDFDDECFF2D29B6FF130EA8FF09049EFF272384D785847A967875
          BBFF00009CFF130EAEFF0000A9FF120CB1FF837ED2FFDBDAEBFFFEFFF6FFF3F1
          F3FFFFFFFDFF9A97D7FF6E6AC7FFDEDEE2FF7975BAFF0C0957961C1C1A21B2B0
          C8FF00009AFF0D08A8FF2019B1FF2F2AB9FF241DB6FFFFFFF7FFFFFFF9FFFFFF
          F9FFE8E7F0FF6F6CC9FF0C05A7FF5551B5FF4844A6FF02011321000000009494
          88A78986BEFF000099FF2722AFFFC1C1E0FF8985D2FFA2A0DAFF7E7BCFFFE8E6
          EEFFE9E7ECFF8381C9FF100BA1FF3430A4FF0D0A63A800000000000000000000
          0000C2C2AFD16461B3FF000097FF241FABFF6561C2FF5552BEFF0000A1FFFAFA
          EDFFB3B2D5FF1812A3FF19139CFF090579D30000000000000000000000000000
          0000000000008C8C83A4130D98FF6863B5FFCAC9D6FF9693C8FFBAB9D4FFFCFB
          E5FF9F9DC6FF060194FF0A0660A5000000000000000000000000000000000000
          000000000000000000001E1E1D2554526992757398D2AFADB9EC9493B1EC3C39
          88D20D0A54920202152500000000000000000000000000000000}
      end
      object cxNovo: TcxButton
        Left = 165
        Top = 0
        Width = 75
        Height = 55
        Hint = 'Abre um novo registro'
        Caption = '&Novo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = cxNovoClick
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          20000000000000100000000000000000000000000000000000003030303DC3C2
          C2F8BCBBBBEEBBBABAEBBBBABAEBBCBBBBEBBCBBBBEBBCBBBBEBBDBCBCEBBDBC
          BCEBBDBCBCEBBDBCBCEBBDBCBCEBBDBCBCEBBDBCBCEBBDBCBBEBBCBBBBEBBCBB
          BBEBBCBBBBEBBBBABAEBBAB9BAEBC8C7BDEB9B99AEEB040084EB1611AAED1A14
          BDFF030318210000000000000000000000000000000000000000939393BCCCCB
          CBFFCFCECEFFD2D1D0FFD3D2D1FFD4D3D2FFD5D4D4FFD5D5D4FFD6D5D5FFD6D5
          D5FFD6D5D5FFD6D5D5FFD6D5D5FFD6D5D5FFD6D5D5FFD6D5D5FFD5D5D4FFD5D4
          D4FFD4D3D2FFD3D2D2FFD1D0CFFFE3E2D3FF9695BDFF000085FF1712A4FF1A14
          BFFF0604283600000000000000000000000000000000000000008F8F8FB6CFCE
          CDFFD3D2D1FFD5D5D4FFD7D7D6FFD9D8D8FFDBDADAFFDCDBDBFFDCDCDBFFDDDC
          DCFFDDDCDCFFDDDCDCFFDDDCDCFFDDDCDCFFDDDCDCFFDCDCDBFFDCDBDBFFDBDA
          DAFFD9D8D8FFD8D7D7FFD5D4D5FFE6E5D7FF9C9AC0FF00008AFF1711A3FF1A14
          C0FF0504263400000000000000000000000000000000000000008F8F8FB6D1D0
          CFFFD5D5D4FFD9D8D8FFDCDBDBFFDEDEDDFFE0DFDFFFE1E1E0FFE2E2E1FFE3E2
          E2FFE4E3E3FFE4E3E3FFE4E3E3FFE4E3E3FFE3E2E2FFE2E2E1FFE1E1E0FFDFDE
          DFFFDEDDDDFFDDDBDCFFD9D7D9FFE8E9DAFF9E9CC2FF00008BFF1711A4FF1A14
          C0FF050426340000000000000000000000000000000000000000908F8FB6D2D1
          D1FFD7D6D6FFDCDBDBFFE0DFDFFFE3E2E2FFE5E4E4FFE7E6E6FFE8E7E7FFE9E8
          E8FFEAE9E9FFEAE9E9FFEAE9E9FFEAE9E9FFE9E8E8FFE8E7E7FFE6E5E6FFF4F2
          E7FFFBFCE9FFF9FAE6FFF5F4E3FFFFFFE5FFADACC8FF00008BFF1711A4FF1A14
          C0FF04031D270000000000000000000000000000000000000000908F8FB6D3D2
          D2FFD9D8D8FFDFDEDEFFE3E2E2FFE7E6E6FFEAE9E9FFECEBEBFFEDECECFFEEED
          EDFFEEEDEDFFEEEDEDFFEEEDEDFFEEEDEDFFEEEDEDFFECEBECFFFDFEF0FFA29F
          D3FF312BAFFF413DB2FF413BAFFF433FADFF3430A5FF0D088FFF1712A4FF1A14
          C0FF16119BD3140F8FC3151094CA151094CA1711A3DE0A084660919090B6D4D3
          D3FFDBDADAFFE0DFDFFFE5E4E4FFEAE9E9FFEDECECFFEEEEEDFFF0EFEFFFF1F0
          F0FFF1F0F0FFF2F0F1FFF2F0F1FFF1F0F0FFF1F0F0FFEFEEEFFFFFFFF5FF6663
          C4FF00009EFF0701A3FF07009FFF06019CFF0B069AFF140F93FF1712A4FF1A14
          C0FF1A14BBFF1A14BBFF1A14BBFF1A14BBFF1A14BBFF100C729B919090B6D4D3
          D3FFDCDBDBFFE2E1E1FFE8E7E7FFECEBEBFFEFEEEEFFF1F0F0FFF2F1F1FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF2F1F0FFFFFFF9FF6864
          C5FF0000A0FF0B03A5FF0904A1FF08039DFF0D089BFF160F93FF1712A4FF1A14
          C0FF1A14BBFF1A14BBFF1A14BBFF1A14BBFF1A14BBFF100C719A919090B6D5D4
          D4FFDDDCDCFFE3E2E2FFEAE9E9FFEDECECFFF0EFEFFFF3F2F2FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F3FFFFFFF8FF9E9C
          D8FF2620B1FF3832B5FF3631B0FF3935ACFF2C28A4FF0D0892FF1712A4FF1A14
          C0FF1711A3DE15109AD216119FD916119ED81813AEED0A084B66919090B6D5D5
          D4FFDDDDDCFFE4E3E3FFEBEAEAFFEFEEEEFFF2F1F1FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF5F4F3FFFFFF
          F5FFFFFFF3FFFFFFF1FFF8F7EAFFFFFFE8FFAEACCBFF00008DFF1711A4FF1A14
          C0FF04031C260000000000000000000000000000000000000000919090B6D6D5
          D5FFDEDDDDFFE5E4E4FFECEBEBFFEFEFEEFFF3F2F2FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2
          F2FFF1F0EFFFEDECEBFFE6E5E4FFF4F4E5FFA3A1C8FF00008CFF1711A4FF1A14
          C0FF050426340000000000000000000000000000000000000000919090B6D6D5
          D5FFDEDDDDFFE5E4E4FFECEBEBFFF0EFEFFFF3F2F2FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2
          F2FFF0EFEFFFECEBEBFFE6E5E6FFF3F2E4FFA3A1C8FF00008CFF1711A4FF1A14
          C0FF050426340000000000000000000000000000000000000000919090B6D6D5
          D5FFDFDEDDFFE6E5E5FFECEBEBFFF0EFEFFFF3F2F2FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2
          F2FFF0EFEFFFEDECECFFE6E5E6FFF4F3E4FF9F9CC8FF00008BFF140EA4FF1A14
          C0FF050427350000000000000000000000000000000000000000919090B6D6D5
          D5FFDFDEDDFFE6E5E5FFEDECECFFF1F0F0FFF3F2F2FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2
          F2FFF0EFEFFFEDECECFFE6E5E6FFF0EFE4FFACAACCFF00008DFF0B05A2FF110B
          BFFF0504202C0000000000000000000000000000000000000000929190B6D6D5
          D5FFDFDEDEFFE6E5E5FFEDECECFFF1F0F0FFF3F2F2FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2
          F2FFF0EFEFFFEDECECFFE7E6E6FFE2E1DFFFE2E1DCFFD1D0CEFF6A6A75980000
          0000000000000000000000000000000000000000000000000000929190B6D6D5
          D5FFDFDEDEFFE6E5E5FFEDECECFFF1F0F0FFF3F2F2FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2
          F2FFF0EFEFFFEDECECFFE7E6E6FFE1E0DFFFDCDBD9FFDAD9D3FF8383728F0000
          0000000000000000000000000000000000000000000000000000929190B6D6D5
          D5FFDFDEDEFFE6E5E5FFEDECECFFF1F0F0FFF3F2F2FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2
          F2FFF0EFEFFFEDECECFFE7E6E6FFE0DFDFFFDAD9D9FFD1D1D1FF757473920000
          0000000000000000000000000000000000000000000000000000929190B6D6D5
          D5FFDFDEDEFFE6E5E5FFEDECECFFF1F0F0FFF3F2F2FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2
          F2FFF0EFEFFFECEBEBFFE7E6E6FFE0DFDFFFDAD9D9FFD2D1D1FF737373920000
          0000000000000000000000000000000000000000000000000000919090B6D6D5
          D5FFDFDEDDFFE6E5E5FFEDECECFFF1F0F0FFF3F2F2FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2
          F2FFF0EFEFFFECEBEBFFE6E5E5FFE0DFDFFFD9D8D8FFD2D1D1FF737373920000
          0000000000000000000000000000000000000000000000000000919090B6D6D5
          D5FFDFDEDDFFE6E5E5FFEDECECFFF0EFEFFFF3F2F2FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF2F1
          F1FFEFEEEEFFEBEAEAFFE5E4E4FFDFDEDEFFD9D8D8FFD2D1D0FF737373920000
          0000000000000000000000000000000000000000000000000000919090B6D6D5
          D5FFDEDDDDFFE5E4E4FFECEBEBFFF0EFEFFFF3F2F2FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF1F0
          F0FFEEEDEDFFEAE9E9FFE4E3E3FFDEDDDDFFD8D7D7FFD1D1D0FF737373920000
          0000000000000000000000000000000000000000000000000000919090B6D6D5
          D5FFDEDDDDFFE5E4E4FFECEBEBFFF0EFEFFFF3F2F2FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF1F0F1FFEFEE
          EFFFECEBECFFE7E6E6FFE1E0E0FFDBDADAFFD6D5D4FFD0CFCEFF737273920000
          0000000000000000000000000000000000000000000000000000919090B6D5D5
          D4FFDEDDDCFFE4E3E3FFEBEAEAFFEFEEEEFFF2F1F1FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F2FFF9F8F2FFFFFF
          F3FFFFFFF1FFFDFEECFFF8F7E5FFF2F1E1FFECEBDAFFE6E5D4FF7C7B77950000
          0000000000000000000000000000000000000000000000000000919090B6D5D4
          D4FFDDDCDCFFE3E3E3FFEAE9E9FFEEEDEDFFF1F0F0FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F2FFFDFCF3FFE5E5ECFF908C
          D0FF8D8ACCFF8B88C8FF8885C3FF8582BEFF837FB9FF726EB0FF4B4B57760000
          0000000000000000000000000000000000000000000000000000919090B6D5D4
          D3FFDCDBDBFFE2E1E1FFE8E7E7FFEDECECFFEFEEEEFFF2F1F1FFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF2F1F1FFF2F1F0FFFFFFF3FF3733B6FF0000
          9CFF00009DFF00009AFF000096FF000091FF00008FFF00004E99000000000000
          0000000000000000000000000000000000000000000000000000919090B6D4D3
          D3FFDBDADAFFE1E0E0FFE6E5E5FFEBEAEAFFEDEDECFFEFEEEEFFF1F0F0FFF2F1
          F1FFF2F1F1FFF2F1F1FFF1F0F0FFF0EFEFFFF3F2EEFFF1F1EDFF1813A9FF0E09
          A3FF1812A4FF17129FFF17129BFF161196FF0D0B589900000000000000000000
          0000000000000000000000000000000000000000000000000000919090B6D3D3
          D2FFDAD9D9FFDFDEDEFFE4E3E3FFE7E6E6FFEBEAEAFFEDECECFFEEEDEDFFEFEE
          EEFFEFEEEEFFEEEEEDFFEEEDEDFFEBECEBFFF0EFECFFEFEFE9FF1F1BA8FF0E07
          9FFF1611A0FF16119BFF151095FF0C0A58990000000000000000000000000000
          0000000000000000000000000000000000000000000000000000908F8FB6D2D2
          D1FFD8D7D7FFDDDCDCFFE1E0E0FFE4E3E3FFE7E6E6FFE9E8E8FFEAE9E9FFEBEA
          EAFFEBEAEAFFEBEAEAFFEAE9E9FFE8E7E7FFEAE9E5FFEAE9E3FF1E19A4FF0D08
          9DFF16119BFF151097FF0C0A5899000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000008F8F8FB6D1D0
          D0FFD6D5D5FFDAD9D9FFDDDDDCFFE0DFDFFFE1E0E0FFE3E2E2FFE4E3E3FFE5E4
          E4FFE5E4E4FFE5E4E4FFE3E3E2FFE2E0E1FFE5E4DFFFE4E4DEFF1E19A0FF0D08
          98FF151097FF0C0A589900000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000008F8F8FB6CFCE
          CDFFD3D2D2FFD6D6D5FFD9D8D8FFDBDADAFFDCDBDBFFDDDCDCFFDEDDDCFFDEDD
          DDFFDEDDDDFFDEDDDDFFDDDCDCFFDCDBDBFFDFDEDAFFDEDED9FF1D199BFF0C07
          94FF0C0A58990000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000939393BCCCCB
          CBFFD0CFCEFFD2D1D0FFD4D3D2FFD5D4D4FFD5D5D4FFD6D5D5FFD7D6D6FFD7D6
          D6FFD7D6D6FFD7D6D6FFD6D5D5FFD4D3D4FFD9D8D3FFD9D8D3FF1C1797FF0704
          5699000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003030303DC3C2
          C2F8BDBCBCEEBBBABAEBBBBABAEBBCBBBAEBBDBCBBEBBDBCBCEBBDBCBCEBBDBC
          BCEBBDBCBCEBBDBCBCEBBDBCBCEBBBBABBEBBFBEBAEAD2D1CCFF0F0D518B0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Layout = blGlyphTop
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        SpeedButtonOptions.Transparent = True
      end
      object cxEditar: TcxButton
        Left = 239
        Top = 0
        Width = 75
        Height = 55
        Hint = 'Edita o registro selecionado'
        Caption = '&Editar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnClick = cxEditarClick
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000002727
          27328D8E8DB5C4C3C3F9B9B8B8EABBBABAEBBCBBBBEBBCBBBBEBBCBBBBEBBCBB
          BBEBBDBCBCEBBDBCBCEBBDBCBCEBBDBCBCEBBDBCBCEBBDBCBCEBBDBCBCEBBCBB
          BBEBBCBBBBEBBCBBBBEBBCBBBBEBBBBABAEBBAB9B9EBBAB9B9EBC6C5C5FD6464
          6480000000000000000000000000000000000000000000000000000000008786
          86ABC9C8C8FFCECDCDFFD1D0CFFFD2D1D1FFD4D3D2FFD4D3D3FFD5D4D4FFD5D5
          D4FFD6D5D5FFD6D5D5FFD6D5D5FFD6D5D5FFD6D5D5FFD6D5D5FFD6D5D5FFD5D5
          D4FFD5D4D4FFD4D3D3FFD4D3D2FFD2D2D1FFD1D0CFFFCFCECEFFCCCBCBFFC8C7
          C7FF000000000000000000000000000000000000000000000000000000008282
          82A6CCCACBFFD1D1CFFFD4D4D3FFD6D6D5FFD8D8D7FFDAD9D9FFDBDADAFFDCDB
          DBFFDDDCDCFFDDDCDCFFDDDCDCFFDEDDDCFFDDDCDCFFDCDBDBFFDDDBDCFFDCDB
          DBFFDBDADAFFDAD9D9FFD8D8D7FFD6D6D6FFD5D4D3FFD2D1D0FFCFCECDFFC9C8
          C8FF000000000000000000000000000000000000000000000000000000008382
          82A6CECDCBFFD4D3D2FFD7D6D6FFDBDADAFFDEDDDCFFDFDEDEFFE1E0E0FFE2E1
          E1FFE3E2E2FFE4E3E2FFE5E4E3FFEBE9E6FFFEFEEDFFF9F9EAFFE6E6E4FFE2E1
          E1FFE0DFDEFFDEDDDEFFDEDDDCFFDBDADAFFD8D7D7FFD4D4D3FFD0D0CFFFCAC9
          C9FF000000000000000000000000000000000000000000000000000000008382
          82A6CDCCCCFFD5D4D4FFDAD9D9FFDEDDDDFFE1E0E0FFE4E3E3FFE6E5E5FFE8E7
          E7FFE9E8E8FFE8E7E7FFFBFAF0FF9D9BCAFF4D4AAAFF9C99CBFFE5E3E5FFEBEA
          E9FFEFEEEBFFEFEEE8FFE1E0E0FFDEDDDDFFDBDADAFFD6D6D5FFD2D1D0FFCAC9
          C9FF000000000000000000000000000000000000000000000000000000008382
          82A6CFCECEFFD6D5D5FFDCDBDBFFE1E0E0FFE5E4E4FFE8E7E7FFEBEAEAFFECEC
          EBFFEDECECFFEDECEDFFFEFDF4FFC6C5DCFF00007CFF3C39A5FFDCDDD6FFE0E0
          D9FFD0D0D4FFCFCED8FFFAFBF0FFDFE0DFFFDDDCDCFFD8D7D7FFD3D2D2FFCBCA
          CAFF000000000000000000000000000000000000000000000000000000008383
          83A6D0CFCDFFD7D6D6FFDEDDDCFFE3E2E2FFE8E7E7FFEBEBEAFFEEEDEDFFEFEE
          EEFFF0EFEFFFF1F0F0FFF6F5F3FFF0EEF1FF6965B3FFEFEFE3FFF9F8EDFFFFFF
          F7FF6E6BB0FF000070FFD1D1D8FFFEFDEFFFDDDEDDFFDAD9D9FFD4D3D2FFCBCA
          CAFF000000000000000000000000000000000000000000000000000000008383
          83A6CFCECEFFD8D7D7FFDFDEDEFFE5E4E4FFEAE9E9FFEDEDECFFF0EFEFFFF2F1
          F1FFF3F2F2FFF4F3F3FFF4F3F3FFFBF9F9FFEAE9DEFFECEDE3FFF8F7F5FF5D57
          C2FF2721ACFF0B0692FF08027BFFCFCED5FFF9FAECFFD9D8D9FFD5D4D3FFCBCA
          CAFF000000000000000000000000000000000000000000000000000000008383
          83A6CFD0CEFFD9D8D8FFE0DFDFFFE7E6E6FFECEBEBFFEFEEEEFFF2F1F1FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF8F7F7FFE8E8E5FFFFFFE8FF8D88CFFF0000
          9BFF0F08A8FF322BB2FF110B95FF07027CFFCBCBD2FFF5F4E8FFD5D4D4FFCCCB
          CAFF000000000000000000000000000000000000000000000000000000008383
          83A6D0CFCEFFDAD9D9FFE1E0E0FFE8E7E7FFEDECECFFF0EFEFFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF7F6F6FFFAF9F2FF464294FF1C189DFF1F1A
          ACFF130CAAFF140EABFF302BB3FF120D98FF07037BFFC7C7CEFFEEEEE0FFCBCA
          CAFF000000000000000000000000000000000000000000000000000000008383
          83A6D0CFCEFFDAD9D9FFE1E1E0FFE9E8E8FFEEEDEDFFF1F0F0FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF5F4F3FFFFFFFDFF7773AEFF000070FF2B26
          A5FF241FAFFF120CA9FF140EABFF302BB3FF120D96FF08047DFFC0C1C7FFE6E5
          D6FF000000000000000000000000000000000000000000000000000000008383
          83A6D0CFCFFFDAD9D9FFE2E1E0FFE9E8E8FFEEEDEDFFF2F1F1FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF8F7F5FFFFFFFFFF8987B7FF0000
          73FF2A25A6FF241FAFFF120CA9FF140EA9FF302BB2FF120D97FF09057EFFB2B0
          BCFF000000000000000000000000000000000000000000000000000000008383
          83A6D0CFCFFFDAD9D9FFE2E1E1FFEAE9E9FFEFEEEEFFF2F1F1FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F3FFF8F7F5FFFFFFFFFF8987
          B7FF000074FF2A25A6FF241FAFFF120CA9FF140EAAFF322CB2FF0B0794FF0000
          78FF19191A230000000000000000000000000000000000000000000000008383
          83A6D0CFCFFFDBDADAFFE2E1E1FFEAE9E9FFEFEEEEFFF2F1F1FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F3FFF8F7F5FFFFFF
          FFFF8987B7FF000073FF2A25A5FF231FAFFF140EAAFF0802A6FF1711A9FFB0AC
          D3FFE6E5D9FE1919181F00000000000000000000000000000000000000008483
          83A6D0CFCFFFDBDADAFFE2E1E1FFEAE9E9FFEFEEEEFFF2F1F1FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F3FFF8F7
          F5FFFFFFFFFF8786B5FF000073FF2B26A5FF1913AAFF0000A1FFB6B3DFFFFFFF
          FFFFE9E8E8FFDADAD4FF1A1A191F000000000000000000000000000000008483
          83A6D0CFCFFFDBDADAFFE2E1E1FFEAE9E9FFEFEEEEFFF2F1F1FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2
          F3FFF8F7F5FFFFFFFFFF8784B3FF000071FF120E9DFFBDB9E1FFFFFFFEFFF4F3
          F3FFF5F4F2FFFFFFF1FF9693C0FF0000111E0000000000000000000000008483
          83A6D0CFCFFFDBDADAFFE2E1E1FFEAE9E9FFEFEEEEFFF2F1F1FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF6F5F3FFFFFFFEFF7774ADFF8E8BB6FFFFFFF8FFF6F5F4FFF6F5
          F3FFFFFFFFFFA8A6DCFF00009EFF0E0995FE0907417100000000000000008483
          83A6D0CFCFFFDBDADAFFE2E1E1FFEAE9E9FFEFEEEEFFF2F1F1FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF0EFF0FFF1F0EDFFFDFEF3FFE7E6DBFFD7D6D6FFEDECEBFFFFFF
          FDFFABA9DEFF0000A8FF0F08A5FF17119AFF0D0A5EA100000000000000008383
          83A6D0CFCFFFDBDADAFFE2E1E1FFEAE9E9FFEFEEEEFFF2F1F1FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF1F0F0FFEEEDEDFFEAE9E8FFE3E2E3FFD3D2D2FFEBEADCFFA09D
          D3FF0000A6FF0F0AA8FF16139EFF08063A650000000000000000000000008383
          83A6D0CFCFFFDAD9D9FFE2E1E1FFEAE9E9FFEFEEEEFFF2F1F1FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF3F2F2FFF0EFEFFFEDECECFFE8E7E7FFE2E1E1FFE6E5DFFFB4B2C6FF0000
          90FF0A04A0FF18129DFF08063B66000000000000000000000000000000008383
          83A6D0CFCFFFDAD9D9FFE2E1E1FFE9E8E8FFEEEDEDFFF2F0F1FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF2F1F1FFEFEEEEFFECEBEBFFE7E6E6FFE1E0DFFFDCDBDAFFE3E3D7FF7370
          B0FF00008CFB0705396500000000000000000000000000000000000000008383
          83A6D0CFCEFFDAD9D9FFE1E1E0FFE9E8E8FFEEEDEDFFF1F0F0FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF0EFF0FFEDECEDFFE9E8E8FFE4E3E3FFDEDDDEFFD7D6D9FFD7D6D3FFE7E6
          D2FE000000000000000000000000000000000000000000000000000000008383
          83A6D0CFCEFFDAD9D9FFE1E0E0FFE8E7E7FFEDECECFFF0EFEFFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F1FFFFFFF3FFFFFFF3FFFFFFEEFFFAFBE9FFF5F4E2FFEFEEDDFFE8E7D7FFE7E6
          D1FF000000000000000000000000000000000000000000000000000000008383
          83A6CFD0CEFFD9D8D8FFE0DFDFFFE7E6E6FFECECEBFFEFEEEEFFF2F1F1FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFFFFF
          F3FFAFACDAFF8986CDFF8E8BCAFF8A87C4FF8784C1FF8381BCFF807DB6FF7572
          A9F5000000000000000000000000000000000000000000000000000000008383
          83A6CFCECEFFD9D8D8FFDFDFDEFFE5E5E4FFEBEAEAFFEEEDEDFFF0EFEFFFF3F2
          F2FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F2FFF1F0F1FFFFFFF5FFAEAB
          DAFF00009EFF00009EFF00009BFF000098FF000093FF000091FF00008CFF0000
          1221000000000000000000000000000000000000000000000000000000008383
          83A6CFCECEFFD8D7D7FFDEDDDDFFE4E3E3FFE9E8E8FFECEBEBFFEEEDEDFFF0EF
          EFFFF1F0F0FFF2F1F1FFF2F1F1FFF1F0F0FFF0EFEFFFEEEDEDFFFFFFF4FF7A77
          C8FF00009EFF1914A4FF1812A1FF17129DFF161198FF161194FF0302121F0000
          0000000000000000000000000000000000000000000000000000000000008383
          83A6CECFCDFFD7D6D6FFDDDCDBFFE2E1E0FFE6E5E5FFE9E8E8FFECEBEBFFEDEC
          ECFFEEEDEDFFEFEEEEFFEFEEEEFFEEEDEDFFEDECECFFEBEAEBFFFFFFF0FF7E7B
          C6FF00009BFF1812A1FF16119EFF161199FF151093FF0202121F000000000000
          0000000000000000000000000000000000000000000000000000000000008382
          82A6CFCECCFFD5D5D4FFDBDADAFFDFDEDEFFE2E2E1FFE5E5E4FFE8E7E7FFEAE9
          E9FFEBEAEAFFEBEAEAFFEBEAEAFFEAE9E9FFE9E8E8FFE6E5E6FFFEFEEAFF7C79
          C1FF000099FF17129EFF161199FF151093FF0202121F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000008382
          82A6CECDCBFFD4D3D2FFD8D7D7FFDCDBDBFFDFDEDDFFE1E0E0FFE2E1E1FFE3E2
          E2FFE5E4E4FFE5E4E4FFE5E4E4FFE4E3E3FFE3E2E2FFE0DFDFFFF9F8E5FF7976
          BDFF000095FF171299FF151095FF0202121F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008282
          83A6CBCACAFFD2D1D0FFD5D4D4FFD8D7D7FFDAD9D9FFDBDADAFFDDDCDCFFDEDD
          DCFFDEDDDDFFDEDDDDFFDEDDDDFFDEDDDCFFDCDCDBFFDAD9DAFFF2F1DFFF7673
          B8FF000090FF161193FF0202121F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008786
          86ABC9C8C8FFCECDCDFFD1D0D0FFD3D2D1FFD4D3D3FFD5D5D4FFD6D5D5FFD6D5
          D5FFD7D6D6FFD7D6D6FFD7D6D6FFD6D5D5FFD6D5D5FFD4D3D2FFECEBD9FF7370
          B3FF00008DFF0302121F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002727
          27328F8E8EB5C4C3C3F9B9B8B8EABBBABAEBBCBBBAEBBCBBBBEBBDBCBCEBBDBC
          BCEBBDBCBCEBBDBCBCEBBDBCBCEBBDBCBCEBBDBCBBEBBAB9BAEAD6D7C6F26462
          9DE800000E1A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Layout = blGlyphTop
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        SpeedButtonOptions.Transparent = True
      end
      object cxVisualiza: TcxButton
        Left = 311
        Top = 0
        Width = 75
        Height = 55
        Hint = 'Visualiza o registro'
        Caption = '&Visualizar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        OnClick = cxVisualizaClick
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          00002525252F8E8E8EB5A1A0A1CD9D9C9DC69E9D9DC69E9E9EC69E9E9EC69E9E
          9EC69E9E9EC69E9E9EC69E9E9EC69E9E9EC69E9E9EC69E9E9EC69E9E9EC69E9E
          9EC69E9E9EC69E9E9EC69E9E9EC69E9D9DC69D9C9CC69D9C9CC6A2A1A2CE8989
          86AA0A0A0C102A2A2A36A3A3A0BD939293B10000000000000000000000000000
          0000969695BFCBC9CAFFCECDCDFFCFCECFFFD1D0CFFFD2D1D1FFD2D1D1FFD3D3
          D2FFD3D3D2FFD4D3D3FFD4D3D3FFD4D3D3FFD4D3D3FFD4D3D3FFD4D3D3FFD4D3
          D3FFD3D3D2FFD3D2D1FFD2D1D1FFD1D0D0FFD1D0CEFFCFCECDFFCDCCCCFFD0CF
          CBFF60606E94A0A09AB1F4F4F1FFE1E1E2FF0000000000000000000000000000
          00009F9E9FCBCECCCCFFD2D1D0FFD4D4D3FFD6D5D5FFD8D7D7FFD9D8D8FFDADA
          D9FFDADAD9FFDBDADAFFDBDADAFFDBDADAFFDBDADAFFDBDADAFFDBDADAFFDBDA
          DAFFDADAD9FFDAD8D8FFD8D7D8FFD6D6D5FFD5D5D3FFD3D2D1FFD7D6D0FFAAA9
          C0FF4946A3F2BAB9E3FCFFFFFFFFD6D4D4F10000000000000000000000000000
          00009E9E9EC9CFCECEFFD4D4D3FFD8D7D7FFDBDADAFFDDDDDCFFDEDEDDFFE0DF
          DFFFE1E0E0FFE2E1E1FFE2E1E1FFE3E2E1FFE3E2E1FFE3E2E1FFE2E1E1FFE1E1
          E0FFE1E0E0FFDFDFDEFFDEDDDCFFDBDADAFFD9D8D8FFDADAD6FFB3B2C5FF443E
          ACFF0200ABFF2727BAFFA6A7C7EC53524E600000000000000000000000000000
          00009F9E9EC9D0CFCFFFD6D6D5FFDBDADAFFDFDEDEFFE2E1E1FFE4E3E3FFE6E5
          E5FFE7E6E6FFE8E7E7FFE8E7E8FFE9E8E8FFE9E8E8FFE9E8E8FFE8E7E7FFE5E4
          E5FFE2E1E2FFE1E0E0FFE0DFE0FFDFDEDEFFE2E1DDFFB0AFC9FF3834A9FF1811
          B2FF0B05B2FF0B0997ED2F2F425D000000000000000000000000000000000000
          00009E9E9EC9D1D0CFFFD7D7D7FFDDDCDBFFE1E1E0FFE5E4E4FFE8E7E7FFEAE9
          E9FFEBEAEAFFEDECECFFEDECECFFEEEDEDFFEFEEEEFFE9E8E9FFE3E3E2FFE9E8
          E2FFEDEDE4FFECEBE3FFE8E7E0FFDEDDDCFFE1E2DCFF9C9AC5FF0D08ADFF0200
          AFFF15129CEE2B2A426000000000000000000000000000000000000000000000
          00009F9E9EC9D2D1D0FFDAD9D9FFDFDEDEFFE4E3E3FFE9E7E7FFECEBEBFFEEED
          EDFFEFEEEEFFF0EFEFFFF1F0F0FFF2F1F1FFE9E8E9FFE6E5E1FFF0EFE5FFDEDD
          E3FFCAC9DEFFCBC9DFFFDAD9E0FFEBEAE3FFE5E4DCFFE8E7DFFF8784CFFF3635
          ACFF4B4A68940000000000000000000000000000000000000000000000000000
          0000A09F9EC9D3D2D1FFDBDADAFFE0DFDFFFE6E5E5FFECEAEAFFEEEEEDFFF0EF
          EFFFF2F1F1FFF3F2F2FFF4F3F3FFECEBECFFE7E6E3FFEEEDE6FFB8B6D7FF9D9C
          D7FFA9A6DEFFABA8DDFF9C9BD5FFACABD3FFE7E6E4FFF3F2E5FFD9D9D5FFC4C2
          CAFF575659730000000000000000000000000000000000000000000000000000
          0000A09F9EC9D3D2D2FFDCDBDBFFE2E1E1FFE9E8E8FFEDECECFFF0EFEFFFF3F2
          F2FFF4F3F3FFF5F4F4FFEFEEEEFFE3E2E1FFF0F0E8FFA8A7D3FFA5A4DDFFE8E7
          F2FFF6F5F4FFF3F2F1FFE9E8EEFFB4B3DDFFA09FD1FFE8E7E4FFDFDED8FFD1D0
          CFFF605F5F770000000000000000000000000000000000000000000000000000
          0000A09F9EC9D3D2D2FFDCDCDBFFE3E2E2FFEAE9E9FFEEEDEDFFF2F1F1FFF4F3
          F3FFF4F3F3FFF6F5F5FFEAE9E9FFEEEDE3FFC4C3DBFFA3A2DAFFF3F2F6FFF9F8
          F6FFF7F6F5FFF6F5F4FFF4F4F1FFEFEFEEFFABAADAFFB5B4D8FFEDEDE3FFD1D0
          CFFF5E5E5E770000000000000000000000000000000000000000000000000000
          0000A09F9FC9D4D3D3FFDDDCDCFFE4E3E3FFEBEAEAFFEFEEEEFFF2F1F1FFF4F3
          F3FFF4F3F3FFF5F4F4FFEFEEEDFFEFEEE5FFA6A4D8FFCFCDEBFFFBFBF6FFF6F5
          F5FFF6F5F5FFF5F4F4FFF2F2F2FFF2F1EFFFD7D5E5FF9C9BD5FFEBEAE6FFD7D6
          D3FF5E5E5E770000000000000000000000000000000000000000000000000000
          0000A09F9FC9D4D3D3FFDDDCDCFFE4E3E3FFEBEAEAFFEFEFEEFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F4FFF4F4F0FFE7E6E5FFABA9DBFFDEDEF0FFF9F9F6FFF6F5
          F5FFF6F5F5FFF5F5F5FFF3F2F2FFF1F0EFFFDFDEE7FF9F9CD6FFE4E2E4FFDCDB
          D7FF5E5D5E770000000000000000000000000000000000000000000000000000
          0000A09F9FC9D4D3D3FFDDDCDCFFE4E3E3FFECEBEBFFF0EFEFFFF3F2F2FFF4F3
          F3FFF4F3F3FFF5F4F4FFF2F1EFFFEEEDE6FFA5A3D8FFD5D4ECFFFBFAF6FFF6F5
          F5FFF6F5F5FFF5F5F5FFF3F2F2FFF2F1EFFFDBDAE6FF9C9AD4FFE8E8E6FFD9D8
          D5FF5F5D5E770000000000000000000000000000000000000000000000000000
          0000A09F9FC9D5D4D3FFDDDCDDFFE5E4E4FFECEBEBFFF0EFEFFFF4F3F3FFF4F3
          F3FFF4F3F3FFF6F5F5FFEBEAEAFFF2F1E4FFBBBADAFFADACDEFFF8F7F6FFF8F7
          F5FFF6F5F5FFF5F5F5FFF5F4F2FFF4F3F0FFB8B7DEFFAEACD6FFEFEEE6FFD3D1
          D0FF5F5E5E770000000000000000000000000000000000000000000000000000
          0000A09F9FC9D5D4D3FFDDDCDDFFE5E4E4FFECEBEBFFF0EFEFFFF4F2F3FFF4F3
          F3FFF4F3F3FFF5F4F4FFEDECECFFE5E4E1FFF0EFE7FF9D9BD1FFB6B3E2FFF5F4
          F5FFFBFAF7FFF9F8F5FFF7F5F3FFC3C2E4FF9291D0FFE5E4E5FFE2E2DDFFCFCE
          CEFF5F5E5E770000000000000000000000000000000000000000000000000000
          0000A09F9FC9D5D4D3FFDDDCDDFFE5E4E4FFECEBEBFFF0EFEFFFF4F2F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFEAE9EAFFECEBE5FFE9E8E6FFA4A2D3FF9F9C
          D8FFBFBDE6FFC1C0E6FFA2A0DAFF9C9BD1FFDCDBE3FFECEBE4FFD5D4D5FFD2D1
          D0FF5F5E5E770000000000000000000000000000000000000000000000000000
          0000A09F9FC9D5D4D3FFDDDCDDFFE5E4E4FFECEBEBFFF0EFEFFFF4F2F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF5F4F4FFE9E8E9FFEAE9E5FFF1F0E8FFCFCD
          DFFFBBB8DBFFBCBBDBFFC9C8DDFFEAE9E5FFEBEAE3FFDAD9D9FFD9D8D8FFD2D1
          D0FF5F5E5E770000000000000000000000000000000000000000000000000000
          0000A09F9FC9D5D4D3FFDDDCDDFFE5E4E4FFECEBEBFFF0EFEFFFF4F2F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF5F4F4FFEAE9EAFFE4E3E1FFEFEE
          E5FFF3F1E9FFF0EFE8FFF0EFE5FFE4E3DFFFDEDDDEFFDFDEDFFFDAD9D9FFD1D1
          D0FF5F5E5E770000000000000000000000000000000000000000000000000000
          0000A09F9FC9D5D4D3FFDDDCDDFFE5E4E4FFECEBEBFFF0EFEFFFF4F2F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF1F0F0FFF1F0
          F0FFF3F2F2FFF2F1F1FFEDECEDFFE9E8E9FFE6E5E5FFE0DFDFFFDAD9D9FFD1D1
          D0FF5F5E5E770000000000000000000000000000000000000000000000000000
          0000A1A09FC9D4D3D3FFDDDCDCFFE5E4E4FFECEBEBFFF0EFEFFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF5F4F4FFF4F3
          F3FFF4F3F3FFF2F1F1FFEFEEEEFFECEBEBFFE6E5E5FFDFDEDEFFD9D8D8FFD1D0
          CFFF5F5E5E770000000000000000000000000000000000000000000000000000
          0000A09F9FC9D4D3D3FFDDDCDCFFE5E3E3FFECEBEBFFEFEEEEFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF1F0F0FFEEEDEDFFEAE9E9FFE4E3E3FFDEDDDDFFD8D7D7FFD1D0
          CFFF5F5E5E770000000000000000000000000000000000000000000000000000
          0000A09F9FC9D4D3D3FFDDDCDCFFE4E3E3FFEBEAEAFFEFEEEEFFF2F1F1FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF2F1F1FFEFEDEEFFEBEBEBFFE6E5E6FFE1DFE1FFDBDADBFFD6D5D5FFCFCE
          CEFF5E5E5E770000000000000000000000000000000000000000000000000000
          0000A09F9FC9D3D3D2FFDDDCDBFFE3E2E2FFEAE9EAFFEEEEEDFFF2F1F1FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2
          F2FFF6F5F1FFFEFDF3FFFCFCF0FFF8F8EAFFF3F3E3FFEDEDDFFFE7E7D9FFE1E0
          D2FF686762790000000000000000000000000000000000000000000000000000
          0000A09F9EC9D3D2D2FFDCDBDBFFE2E1E1FFE9E8E8FFEDEDECFFF0EFEFFFF3F2
          F2FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F2FFF8F7
          F2FFE8E7ECFF9D9BD4FF9795CFFF9896CCFF9593C7FF9190C2FF8E8CBDFF8B89
          B8FF3A394C6B0000000000000000000000000000000000000000000000000000
          0000A09F9EC9D3D2D2FFDBDBDAFFE1E1E0FFE8E7E7FFECEBEBFFEFEEEEFFF2F1
          F1FFF3F2F2FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F2FFF3F2F0FFF7F6
          F1FF5352BDFF01009FFF03009FFF03009DFF030198FF030094FF01008FFF0706
          5699020205080000000000000000000000000000000000000000000000000000
          00009F9E9EC9D2D1D1FFDAD9D9FFE0DFDEFFE6E5E5FFEAE9E9FFEDECECFFEFEE
          EEFFF1F0F0FFF2F1F1FFF2F1F1FFF2F1F1FFF2F1F1FFF0EFEFFFF3F2EEFFE9E7
          ECFF2422ADFF0C08A3FF1812A3FF1610A0FF15109BFF150F97FF0C07599C0000
          0101000000000000000000000000000000000000000000000000000000000000
          00009F9E9EC9D2D1D0FFD9D8D8FFDFDEDDFFE3E2E2FFE7E6E6FFEBEAEAFFEDEC
          ECFFEEEDEDFFEFEEEEFFEFEEEEFFEFEEEEFFEEEDEDFFEDECECFFEFEEEBFFEAE8
          E8FF2B29ACFF0D08A0FF1712A0FF16119BFF151096FF0D0A5899000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009F9E9EC9D1D0CFFFD7D6D6FFDCDBDBFFE1E0DFFFE4E3E3FFE7E6E6FFE9E8
          E8FFEAE9E9FFEBEAEAFFEBEAEAFFEBEAEAFFEAEAE9FFE8E7E7FFE9E8E5FFE7E6
          E2FF2A28A8FF0C089DFF17119CFF151097FF0D0A5A9C00000102000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009E9D9EC9D0CFCEFFD5D5D4FFDAD9D9FFDDDCDCFFDFDFDEFFE1E1E0FFE3E2
          E2FFE4E3E3FFE5E4E4FFE5E4E4FFE5E4E4FFE4E3E3FFE2E1E1FFE3E3DFFFE2E0
          DDFF2927A3FF0C0898FF161197FF0D0A58980000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009E9E9ECACECDCDFFD3D3D2FFD6D6D5FFD8D7D7FFDBDADAFFDCDBDBFFDDDC
          DCFFDEDDDCFFDEDDDDFFDEDDDDFFDEDDDDFFDDDCDCFFDCDBDBFFDDDCDAFFDBDA
          D8FF28269FFF0B0793FF0D0A599C000001020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000A2A2A2CECCCBCBFFCFCECEFFD2D1D0FFD3D2D2FFD5D4D4FFD5D5D4FFD6D5
          D5FFD6D5D5FFD7D6D6FFD7D6D6FFD7D6D5FFD6D5D5FFD5D5D4FFD8D7D4FFD6D5
          D1FF27259AFF0704559800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003B3B3B4BA9A9A9D8BCBBBBEEB9B8B8E8BAB9B9E8BAB9B9E8BBBABAE8BBBA
          BAE8BBBABAE8BBBABAE8BBBABAE8BBBABAE8BBBABAE8BBBABAE8BCBBBAE8C6C4
          C1F3171659960000010200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Layout = blGlyphTop
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        SpeedButtonOptions.Transparent = True
      end
      object cxApaga: TcxButton
        Left = 385
        Top = 0
        Width = 75
        Height = 55
        Hint = 'Apaga o registro'
        Caption = '&Apagar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnClick = cxApagaClick
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          000029292934939393BCA8A7A7D5A3A2A2CDA3A2A2CDA4A3A3CDA4A3A3CDA4A3
          A3CDA4A3A3CDA4A3A3CDA4A3A3CDA4A3A3CDA4A3A3CDA4A3A3CDA4A3A3CDA4A3
          A3CDA4A3A3CDA4A3A3CDA4A3A3CDA3A2A2CDA3A3A2CFAAAAA9D3B0AFAFD7AEAD
          ACD15F5F5F752827273100000000000000000000000000000000000000000000
          00009E9D9DC8CBC9CAFFCECDCDFFD0CFCFFFD2D1D0FFD3D2D2FFD3D2D2FFD4D4
          D3FFD4D4D3FFD5D4D4FFD5D4D4FFD5D4D4FFD5D4D4FFD5D4D4FFD5D4D4FFD5D4
          D4FFD4D4D3FFD4D3D2FFD3D2D2FFD4D4D3FFDDDCDCFFE3E2E2FFE1E0DFFFE0DF
          DEFFE1E0E0FFC6C6C6E55D5D5D6E000000000000000000000000000000000000
          00009E9E9ECACECCCCFFD2D1D0FFD4D4D3FFD6D6D5FFD8D7D8FFD9D8D8FFDBDA
          DAFFDBDADAFFDCDBDBFFDCDBDBFFDCDBDBFFDCDBDBFFDCDBDBFFDCDBDBFFDBDB
          DAFFDBDADAFFDAD9D9FFD7D6D6FFE4E3E4FFE5E3E4FFD7D6D5FFD2D1CFFFCFCE
          CEFFB3B2B2D8C7C6C6E2E2E1E1FF5958596B0606060700000000000000000000
          00009E9D9DC8CFCECEFFD5D4D3FFD8D7D7FFDCDBDBFFDEDDDDFFDFDEDEFFE1E0
          E0FFE1E0E0FFE2E1E1FFE2E1E2FFE3E2E2FFE3E2E2FFE3E2E2FFE2E1E1FFE1E1
          E0FFE1E0E0FFDFDFDBFFE7E6E0FFECEBE7FFDDDDD8FFDADAD5FFD7D7D2FFD1D0
          CDFF706F6D8624242329D4D3CBE5D8D8D2F04D4D4B5D00000000000000000000
          00009E9E9EC8D0CFCFFFD6D6D5FFDBDADAFFDFDEDEFFE2E2E1FFE4E3E3FFE6E5
          E5FFE7E6E6FFE8E7E7FFE9E8E8FFEAE9E9FFE9E8E9FFE9E8E8FFE8E7E7FFE8E7
          E7FFE7E6E5FFD6D5DAFFDBDAE5FFDAD9DCFFCFCFD4FFC5C4D1FFBAB8CAFFC4C2
          CAFF605F77A10101020265656B86D7D5E1FF9C9B99B500000000000000000000
          00009E9D9DC8D2D1D0FFD8D7D7FFDEDDDCFFE2E1E1FFE6E5E5FFE9E8E8FFEBEA
          EAFFECEBEBFFEDECECFFEDECECFFEEEDEDFFEEEDEDFFEDECECFFEDECECFFECEC
          EBFFF3F2EDFF8583C4FF3632B8FF2A29ADFF3D38ACFF2F2AA6FF3832A8FF3A35
          A9FF150F8FE8000074C5191793E33A36B9FF26248DD200000000000000000000
          00009E9E9EC8D2D1D0FFDAD9D9FFDFDEDEFFE4E3E3FFE9E8E8FFECEBEBFFEEED
          EDFFEFEEEEFFF0EFEFFFF1F0F0FFF1F0F0FFF1F0F0FFF1F0F0FFF0EFEFFFF0EF
          EEFFF7F6F0FF8180C3FF211DB2FF2D28B0FF3530AAFF2A26A5FF3B37AAFF2A26
          A4FF221E93E6070480D41F1C97E32F2BB7FF151287D000000000000000000000
          00009F9E9EC8D3D2D1FFDBDADAFFE1E0E0FFE6E5E6FFEBEAEAFFEEEEEDFFF0F0
          EFFFF2F1F1FFF3F2F2FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F2FFF2F1
          F1FFF2F1F1FFDDDBE0FFD0CEE3FFD5D4DEFFCFCED8FFC9C7D5FFC1BFCEFFC2C2
          CBFF3E3B689C0101070D5C5C6884D7D6E2FF9F9E9FBC00000000000000000000
          00009F9E9EC8D3D2D2FFDCDBDBFFE2E1E1FFE9E8E8FFEDECECFFF0EFEFFFF3F2
          F2FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF3F2F2FFF0EEECFFECECE4FFEEEFE9FFE7E7E0FFE3E2DEFFDDDCD9FFE2E1
          D4FF4746608920202734E2E2D5EBDAD9CFEB5554516300000000000000000000
          00009F9E9EC8D3D3D2FFDCDCDBFFE3E2E2FFEAE9E9FFEEEDEDFFF2F1F1FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF2F1F1FFE5E4E5FFE4E4E4FFE7E6E5FFDEDEDDFFD8D7D6FFD1D0
          D0FFC0C0B9DCD7D7CEE4E5E4E5FF565656670808080A00000000000000000000
          00009F9E9EC8D4D3D3FFDDDCDCFFE4E3E3FFEBEAEAFFEFEEEEFFF2F1F1FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF3F2F2FFF0EFEFFFE4E3E3FFE2E1E1FFE5E5E5FFE5E4E4FFE6E5
          E5FFE4E2E3FFCBCACBE964636376050505060000000000000000000000000000
          00009F9E9EC8D4D3D3FFDDDCDCFFE4E3E3FFEBEAEAFFEFEEEEFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF3F2F2FFF0EFEFFFECEBEBFFE2E1E1FFDBDADAFFDBDADAFFD6D6
          D5FF919191AE1E1E1E2500000000000000000000000000000000000000000000
          00009F9E9EC8D4D3D3FFDDDCDCFFE4E3E3FFECEBEBFFF0EFEFFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF3F2F2FFF0EFEFFFEDECECFFE8E7E7FFE1E0E0FFD9D8D8FFD1D1
          CFFF6F6E6E8B0000000000000000000000000000000000000000000000000000
          00009F9E9EC8D4D3D3FFDDDCDDFFE5E4E4FFECEBEBFFF0EFEFFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF3F2F2FFF0EFEFFFEDECECFFE8E7E7FFE1E0E0FFDAD9D9FFD3D2
          D1FF737272900000000000000000000000000000000000000000000000000000
          00009F9E9EC8D4D3D3FFDDDCDDFFE5E4E4FFECEBEBFFF0EFEFFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF3F2F2FFF0EFEFFFEDECECFFE8E7E7FFE1E0E0FFDAD9D9FFD3D2
          D1FF737272900000000000000000000000000000000000000000000000000000
          00009F9E9EC8D4D3D3FFDDDCDDFFE5E4E4FFECEBEBFFF0EFEFFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF3F2F2FFF0EFEFFFEDECECFFE8E7E7FFE1E0E0FFDAD9D9FFD3D2
          D1FF737272900000000000000000000000000000000000000000000000000000
          00009F9E9EC8D4D3D3FFDDDCDDFFE5E4E4FFECEBEBFFF0EFEFFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF3F2F2FFF0EFEFFFEDECECFFE8E7E7FFE1E0E0FFDAD9D9FFD3D2
          D1FF737272900000000000000000000000000000000000000000000000000000
          00009F9E9EC8D4D3D3FFDDDCDDFFE5E4E4FFECEBEBFFF0EFEFFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF3F2F2FFF0EFEFFFECEBEBFFE7E6E6FFE1DFE0FFDAD9D9FFD2D2
          D1FF737272900000000000000000000000000000000000000000000000000000
          00009F9E9EC8D4D3D3FFDDDCDDFFE5E4E4FFECEBEBFFF0EFEFFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF3F2F2FFF0EFEFFFECEBEBFFE7E6E6FFE0E0DFFFDAD9D9FFD2D2
          D1FF737272900000000000000000000000000000000000000000000000000000
          00009F9E9EC8D4D3D3FFDDDCDCFFE5E4E4FFECEBEBFFF0EFEFFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF2F1F1FFEFEEEEFFEBEAEAFFE6E4E5FFE0DFDFFFD9D8D8FFD2D1
          D0FF737272900000000000000000000000000000000000000000000000000000
          00009F9E9EC8D4D3D3FFDDDCDCFFE4E3E3FFECEBEBFFEFEEEEFFF3F2F2FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF1F0F0FFEEEDEDFFEAE9E9FFE4E3E3FFDEDDDDFFD8D7D8FFD2D1
          D0FF737272900000000000000000000000000000000000000000000000000000
          00009F9E9EC8D4D3D3FFDDDCDCFFE4E3E3FFEBEAEAFFEFEEEEFFF2F1F1FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF2F1F1FFEFEDEEFFEBEBEBFFE7E6E7FFE1E0E1FFDBDADBFFD5D5D5FFD0CF
          CFFF727272900000000000000000000000000000000000000000000000000000
          00009F9E9EC8D3D3D2FFDDDCDBFFE3E2E2FFEAE9E9FFEEEEEDFFF2F1F1FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2
          F2FFF6F5F1FFFEFEF3FFFEFDF0FFFAF9EBFFF4F4E4FFEEEDDFFFE8E8D9FFE1E2
          D3FF7D7D76920000000000000000000000000000000000000000000000000000
          00009F9E9EC8D3D2D2FFDCDBDBFFE2E1E1FFE9E8E8FFEDEDECFFF0EFEFFFF3F2
          F2FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F2FFF8F7
          F2FFE9E9EDFF9997D3FF8F8ECDFF9290CAFF8F8CC5FF8A89C0FF8986BCFF8683
          B7FF43425A800000000000000000000000000000000000000000000000000000
          00009F9E9EC8D3D2D2FFDBDBDAFFE1E1E0FFE8E7E7FFECEBEBFFEFEEEEFFF1F0
          F0FFF3F2F2FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F2FFF2F1F1FFFAF9
          F2FF5C5ABFFF00009EFF02009FFF02009CFF010098FF020094FF010090FF0303
          5CA5020204070000000000000000000000000000000000000000000000000000
          00009E9E9EC8D2D1D1FFDAD9D9FFE0DFDEFFE6E5E5FFEAE9E9FFEDECECFFEFEE
          EEFFF1F0F0FFF2F1F1FFF2F1F1FFF2F1F1FFF2F1F1FFF0EFEFFFF0F0EEFFF0EF
          EEFF2F2CB0FF0A06A3FF1913A4FF1711A0FF16119CFF161098FF0D0A60A70000
          0306000000000000000000000000000000000000000000000000000000000000
          00009E9E9EC8D2D1D0FFD9D8D8FFDEDDDDFFE3E2E2FFE7E6E6FFEBEAEAFFEDEC
          ECFFEEEDEDFFEFEEEEFFEFEEEEFFEFEEEEFFEEEDEDFFEDECECFFEDEBEAFFF0EF
          E9FF3533AFFF0B079FFF1812A0FF16119BFF161097FF0E0A5FA5000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009E9D9DC8D1D0CFFFD7D6D6FFDCDBDBFFE1E0DFFFE4E3E3FFE7E6E6FFE9E8
          E8FFEAE9E9FFEBEAEAFFEBEAEAFFEBEAEAFFEAE9E9FFE8E7E7FFE7E6E5FFEDEB
          E4FF3432ABFF0A069CFF17119CFF151097FF0E0B61A800000306000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009E9C9DC8CFCFCEFFD5D5D4FFDAD9D9FFDDDCDCFFDFDFDEFFE1E0E0FFE3E2
          E2FFE4E3E3FFE5E4E4FFE5E4E4FFE5E4E4FFE4E3E3FFE2E1E1FFE2E1DFFFE8E6
          DFFF3230A6FF0A0697FF171197FF0E0A60A50000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009E9E9ECACECDCDFFD3D3D2FFD6D6D5FFD8D7D7FFDBD9DAFFDCDBDBFFDDDC
          DCFFDEDDDCFFDEDDDCFFDEDDDDFFDEDDDDFFDDDCDCFFDCDBDBFFDCDBDAFFE1E0
          DAFF3130A2FF090693FF0E0B61A8000003060000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000A2A1A1CDCCCBCBFFCFCECEFFD2D1D0FFD3D2D2FFD5D4D4FFD5D5D4FFD6D5
          D5FFD6D5D5FFD7D6D6FFD7D6D6FFD7D6D5FFD6D5D5FFD5D5D4FFD6D5D3FFDCDA
          D3FF302E9DFF07045DA600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003A3A3A4AA8A7A7D6BCBBBBEEB8B7B7E7B9B8B8E7B9B8B8E7BAB9B9E7BAB9
          B9E7BAB9B9E7BAB9B9E7BAB9B9E7BAB9B9E7BAB9B9E7BAB9B9E7BBBAB9E7CBCA
          C3F31E1D61A00000040700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Layout = blGlyphTop
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        SpeedButtonOptions.Transparent = True
      end
      object cxPrint: TcxButton
        Left = 459
        Top = 0
        Width = 75
        Height = 55
        Hint = 'Imprimir o registro'
        Caption = '&Imprimir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
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
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        SpeedButtonOptions.Transparent = True
      end
      object cxSair: TcxButton
        Left = 696
        Top = 0
        Width = 75
        Height = 55
        Hint = 'Sair da tela'
        Cancel = True
        Caption = '&Fechar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
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
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        SpeedButtonOptions.Transparent = True
      end
      object cxQtdeReg: TcxLabel
        Left = 715
        Top = 59
        Caption = 'Qtde. Registros: '
        Transparent = True
      end
      object cxMov: TcxButton
        Left = 607
        Top = 0
        Width = 90
        Height = 55
        Hint = 'Edita o registro selecionado'
        Caption = '&Movimenta'#231#245'es'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        OnClick = cxMovClick
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000003838
          3848C6C5C5F9C0BFBFEEBFBEBEEBBFBEBEEBBEBDBCEAC9C7C7FA939392BB0000
          0000000000000000000068686784CBCACAFEC0BFBEECBFBEBEEBBFBEBEEBBFBE
          BEECCBC9CAFE68686784000000000000000000000000100C6BBB151092FA130F
          8BEA130F8BEB130F8BEB140F8CEE151091F9060529480000000000000000A4A3
          A3CFD3D2D2FFD7D6D6FFDAD9D9FFDCDBD9FFDAD9D9FFD5D4D4FFCDCCCCFF2929
          29340000000000000000CCCBCBFFD4D3D3FFDAD9D9FFDCDADBFFDCDADBFFD8D9
          D7FFD4D3D3FFCDCCCBFF000000000000000002011D34161196FF16119BFF1611
          9EFF1611A0FF16119FFF16119DFF161199FF100D77CF0000000000000000A4A3
          A2CCD7D6D6FFDFDEDEFFE1E0E0FFE2E1E1FFDFDEDEFFDBDADAFFD0CFCFFF2828
          28330000000000000000CFCECDFFD9D8D8FFDFDEDEFFE2E3E1FFE2E3E1FFDFDE
          DEFFD9D8D9FFD0CFCEFF000000000000000002011D33161299FF16119FFF1712
          A3FF1712A5FF1712A5FF1711A2FF16119CFF110D76CC0000000000000000A2A2
          A2CBDAD9D9FFE2E1E1FFE8E7E7FFE9E8E8FFE4E3E3FFDDDCDCFFD2D1D1FF2828
          28330000000000000000D0CFCFFFDDDCDCFFE6E5E5FFEAE8E9FFEAE8E9FFE4E5
          E3FFDCDCDBFFD2D1CFFF000000000000000002011D3317119AFF1711A2FF1812
          A7FF1812ABFF1812A9FF1712A5FF16119EFF110D77CB0000000000000000A3A2
          A2CBDCDBDAFFE5E4E4FFEDECECFFEDEDECFFE9E8E8FFE0DFDEFFD3D2D2FF2828
          28330000000000000000D1D0D0FFDFDEDEFFEAE9E9FFEFEEEEFFEFEEEEFFEAE9
          E9FFDFDEDEFFD2D1D0FF000000000000000002011D3317129BFF1712A4FF1812
          ACFF1813ADFF1813ACFF1812A8FF1611A0FF110D77CB0000000000000000A3A2
          A2CBDDDCDCFFE9E8E8FFEFEEEEFFEEEDEDFFECEBEBFFE1E0E0FFD3D3D2FF2928
          28330000000000000000D2D1D0FFE1E0E0FFEDECECFFF2F1F1FFF2F1F1FFEBEA
          EAFFE0DFDFFFD2D3D1FF000000000000000002011D3317129BFF1712A6FF1813
          ADFF1813AFFF1813B0FF1812A9FF1711A1FF110D76CB0000000000000000A3A2
          A2CBDEDDDDFFE9E8E8FFF0EFEFFFEFEEEEFFEDECECFFE2E1E1FFD4D3D3FF2928
          28330000000000000000D2D1D1FFE2E1E0FFEDECEDFFF4F3F3FFF4F3F3FFECED
          EBFFE2E0E0FFD3D2D1FF000000000000000002011D3317129CFF1712A7FF1813
          AEFF1913B1FF1913B0FF1812ABFF1711A2FF110D77CB0000000000000000A3A2
          A2CBDEDDDDFFE9E8E8FFF0EFEFFFF1F0F0FFEDECECFFE2E1E1FFD4D3D3FF2928
          28330000000000000000D2D1D1FFE2E1E1FFEFEEEEFFF5F4F4FFF5F4F4FFEDED
          ECFFE2E2E1FFD3D2D2FF000000000000000002011D3317129BFF1712A8FF1813
          AFFF1913B2FF1913B1FF1812ABFF1611A2FF110D77CB0000000000000000A3A2
          A2CBDDDCDCFFE9E8E8FFEFEEEEFFEEEFEDFFECEBEBFFE1E0E0FFD3D3D2FF2828
          28330000000000000000D1D0D1FFE3E2E1FFEEEDEEFFF5F4F4FFF5F4F4FFEEED
          EEFFE3E2E1FFD3D2D2FF000000000000000002011D3317129BFF1712A8FF1813
          AFFF1913B2FF1913B1FF1812ACFF1711A2FF110D77CB0000000000000000A3A2
          A2CBDCDBDAFFE5E4E4FFEDECECFFEDEDECFFE9E7E8FFE0DFDFFFD3D2D2FF2828
          28330000000000000000D1D2D0FFE3E2E2FFEEEFEDFFF5F3F4FFF5F4F4FFEEED
          EEFFE3E2E1FFD3D3D2FF000000000000000002011D3317129BFF1712A8FF1813
          AFFF1913B2FF1913B1FF1813ACFF1711A2FF110D77CB0000000000000000A2A2
          A2CBDAD9D9FFE2E1E1FFE8E6E7FFE9E8E8FFE4E5E3FFDFDEDCFFD2D1D1FF2828
          28330000000000000000D3D2D0FFE3E2E2FFEEEFEDFFF5F3F4FFF5F4F4FFEEED
          EEFFE3E2E1FFD3D3D2FF000000000000000002011D3317129BFF1712A8FF1913
          B1FF1913B2FF1913B1FF1813ACFF1711A2FF110D77CB0000000000000000A4A3
          A2CCD7D6D6FFDFDEDEFFE1E2E0FFE3E2E2FFE1E0DEFFDAD9DAFFD0D1CFFF2828
          28330000000000000000D3D2D0FFE3E2E2FFEEEFEDFFF5F3F4FFF5F4F4FFEEED
          EEFFE3E2E1FFD3D3D2FF000000000000000002011D3317129BFF1812A8FF1913
          B1FF1913B2FF1913B1FF1813ACFF1711A2FF110D77CB0000000000000000A6A5
          A5D1D3D2D2FFD7D6D6FFDAD9DAFFDAD9D9FFD8D7D7FFD5D4D4FFCECDCCFF2A2A
          2A360000000000000000D3D2D0FFE3E2E2FFEEEFEDFFF5F3F4FFF5F4F4FFEEED
          EEFFE3E2E1FFD3D3D2FF000000000000000002011D3317129BFF1812A8FF1913
          B1FF1913B2FF1913B1FF1813ACFF1711A2FF110D77CB00000000000000005454
          546BCBCCCAFFCFCDCCFFCFCECFFFCFCECEFFCECFCDFFCECDCBFFB9B7B8E90000
          00000000000000000000D3D2D0FFE3E2E2FFEEEFEDFFF5F3F4FFF5F4F4FFEEED
          EEFFE3E2E1FFD3D3D2FF000000000000000002011D3317129BFF1812A8FF1913
          B1FF1913B2FF1913B1FF1813ACFF1711A2FF110D77CB00000000000000000000
          00000C0C0C0F141414191111111611111116111111161515151B000000000000
          00000000000000000000D1D2D0FFE3E2E2FFEEEFEDFFF5F3F4FFF5F4F4FFEEED
          EEFFE3E2E1FFD3D3D2FF000000000000000002011D3317129BFF1812A8FF1913
          B1FF1913B2FF1913B1FF1813ACFF1711A2FF110D77CB00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D1D0D1FFE3E2E1FFEEEDEEFFF5F4F4FFF5F4F4FFEEED
          EEFFE3E2E1FFD3D2D2FF000000000000000002011D3317129BFF1812A8FF1913
          B1FF1913B2FF1913B1FF1813ACFF1711A2FF110D77CB00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D2D1D1FFE2E1E1FFEFEEEEFFF5F4F4FFF3F2F2FFEDEC
          ECFFE2E1E1FFD3D2D2FF000000000000000002011D3317129BFF1812A8FF1913
          B1FF1913B2FF1913B1FF1813ACFF1711A2FF110D77CB00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D2D1D1FFE2E1E1FFEDECEDFFF4F3F3FFF2F1F1FFECED
          EBFFE1E1E0FFD3D2D1FF000000000000000002011D3317129BFF1812A8FF1913
          B1FF1913B2FF1913B1FF1813ACFF1711A2FF110D77CB00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D2D1D0FFE1E0DFFFEDECECFFF0EFEFFFF0EFEFFFECEB
          EBFFE0DFDFFFD2D3D1FF000000000000000002011D3317129BFF1812A8FF1913
          B1FF1913B2FF1913B1FF1813ACFF1711A2FF110D77CB00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D1D0D0FFDFDEDEFFEAE9E9FFEEEEEDFFEEEDEDFFE9E8
          E8FFDFDEDEFFD2D1D0FF000000000000000002011D3317129BFF1812A8FF1913
          B1FF1913B2FF1913B1FF1813ACFF1711A2FF110D77CB00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D0CFCFFFDCDBDBFFE4E3E4FFEAE9E9FFE9E7E8FFE4E3
          E4FFDCDBDBFFD0D1CFFF000000000000000002011D3317129BFF1812A8FF1913
          B1FF1913B2FF1913B1FF1813ACFF1711A2FF110D77CB00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000D0CFCDFFDAD9D9FFE0DFDDFFE1E2E0FFE1E2E0FFE0DF
          DDFFDAD8D9FFD0CFCEFF000000000000000002011D3317129BFF1812A8FF1913
          B1FF1913B2FF1913B1FF1813ACFF1711A2FF110D77CB00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000CBCACAFFD4D3D2FFD7D6D6FFD9D8D8FFD9D8D8FFD7D6
          D6FFD4D3D2FFCDCCCBFF000000000000000002011D3317129BFF1712A8FF1813
          AFFF1913B2FF1913B1FF1813ACFF1711A2FF110D77CB00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000006362627ECBCACAFFC7C7C6F8C8C7C7F7C8C7C7F7C7C7
          C6F8CBCACAFF6463637E000000000000000002011D3317129BFF1712A8FF1813
          AFFF1913B2FF1913B1FF1813ACFF1711A2FF110D77CB00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000004031D3316119BFF1712A8FF1813
          AFFF1913B2FF1913B1FF1812ACFF1711A2FF110D77CB00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000004031E3316119BFF1712A7FF1813
          AFFF1913B2FF1913B1FF1812ABFF1611A2FF110D77CB00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000004031E3316119BFF1712A6FF1813
          AFFF1913B0FF1913B1FF1812AAFF1711A1FF110D77CB00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000004031D3316119AFF1712A5FF1812
          ACFF1813AEFF1813AFFF1812A9FF1611A1FF110D76CB00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000004031D33161099FF1712A3FF1812
          A9FF1812ABFF1812AAFF1712A6FF16119FFF110D77CB00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000004031E34151098FF1711A2FF1712
          A5FF1712A8FF1712A6FF1712A4FF16119DFF110D76CC00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000004031E34151096FF16119DFF1611
          A0FF1711A1FF1711A0FF16119EFF16119AFF100D77CF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000F0C6CBB151092FA130F
          8BEA130F8BEB130F8BEB140F8CEE151091F906052A4A00000000}
        Layout = blGlyphTop
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        SpeedButtonOptions.Transparent = True
      end
      object cxConEstoque: TcxButton
        Left = 533
        Top = 0
        Width = 75
        Height = 55
        Hint = 'Movimenta'#231#245'es de estoque do produto.'
        Caption = 'E&stoque'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
        OnClick = cxConEstoqueClick
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          000012121217A2A2A2CFC3C2C2F5BCBBBAEABEBDBCEBBDBEBDEBBEBDBDEBBEBD
          BDEBBFBEBDEBBFBEBDEBBFBEBDEBBFBEBDEBBFBEBEEBBFBEBEEBBFBEBEEBBFBE
          BEEBBFBEBDEBBFBEBDEBBFBEBDEBBFBEBDEBBEBDBDEBBEBDBDEBBFBEBCEBBEBD
          BCEBBCBBBAEAC3C2C2F5A2A2A2CF121212170000000000000000000000000000
          0000807F7FA3CCCBCCFFD3D2D1FFD5D5D4FFD8D7D7FFDAD9D8FFDBDADAFFDCDB
          DBFFDDDCDCFFDDDDDCFFDEDDDDFFDEDDDDFFDEDDDDFFDEDDDDFFDEDDDDFFDEDD
          DDFFDEDDDDFFDEDDDDFFDEDDDCFFDDDCDCFFDCDCDBFFDBDADAFFDAD9D9FFD8D7
          D7FFD5D4D4FFD3D2D1FFCCCBCCFF807F7FA30000000000000000000000000000
          0000848383A7D1D0CFFFD6D6D5FFDBDADAFFDFDEDDFFE1E0E0FFE4E3E3FFE5E5
          E4FFE7E6E6FFE8E7E7FFE9E8E8FFE9E8E8FFE9E8E8FFE9E8E8FFE9E8E8FFE9E8
          E8FFE9E8E8FFE9E8E8FFE8E7E7FFE7E6E6FFE6E5E5FFE4E3E3FFE1E0E0FFDEDE
          DDFFDBDADAFFD6D6D5FFD1D0CFFF848484A70000000000000000000000000000
          0000838383A6D2D1D1FFD9D8D8FFDEDEDFFFE3E2E2FFE7E6E6FFEAE9E9FFECEB
          EBFFEEEDEDFFEFEEEEFFEFEEEEFFEFEEEEFFF0EFEFFFF0EFEFFFF0EFEFFFF0EF
          EFFFF0EFEFFFEFEEEEFFEFEEEEFFEEEDEDFFECECEBFFEAE9E9FFE7E6E6FFE3E2
          E2FFDEDDDDFFD9D8D8FFD2D1D1FF838383A60000000000000000000000000000
          0000838383A6D3D2D0FFDBDADAFFE1E0DFFFE6E5E5FFEAE9E9FFEDECECFFEFEE
          EEFFF1F0F0FFF2F1F1FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2
          F2FFF3F2F2FFF3F2F2FFF3F2F2FFF1F0F0FFEFEFEEFFEDEDECFFECEBEBFFE6E5
          E5FFE0DFDFFFDBDADAFFD3D2D2FF838383A60000000000000000000000000000
          0000838383A6D3D2D2FFDBDADAFFE1E0E0FFE7E5E6FFEBEAEAFFEEEDEDFFF0EF
          EFFFF2F1F1FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F2FFF0EFEFFFEEEDEDFFEBEAEAFFE6E5
          E5FFE1E0E0FFDBDADAFFD3D2D2FF848383A60000000000000000000000000000
          0000838383A6D3D2D1FFDAD9D9FFE0DFDFFFE5E4E4FFE9E8E8FFECEBEBFFEEEE
          EDFFF0EFEFFFF1F0F0FFF2F1F1FFF2F1F1FFF2F1F1FFF2F1F1FFF2F1F1FFF2F1
          F1FFF2F1F1FFF2F1F1FFF1F0F0FFF0EFEFFFEFEEEEFFECEBEBFFE9E8E8FFE4E3
          E3FFE0DFDFFFDAD9D9FFD2D2D1FF838383A60000000000000000000000000000
          0000838383A6D2D1D0FFD8D7D7FFDEDDDDFFE2E1E0FFE5E4E4FFE8E7E7FFEAE9
          E9FFEBEAEAFFECEBEBFFECECEBFFEDECECFFEDECECFFEDECECFFEDECECFFEDEC
          ECFFEDECECFFECECECFFECEBEBFFEBEBEAFFEAE9E9FFE8E7E7FFE5E4E4FFE1E1
          E0FFDDDCDCFFD8D7D7FFD2D1D0FF838383A60000000000000000000000000000
          0000848384A8CFCECEFFD4D5D4FFD8D9D9FFDCDBDCFFDEDDDEFFE0DFDFFFE1E0
          E1FFE4E1E2FFE3E2E3FFE3E2E3FFE4E3E3FFE4E3E4FFE4E3E4FFE4E3E4FFE4E3
          E4FFE4E3E3FFE5E3E3FFE3E2E3FFE4E1E2FFE1E0E1FFE0DFDFFFDEDDDEFFDBDA
          DBFFD8D7D8FFD4D5D4FFCECECDFF848384A80000000000000000000000000000
          00007B7B7390DDDCD0FFE3E2D4FFE5E4D6FFE6E6D9FFE7E8DAFFE8E9DBFFE9EA
          DCFFEAEADCFFEAEADDFFEAEBDDFFECEBDDFFECEBDDFFECEBDDFFECEBDDFFECEB
          DDFFECEBDDFFECEBDDFFEAEBDDFFEAEADEFFE9EADCFFE8E9DBFFE7E8DAFFE7E6
          D8FFE5E4D6FFE1E2D4FFDEDCD0FF7B7A73900000000000000000000000000000
          00000000000075748ABCA4A2BDFFA6A5BFFFA6A4BEFFA7A5BFFFA7A5BFFFA7A5
          BFFFA7A5BFFFA7A5BFFFA7A5C0FFA7A5C0FFA7A5C0FFA7A5C0FFA7A5C0FFA7A5
          C0FFA7A5C0FFA7A5C0FFA7A5C0FFA7A5BFFFA7A5BFFFA7A5BFFFA7A5BFFFA6A4
          BEFFA6A5BDFFA4A2BDFF75748ABC000000000000000000000000000000000000
          000000002E5400008CFF00008EFF000090FF000091FF000092FF000092FF0000
          93FF000093FF000093FF000094FF000094FF000094FF000094FF000094FF0000
          94FF000094FF000094FF000094FF000093FF000093FF000092FF000092FF0000
          91FF000090FF00008EFF00008CFF00002D540000000000000000000000000000
          00000D0B62AB151096FF15109AFF16119DFF16119FFF1611A1FF1611A2FF1611
          A3FF1711A4FF1711A4FF1711A5FF1710A5FF1710A5FF1710A5FF1710A5FF1710
          A5FF1710A5FF1710A5FF1711A4FF1711A4FF1611A3FF1611A2FF1611A1FF1611
          9FFF16119DFF15109AFF151096FF0D0B62AB0000000000000000000000000000
          00000D0A60A6161098FF16119DFF1711A1FF1712A4FF1712A6FF1812A8FF1812
          AAFF1812ABFF1812ABFF1812ACFF1813ACFF1813ACFF1813ACFF1813ACFF1813
          ACFF1813ACFF1813ACFF1812ABFF1812ABFF1812AAFF1812A8FF1712A6FF1712
          A4FF1711A1FF16119DFF161098FF0E0A60A60000000000000000000000000000
          00000E0A60A6151199FF16119FFF1712A3FF1712A6FF1812AAFF1812ACFF1813
          AEFF1813AEFF1813AFFF1913B0FF1913B0FF1913B0FF1913B0FF1913B0FF1913
          B0FF1913B0FF1913B0FF1913B0FF1813AFFF1813AEFF1812ACFF1812AAFF1712
          A7FF1712A3FF16119FFF151198FF0E0A60A60000000000000000000000000000
          00000E0A60A616109AFF1611A0FF1712A4FF1812A8FF1812ABFF1813AEFF1813
          AFFF1913B1FF1913B2FF1913B2FF1913B2FF1913B2FF1913B2FF1913B2FF1913
          B2FF1913B2FF1913B2FF1913B2FF1913B1FF1813AFFF1813AEFF1812ABFF1812
          A8FF1712A4FF1611A0FF16109AFF0E0A60A60000000000000000000000000000
          00000E0A60A616109AFF1611A0FF1712A4FF1812A8FF1812ABFF1813AEFF1813
          AFFF1913B0FF1913B1FF1913B2FF1913B2FF1913B2FF1913B2FF1913B2FF1913
          B2FF1913B2FF1913B2FF1913B2FF1913B1FF1813AFFF1813AEFF1812ABFF1812
          A8FF1712A4FF1611A0FF16109AFF0E0A60A60000000000000000000000000000
          00000E0A60A6151199FF16119FFF1712A3FF1712A6FF1812A9FF1812ABFF1813
          ADFF1813AEFF1813AFFF1813AFFF1813AFFF1913B0FF1913B0FF1913B0FF1913
          B0FF1813AFFF1813AFFF1813AFFF1813AEFF1813ADFF1812ACFF1812A9FF1712
          A6FF1711A3FF16119FFF151199FF0E0A60A60000000000000000000000000000
          00000D0A60A6161098FF16119DFF1711A1FF1712A4FF1712A6FF1712A7FF1812
          A9FF1812AAFF1812AAFF1812ABFF1812ABFF1812ABFF1812ABFF1812ABFF1812
          ABFF1812ABFF1812ABFF1812ABFF1812AAFF1812A9FF1712A7FF1712A6FF1712
          A3FF1711A0FF16119DFF151098FF0E0A60A60000000000000000000000000000
          00000D0B62AB151096FF15109AFF16119DFF16119FFF1611A0FF1611A2FF1611
          A2FF1611A3FF1611A4FF1711A4FF1711A4FF1711A4FF1711A4FF1711A4FF1711
          A4FF1711A4FF1711A4FF1611A4FF1611A3FF1611A3FF1611A2FF1611A1FF1611
          9FFF16119DFF15109AFF151096FF0D0B62AB0000000000000000000000000000
          000000002E5400008DFF00008EFF000090FF000091FF000091FF000092FF0000
          92FF000093FF000093FF000093FF000093FF000093FF000093FF000093FF0000
          93FF000093FF000093FF000093FF000093FF000092FF000092FF000091FF0000
          91FF000090FF00008EFF00008DFF00002D540000000000000000000000000000
          0000000000006C6B87BCA8A6BEFFA6A4BFFFA7A5BFFFA7A5BFFFA7A6C0FFA8A6
          C0FFA8A6C0FFA8A6C0FFA8A6C0FFA8A6C0FFA8A6C0FFA8A6C0FFA8A6C0FFA8A6
          C0FFA8A6C0FFA8A6C0FFA8A6C0FFA8A6C0FFA8A6C0FFA7A6C0FFA7A5BFFFA7A5
          BFFFA6A4BEFFA8A6BEFF6C6B87BC000000000000000000000000000000000000
          0000807F7490E0DFD1FFE2E2D4FFE4E5D6FFE6E7D9FFE9E8DAFFEAE9DCFFEAEA
          DDFFEAEBDDFFEBEBDFFFEBEBDEFFEBEADEFFEDECDEFFEDECDEFFEDECDEFFEDEC
          DEFFEBEADEFFEBEBDEFFEBEBDEFFEAEBDDFFEAEADDFFEAE9DCFFE8E8DAFFE6E7
          D9FFE4E5D7FFE2E2D4FFE0DFD1FF7E7F74900000000000000000000000000000
          0000848384A8CFCECEFFD4D5D4FFD8D8D9FFDCDBDCFFDEDDDEFFE0DFE0FFE2E1
          E2FFE3E2E3FFE4E3E3FFE4E3E4FFE6E5E4FFE5E4E4FFE5E4E4FFE5E4E4FFE5E4
          E4FFE6E5E4FFE4E3E4FFE4E3E4FFE3E2E3FFE2E1E2FFE0DFE0FFDFDEDEFFDCDB
          DCFFD9D7D9FFD4D5D4FFCFCECDFF858484A80000000000000000000000000000
          0000838383A6D2D1D0FFD8D7D7FFDEDDDDFFE2E1E1FFE5E4E4FFE8E7E7FFEBEA
          EAFFECEBEBFFEDECECFFEEEDEDFFEEEDEDFFEEEDEDFFEEEDEDFFEEEDEDFFEEED
          EDFFEEEDEDFFEEEDEDFFEDECECFFECEBEBFFEBEAEAFFE9E8E8FFE6E5E5FFE2E1
          E1FFDEDDDDFFD8D7D7FFD2D1D0FF838383A60000000000000000000000000000
          0000838383A6D3D2D1FFDAD9D9FFE0DFDFFFE5E4E4FFEBEAEAFFEDECECFFEFEE
          EEFFF0EFEFFFF2F1F1FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2
          F2FFF3F2F2FFF3F2F2FFF2F1F1FFF1F0F0FFEFEEEEFFEDECECFFEBEAEAFFE5E4
          E4FFE0DFDFFFDAD9D9FFD3D2D1FF838383A60000000000000000000000000000
          0000838383A6D3D2D2FFDBDADAFFE1E0E0FFE7E5E6FFEBEAEAFFEEEDEDFFF0EF
          EFFFF2F1F1FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3F3FFF4F3
          F3FFF4F3F3FFF4F3F3FFF4F3F3FFF3F2F2FFF0EFEFFFEEEDEDFFEBEAEAFFE6E5
          E5FFE1E0E0FFDBDADAFFD3D2D2FF848383A60000000000000000000000000000
          0000838383A6D3D2D0FFDBDADAFFE1E0E0FFE6E5E5FFEAE9E9FFEDECECFFEFEE
          EEFFF1F0F0FFF2F1F1FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2
          F2FFF3F2F2FFF3F2F2FFF2F1F1FFF1F0F0FFEFEFEEFFEDECECFFEAE9E9FFE6E5
          E5FFE0DFDFFFDBDADAFFD3D2D2FF838383A60000000000000000000000000000
          0000838383A6D2D1D1FFD9D8D8FFDFDEDEFFE3E2E2FFE6E5E5FFE9E8E8FFEBEA
          EAFFECECEBFFEEECEDFFEEEEEDFFEEEEEDFFEEEEEDFFEFEEEEFFEFEEEEFFEFEE
          EEFFEEEEEDFFEEEEEDFFEEEDEDFFEDECECFFEBEBEAFFE9E8E8FFE6E5E5FFE2E2
          E1FFDEDDDDFFD9D8D8FFD2D1D1FF838383A60000000000000000000000000000
          0000848383A7D1D0CFFFD6D6D5FFDBDADAFFDEDDDDFFE0E0DFFFE2E1E1FFE4E3
          E3FFE6E5E5FFE6E5E5FFE7E6E6FFE7E6E6FFE7E6E6FFE7E6E6FFE7E6E6FFE7E6
          E6FFE7E6E6FFE7E6E6FFE7E6E6FFE6E4E5FFE4E3E3FFE2E2E1FFE0E0DFFFDEDD
          DDFFDBD9DAFFD6D5D5FFD0CFCFFF848484A70000000000000000000000000000
          0000807F7FA3CECDCCFFD3D2D1FFD5D4D4FFD7D7D6FFD9D8D8FFDBD9D9FFDCDB
          DBFFDCDBDBFFDCDCDBFFDDDCDCFFDDDCDCFFDDDCDCFFDDDCDCFFDDDCDCFFDDDC
          DCFFDDDCDCFFDDDCDCFFDDDCDCFFDCDBDBFFDCDBDBFFDBD9D9FFD9D8D8FFD7D6
          D6FFD5D4D4FFD2D1D1FFCDCCCCFF807F7FA30000000000000000000000000000
          000012121217A3A2A2CFC3C2C2F5BCBBBAEABEBDBCEBBEBDBDEBBEBEBEEBBEBD
          BDEBBEBDBDEBBEBDBDEBBFBEBDEBBFBEBDEBBFBEBDEBBFBEBDEBBFBEBDEBBFBE
          BDEBBFBEBDEBBFBEBDEBBFBEBDEBBEBDBDEBBEBDBDEBBEBEBEEBBEBDBDEBBDBC
          BCEBBBBABAEAC3C2C2F5A3A2A2CF121212170000000000000000}
        Layout = blGlyphTop
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Flat = True
        SpeedButtonOptions.Transparent = True
      end
    end
  end
  object UCControls1: TUCControls
    GroupName = '&Cad. Produto'
    UserControl = FPrinc.UserControl1
    NotAllowed = naDisabled
    Left = 40
    Top = 227
  end
  object eFile2: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg *.jpeg)|*.jpg;*.jpeg'
    FilterIndex = 6
    Left = 722
    Top = 194
  end
end
