object Fcad_Empresa: TFcad_Empresa
  Left = 102
  Top = 149
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cadastro da Empresa'
  ClientHeight = 536
  ClientWidth = 980
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
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnCad: TcxGroupBox
    Left = 0
    Top = 54
    Align = alClient
    TabOrder = 1
    Height = 482
    Width = 980
    object eCodigo: TcxTextEdit
      Left = 346
      Top = 20
      TabStop = False
      Properties.CharCase = ecUpperCase
      Style.Color = clBtnFace
      TabOrder = 0
      Width = 121
    end
    object eRazao: TcxTextEdit
      Left = 346
      Top = 42
      Properties.CharCase = ecUpperCase
      Style.Color = clWhite
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2010Silver'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2010Silver'
      StyleFocused.Color = 15921919
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2010Silver'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2010Silver'
      TabOrder = 1
      Width = 400
    end
    object eFantasia: TcxTextEdit
      Left = 346
      Top = 64
      Properties.CharCase = ecUpperCase
      Style.Color = clWhite
      StyleFocused.Color = 15921919
      TabOrder = 2
      Width = 400
    end
    object eCnpj: TcxMaskEdit
      Left = 346
      Top = 86
      Properties.EditMask = '99.999.999/9999-99;0;_'
      Properties.MaxLength = 0
      StyleFocused.Color = 15921919
      TabOrder = 3
      Text = '              '
      Width = 150
    end
    object eIe: TcxMaskEdit
      Left = 596
      Top = 86
      Properties.EditMask = '99.999.999/9999-99;0;_'
      Properties.MaxLength = 0
      StyleFocused.Color = 15921919
      TabOrder = 4
      Text = '              '
      Width = 150
    end
    object eEndereco: TcxTextEdit
      Left = 346
      Top = 108
      Properties.CharCase = ecUpperCase
      Style.Color = clWhite
      StyleFocused.Color = 15921919
      TabOrder = 5
      Width = 300
    end
    object eNum: TcxTextEdit
      Left = 695
      Top = 108
      Properties.CharCase = ecUpperCase
      Style.Color = clWhite
      StyleFocused.Color = 15921919
      TabOrder = 6
      Width = 50
    end
    object eBairro: TcxTextEdit
      Left = 346
      Top = 130
      Properties.CharCase = ecUpperCase
      Style.Color = clWhite
      StyleFocused.Color = 15921919
      TabOrder = 7
      Width = 230
    end
    object eCidade: TcxButtonEdit
      Left = 495
      Top = 152
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
      StyleFocused.Color = 15921919
      TabOrder = 8
      Width = 250
    end
    object cxLabel10: TcxLabel
      Left = 285
      Top = 22
      AutoSize = False
      Caption = 'C'#243'digo:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 60
      AnchorX = 345
    end
    object cxLabel1: TcxLabel
      Left = 285
      Top = 45
      AutoSize = False
      Caption = 'Raz'#227'o:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 60
      AnchorX = 345
    end
    object cxLabel2: TcxLabel
      Left = 285
      Top = 67
      AutoSize = False
      Caption = 'Fantasia:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 60
      AnchorX = 345
    end
    object cxLabel3: TcxLabel
      Left = 285
      Top = 88
      AutoSize = False
      Caption = 'Cnpj:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 60
      AnchorX = 345
    end
    object cxLabel4: TcxLabel
      Left = 285
      Top = 110
      AutoSize = False
      Caption = 'Endere'#231'o:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 60
      AnchorX = 345
    end
    object cxLabel6: TcxLabel
      Left = 285
      Top = 133
      AutoSize = False
      Caption = 'Bairro:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 60
      AnchorX = 345
    end
    object cxLabel8: TcxLabel
      Left = 431
      Top = 154
      AutoSize = False
      Caption = 'Cidade:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 60
      AnchorX = 491
    end
    object cxLabel9: TcxLabel
      Left = 671
      Top = 111
      AutoSize = False
      Caption = 'N'#186':'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 23
      AnchorX = 694
    end
    object cxLabel5: TcxLabel
      Left = 535
      Top = 88
      AutoSize = False
      Caption = 'Ie:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 60
      AnchorX = 595
    end
    object cxLabel7: TcxLabel
      Left = 290
      Top = 154
      AutoSize = False
      Caption = 'Uf:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 55
      AnchorX = 345
    end
    object eUf: TcxTextEdit
      Left = 346
      Top = 152
      Properties.CharCase = ecUpperCase
      Style.Color = clWhite
      StyleFocused.Color = 15921919
      TabOrder = 19
      Width = 40
    end
    object cxLabel11: TcxLabel
      Left = 583
      Top = 132
      AutoSize = False
      Caption = 'Cep:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
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
      AnchorX = 621
    end
    object eCep: TcxMaskEdit
      Left = 625
      Top = 130
      Properties.EditMask = '99.999-999;0;_'
      Properties.MaxLength = 0
      StyleFocused.Color = 15921919
      TabOrder = 21
      Text = '        '
      Width = 120
    end
    object eContato: TcxTextEdit
      Left = 346
      Top = 174
      Properties.CharCase = ecUpperCase
      Style.Color = clWhite
      StyleFocused.Color = 15921919
      TabOrder = 22
      Width = 400
    end
    object cxLabel12: TcxLabel
      Left = 266
      Top = 177
      AutoSize = False
      Caption = 'Respons'#225'vel:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 79
      AnchorX = 345
    end
    object cxLabel13: TcxLabel
      Left = 307
      Top = 198
      AutoSize = False
      Caption = 'Fone:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
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
      AnchorX = 345
    end
    object eFone: TcxMaskEdit
      Left = 345
      Top = 196
      Properties.EditMask = '(99)9999-9999;0;_'
      Properties.MaxLength = 0
      StyleFocused.Color = 15921919
      TabOrder = 25
      Text = '          '
      Width = 135
    end
    object eFax: TcxMaskEdit
      Left = 531
      Top = 196
      Properties.EditMask = '(99)9999-9999;0;_'
      Properties.MaxLength = 0
      StyleFocused.Color = 15921919
      TabOrder = 26
      Text = '          '
      Width = 135
    end
    object cxLabel14: TcxLabel
      Left = 490
      Top = 198
      AutoSize = False
      Caption = 'Fax:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Height = 17
      Width = 38
      AnchorX = 528
    end
    object cxLabel15: TcxLabel
      Left = 266
      Top = 220
      AutoSize = False
      Caption = 'Email:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 79
      AnchorX = 345
    end
    object eMail: TcxTextEdit
      Left = 346
      Top = 218
      Properties.CharCase = ecLowerCase
      Style.Color = clWhite
      StyleFocused.Color = 15921919
      TabOrder = 29
      Width = 400
    end
    object cxLabel16: TcxLabel
      Left = 266
      Top = 242
      AutoSize = False
      Caption = 'Site:'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Properties.Alignment.Horz = taRightJustify
      Properties.LabelEffect = cxleCool
      Transparent = True
      Height = 17
      Width = 79
      AnchorX = 345
    end
    object eSite: TcxTextEdit
      Left = 346
      Top = 240
      Properties.CharCase = ecLowerCase
      Style.Color = clWhite
      StyleFocused.Color = 15921919
      TabOrder = 31
      Width = 400
    end
    object cxPage: TcxPageControl
      Left = 229
      Top = 262
      Width = 654
      Height = 135
      ActivePage = cxEmail
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      Style = 11
      TabOrder = 32
      TabWidth = 100
      ClientRectBottom = 135
      ClientRectRight = 654
      ClientRectTop = 20
      object cxEspecificos: TcxTabSheet
        Caption = 'Dados Espec'#237'ficos'
        ImageIndex = 0
        object cxLabel18: TcxLabel
          Left = 32
          Top = 10
          AutoSize = False
          Caption = 'Logo:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 79
          AnchorX = 111
        end
        object cxLabel19: TcxLabel
          Left = 0
          Top = 32
          AutoSize = False
          Caption = 'Dt. '#218'ltimo Backup:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 111
          AnchorX = 111
        end
        object eDataBkp: TcxTextEdit
          Left = 112
          Top = 30
          TabStop = False
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.Color = 15855081
          StyleFocused.Color = 15921919
          TabOrder = 2
          Width = 120
        end
        object cxLabel20: TcxLabel
          Left = 233
          Top = 32
          AutoSize = False
          Caption = 'Val. Lic:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 59
          AnchorX = 292
        end
        object eDataLic: TcxTextEdit
          Left = 295
          Top = 30
          TabStop = False
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.Color = 15855081
          StyleFocused.Color = 15921919
          TabOrder = 4
          Width = 120
        end
        object eQtdeLic: TcxTextEdit
          Left = 461
          Top = 30
          TabStop = False
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.Color = 15855081
          StyleFocused.Color = 15921919
          TabOrder = 5
          Width = 50
        end
        object cxLabel21: TcxLabel
          Left = 416
          Top = 32
          AutoSize = False
          Caption = 'N'#186' Lic:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 44
          AnchorX = 460
        end
        object cbLogo: TcxShellComboBox
          Left = 112
          Top = 8
          Properties.ButtonGlyph.Data = {
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
          Properties.DropDownSizeable = False
          Properties.FastSearch = True
          Properties.IncrementalSearch = True
          Properties.ShowFullPath = sfpAlways
          Properties.ViewOptions = [scvoShowFiles, scvoShowHidden]
          TabOrder = 7
          Width = 400
        end
        object eBackup: TcxShellComboBox
          Left = 112
          Top = 52
          Properties.ButtonGlyph.Data = {
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
          Properties.DropDownSizeable = False
          Properties.FastSearch = True
          Properties.IncrementalSearch = True
          Properties.ShowFullPath = sfpAlways
          Properties.ViewOptions = [scvoShowFiles, scvoShowHidden]
          TabOrder = 8
          Width = 400
        end
        object cxLabel22: TcxLabel
          Left = 0
          Top = 54
          AutoSize = False
          Caption = 'Prog. Backup:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 111
          AnchorX = 111
        end
        object cxLabel23: TcxLabel
          Left = 0
          Top = 76
          AutoSize = False
          Caption = 'Pasta Servidor:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 111
          AnchorX = 111
        end
        object ePastaServidor: TcxShellComboBox
          Left = 112
          Top = 74
          Properties.ButtonGlyph.Data = {
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
          Properties.DropDownSizeable = False
          Properties.FastSearch = True
          Properties.IncrementalSearch = True
          Properties.ShowFullPath = sfpAlways
          TabOrder = 11
          Width = 400
        end
      end
      object cxEmail: TcxTabSheet
        Caption = 'Conf. de E-mail'
        ImageIndex = 0
        object cxLabel17: TcxLabel
          Left = 31
          Top = 10
          AutoSize = False
          Caption = 'Host:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 79
          AnchorX = 110
        end
        object eHost: TcxTextEdit
          Left = 111
          Top = 8
          Hint = 'Host de configura'#231#227'o ex (smtp.meudominio.com.br).'
          ParentFont = False
          Properties.CharCase = ecLowerCase
          Style.Color = clWhite
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          StyleFocused.Color = 15921919
          TabOrder = 0
          Width = 400
        end
        object eUsuario: TcxTextEdit
          Left = 111
          Top = 30
          Hint = 'Nome de usu'#225'rio do e-mail (geralmente '#233' o pr'#243'prio e-mail).'
          Properties.CharCase = ecLowerCase
          Style.Color = clWhite
          StyleFocused.Color = 15921919
          TabOrder = 1
          Width = 400
        end
        object cxLabel24: TcxLabel
          Left = 31
          Top = 32
          AutoSize = False
          Caption = 'Usu'#225'rio:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 79
          AnchorX = 110
        end
        object cxLabel25: TcxLabel
          Left = 31
          Top = 54
          AutoSize = False
          Caption = 'Senha:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 79
          AnchorX = 110
        end
        object eSenha: TcxTextEdit
          Left = 111
          Top = 52
          Hint = 'Digite a senha para o e-mail'
          ParentFont = False
          Properties.CharCase = ecLowerCase
          Properties.EchoMode = eemPassword
          Style.Color = clWhite
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          StyleFocused.Color = 15921919
          TabOrder = 5
          Width = 130
        end
        object cbSSL: TcxComboBox
          Left = 306
          Top = 52
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'SIM'
            'N'#195'O')
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 6
          Text = 'SIM'
          Width = 65
        end
        object cxLabel26: TcxLabel
          Left = 239
          Top = 54
          AutoSize = False
          Caption = 'SSL Ativo:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 66
          AnchorX = 305
        end
        object cxLabel27: TcxLabel
          Left = 371
          Top = 54
          AutoSize = False
          Caption = 'Porta Sa'#237'da:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clMaroon
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Properties.Alignment.Horz = taRightJustify
          Properties.LabelEffect = cxleCool
          Transparent = True
          Height = 17
          Width = 79
          AnchorX = 450
        end
        object ePorta: TcxTextEdit
          Left = 451
          Top = 52
          Hint = 'Host de configura'#231#227'o ex (smtp.meudominio.com.br).'
          Properties.CharCase = ecLowerCase
          Style.Color = clWhite
          StyleFocused.Color = 15921919
          TabOrder = 9
          Width = 60
        end
        object cxValidar: TcxButton
          Left = 519
          Top = 17
          Width = 75
          Height = 55
          Hint = '&Desistir da modifica'#231#227'o do registro'
          Cancel = True
          Caption = '&Validar DLL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnClick = cxValidarClick
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
          SpeedButtonOptions.Flat = True
          SpeedButtonOptions.Transparent = True
        end
      end
    end
  end
  object cxMenuCad: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Style.BorderStyle = ebsNone
    TabOrder = 0
    Height = 54
    Width = 980
    object cxSalvar: TcxButton
      Left = 415
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
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
    end
    object cxFechar: TcxButton
      Left = 489
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
      OnClick = cxFecharClick
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
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
    end
  end
end
