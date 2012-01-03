object frmMusteri: TfrmMusteri
  Left = 178
  Top = 160
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Müþteri Bilgileri'
  ClientHeight = 477
  ClientWidth = 585
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 24
    Width = 369
    Height = 217
    TabOrder = 0
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 40
    Width = 353
    Height = 193
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Müþteri'
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 345
        Height = 161
        TabOrder = 0
        object Label1: TLabel
          Left = 32
          Top = 40
          Width = 15
          Height = 13
          Caption = 'Adý'
        end
        object Label2: TLabel
          Left = 16
          Top = 64
          Width = 32
          Height = 13
          Caption = 'Soyadý'
        end
        object Label4: TLabel
          Left = 16
          Top = 112
          Width = 31
          Height = 13
          Caption = 'Sokak'
        end
        object Label5: TLabel
          Left = 8
          Top = 136
          Width = 38
          Height = 13
          Caption = 'Kapý No'
        end
        object Label6: TLabel
          Left = 184
          Top = 16
          Width = 27
          Height = 13
          Caption = 'Bölge'
        end
        object Label7: TLabel
          Left = 184
          Top = 40
          Width = 37
          Height = 13
          Caption = 'Mahalle'
        end
        object Label8: TLabel
          Left = 184
          Top = 64
          Width = 34
          Height = 13
          Caption = 'Ev Tel.'
        end
        object Label9: TLabel
          Left = 184
          Top = 112
          Width = 35
          Height = 13
          Caption = 'Ýþ Tel.1'
        end
        object Label10: TLabel
          Left = 184
          Top = 136
          Width = 35
          Height = 13
          Caption = 'Ýþ Tel.2'
        end
        object Label28: TLabel
          Left = 16
          Top = 88
          Width = 31
          Height = 13
          Caption = 'Cadde'
        end
        object Label3: TLabel
          Left = 20
          Top = 16
          Width = 29
          Height = 13
          Caption = 'M. No'
        end
        object Label11: TLabel
          Left = 184
          Top = 88
          Width = 40
          Height = 13
          Caption = 'Cep Tel.'
        end
        object MADI_Edit: TDBEdit
          Left = 56
          Top = 40
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'M_ADI'
          DataSource = dsrcMUSTERI
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = MADI_EditChange
          OnKeyPress = MADI_EditKeyPress
        end
        object MSOYADI_Edit: TDBEdit
          Left = 56
          Top = 64
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'M_SOYADI'
          DataSource = dsrcMUSTERI
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnChange = MSOYADI_EditChange
          OnKeyPress = MSOYADI_EditKeyPress
        end
        object MCADDE_Edit: TDBEdit
          Left = 56
          Top = 88
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'M_CADDE'
          DataSource = dsrcMUSTERI
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnChange = MCADDE_EditChange
          OnKeyPress = MCADDE_EditKeyPress
        end
        object MSOKAK_Edit: TDBEdit
          Left = 56
          Top = 112
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'M_SOKAK'
          DataSource = dsrcMUSTERI
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnChange = MSOKAK_EditChange
          OnKeyPress = MSOKAK_EditKeyPress
        end
        object MKAPINO_Edit: TDBEdit
          Left = 56
          Top = 136
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'M_KAPINO'
          DataSource = dsrcMUSTERI
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnChange = MKAPINO_EditChange
          OnKeyPress = MKAPINO_EditKeyPress
        end
        object MEVTEL_Edit: TDBEdit
          Left = 232
          Top = 64
          Width = 105
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'M_EVTEL'
          DataSource = dsrcMUSTERI
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 17
          ParentFont = False
          TabOrder = 8
          OnChange = MEVTEL_EditChange
          OnKeyPress = MEVTEL_EditKeyPress
        end
        object MISTEL1_Edit: TDBEdit
          Left = 232
          Top = 112
          Width = 105
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'M_ISTEL1'
          DataSource = dsrcMUSTERI
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 17
          ParentFont = False
          TabOrder = 10
          OnChange = MISTEL1_EditChange
          OnKeyPress = MISTEL1_EditKeyPress
        end
        object MISTEL2_Edit: TDBEdit
          Left = 232
          Top = 136
          Width = 105
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'M_ISTEL2'
          DataSource = dsrcMUSTERI
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 17
          ParentFont = False
          TabOrder = 11
          OnChange = MISTEL2_EditChange
          OnKeyPress = MISTEL2_EditKeyPress
        end
        object MNO_Edit: TDBEdit
          Left = 56
          Top = 16
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'M_NO'
          DataSource = dsrcMUSTERI
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnChange = MNO_EditChange
          OnKeyPress = MNO_EditKeyPress
        end
        object MCEPTEL_Edit: TDBEdit
          Left = 232
          Top = 88
          Width = 105
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'M_CEPTEL'
          DataSource = dsrcMUSTERI
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 17
          ParentFont = False
          TabOrder = 9
          OnChange = MCEPTEL_EditChange
          OnKeyPress = MCEPTEL_EditKeyPress
        end
        object MBOLGE_Combo: TDBLookupComboBox
          Left = 232
          Top = 16
          Width = 105
          Height = 21
          Color = clWhite
          DataField = 'M_BOLGE'
          DataSource = dsrcMUSTERI
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'BOLGE'
          ListField = 'BOLGE'
          ListSource = dsrcBOLGE
          ParentFont = False
          TabOrder = 6
          OnClick = MBOLGE_ComboClick
          OnKeyPress = MBOLGE_ComboKeyPress
        end
        object MMAHALLE_Combo: TDBLookupComboBox
          Left = 232
          Top = 40
          Width = 105
          Height = 21
          Color = clWhite
          DataField = 'M_MAHALLE'
          DataSource = dsrcMUSTERI
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'MAHALLE'
          ListField = 'MAHALLE'
          ListSource = dsrcMAHALLE
          ParentFont = False
          TabOrder = 7
          OnClick = MMAHALLE_ComboClick
          OnKeyPress = MMAHALLE_ComboKeyPress
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Kefil'
      ImageIndex = 1
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 345
        Height = 161
        TabOrder = 0
        object Label12: TLabel
          Left = 32
          Top = 40
          Width = 15
          Height = 13
          Caption = 'Adý'
        end
        object Label13: TLabel
          Left = 16
          Top = 64
          Width = 32
          Height = 13
          Caption = 'Soyadý'
        end
        object Label14: TLabel
          Left = 16
          Top = 112
          Width = 31
          Height = 13
          Caption = 'Sokak'
        end
        object Label15: TLabel
          Left = 8
          Top = 136
          Width = 38
          Height = 13
          Caption = 'Kapý No'
        end
        object Label19: TLabel
          Left = 184
          Top = 64
          Width = 34
          Height = 13
          Caption = 'Ev Tel.'
        end
        object Label20: TLabel
          Left = 184
          Top = 112
          Width = 35
          Height = 13
          Caption = 'Ýþ Tel.1'
        end
        object Label21: TLabel
          Left = 184
          Top = 136
          Width = 35
          Height = 13
          Caption = 'Ýþ Tel.2'
        end
        object Label16: TLabel
          Left = 16
          Top = 88
          Width = 31
          Height = 13
          Caption = 'Cadde'
        end
        object Label30: TLabel
          Left = 184
          Top = 16
          Width = 27
          Height = 13
          Caption = 'Bölge'
        end
        object Label31: TLabel
          Left = 184
          Top = 40
          Width = 37
          Height = 13
          Caption = 'Mahalle'
        end
        object Label22: TLabel
          Left = 184
          Top = 88
          Width = 40
          Height = 13
          Caption = 'Cep Tel.'
        end
        object KADI_Edit: TDBEdit
          Left = 56
          Top = 40
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'K_ADI'
          DataSource = dsrcMUSTERI
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = KADI_EditChange
          OnKeyPress = KADI_EditKeyPress
        end
        object KSOYADI_Edit: TDBEdit
          Left = 56
          Top = 64
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'K_SOYADI'
          DataSource = dsrcMUSTERI
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = KSOYADI_EditChange
          OnKeyPress = KSOYADI_EditKeyPress
        end
        object KCADDE_Edit: TDBEdit
          Left = 56
          Top = 88
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'K_CADDE'
          DataSource = dsrcMUSTERI
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnChange = KCADDE_EditChange
          OnKeyPress = KCADDE_EditKeyPress
        end
        object KSOKAK_Edit: TDBEdit
          Left = 56
          Top = 112
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'K_SOKAK'
          DataSource = dsrcMUSTERI
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnChange = KSOKAK_EditChange
          OnKeyPress = KSOKAK_EditKeyPress
        end
        object KKAPINO_Edit: TDBEdit
          Left = 56
          Top = 136
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'K_KAPINO'
          DataSource = dsrcMUSTERI
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnChange = KKAPINO_EditChange
          OnKeyPress = KKAPINO_EditKeyPress
        end
        object KEVTEL_Edit: TDBEdit
          Left = 232
          Top = 64
          Width = 105
          Height = 21
          CharCase = ecUpperCase
          DataField = 'K_EVTEL'
          DataSource = dsrcMUSTERI
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 17
          ParentFont = False
          TabOrder = 7
          OnChange = KEVTEL_EditChange
          OnKeyPress = KEVTEL_EditKeyPress
        end
        object KISTEL1_Edit: TDBEdit
          Left = 232
          Top = 112
          Width = 105
          Height = 21
          CharCase = ecUpperCase
          DataField = 'K_ISTEL1'
          DataSource = dsrcMUSTERI
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 17
          ParentFont = False
          TabOrder = 9
          OnChange = KISTEL1_EditChange
          OnKeyPress = KISTEL1_EditKeyPress
        end
        object KISTEL2_Edit: TDBEdit
          Left = 232
          Top = 136
          Width = 105
          Height = 21
          CharCase = ecUpperCase
          DataField = 'K_ISTEL2'
          DataSource = dsrcMUSTERI
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 17
          ParentFont = False
          TabOrder = 10
          OnChange = KISTEL2_EditChange
          OnKeyPress = KISTEL2_EditKeyPress
        end
        object KCEPTEL_Edit: TDBEdit
          Left = 232
          Top = 88
          Width = 105
          Height = 21
          CharCase = ecUpperCase
          DataField = 'K_CEPTEL'
          DataSource = dsrcMUSTERI
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 17
          ParentFont = False
          TabOrder = 8
          OnChange = KCEPTEL_EditChange
          OnKeyPress = KCEPTEL_EditKeyPress
        end
        object KBOLGE_Combo: TDBLookupComboBox
          Left = 232
          Top = 16
          Width = 105
          Height = 21
          DataField = 'K_BOLGE'
          DataSource = dsrcMUSTERI
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'BOLGE'
          ListField = 'BOLGE'
          ListSource = dsrcBOLGE
          ParentFont = False
          TabOrder = 5
          OnClick = KBOLGE_ComboClick
          OnKeyPress = KBOLGE_ComboKeyPress
        end
        object KMAHALLE_Combo: TDBLookupComboBox
          Left = 232
          Top = 40
          Width = 105
          Height = 21
          DataField = 'K_MAHALLE'
          DataSource = dsrcMUSTERI
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'MAHALLE'
          ListField = 'MAHALLE'
          ListSource = dsrcMAHALLE2
          ParentFont = False
          TabOrder = 6
          OnClick = KMAHALLE_ComboClick
          OnKeyPress = KMAHALLE_ComboKeyPress
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Kara Liste Açýklamasý'
      ImageIndex = 2
      object KLACIKLAMASI_Memo: TDBMemo
        Left = 0
        Top = 0
        Width = 345
        Height = 161
        DataField = 'KARALISTE_ACIKLAMASI'
        DataSource = dsrcMUSTERI
        Enabled = False
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object ToolBar2: TToolBar
    Left = 0
    Top = 0
    Width = 585
    Height = 24
    Caption = 'ToolBar1'
    Flat = True
    HotImages = ImageList1
    Images = ImageList1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    object tbtnYENI: TToolButton
      Left = 0
      Top = 0
      Hint = 'Yeni Kayýt'
      Caption = 'tbtnYENI'
      ImageIndex = 0
      OnClick = tbtnYENIClick
    end
    object tbtnKAYDET: TToolButton
      Left = 23
      Top = 0
      Hint = 'Kaydet'
      Caption = 'tbtnKAYDET'
      Enabled = False
      ImageIndex = 1
      OnClick = tbtnKAYDETClick
    end
    object tbtnSIL: TToolButton
      Left = 46
      Top = 0
      Hint = 'Sil'
      Caption = 'tbtnSIL'
      ImageIndex = 2
      OnClick = tbtnSILClick
    end
    object ToolButton7: TToolButton
      Left = 69
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object tbtnAC: TToolButton
      Left = 77
      Top = 0
      Hint = 'Aç'
      Caption = 'tbtnAC'
      ImageIndex = 3
      OnClick = tbtnACClick
    end
    object ToolButton8: TToolButton
      Left = 100
      Top = 0
      Width = 12
      Caption = 'ToolButton8'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object tbtnYAZDIR: TToolButton
      Left = 112
      Top = 0
      Hint = 'Yazdýr'
      Caption = 'tbtnYAZDIR'
      ImageIndex = 6
      OnClick = tbtnYAZDIRClick
    end
    object ToolButton13: TToolButton
      Left = 135
      Top = 0
      Width = 9
      Caption = 'ToolButton13'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object tbtnKLEKLE: TToolButton
      Left = 144
      Top = 0
      Hint = 'Kara Listeye Ekle'
      Caption = 'tbtnKLEKLE'
      ImageIndex = 7
      OnClick = tbtnKLEKLEClick
    end
    object tbtnKLCIKAR: TToolButton
      Left = 167
      Top = 0
      Hint = 'Kara Listeden Çýkar'
      Caption = 'tbtnKLCIKAR'
      Enabled = False
      ImageIndex = 8
      OnClick = tbtnKLCIKARClick
    end
    object ToolButton11: TToolButton
      Left = 190
      Top = 0
      Width = 8
      Caption = 'ToolButton11'
      ImageIndex = 10
      Style = tbsSeparator
    end
    object tbtnPASIF: TToolButton
      Left = 198
      Top = 0
      Hint = 'Pasif Kayýtlara Ekle'
      Caption = 'tbtnPASIF'
      ImageIndex = 9
      OnClick = tbtnPASIFClick
    end
    object tbtnAKTIF: TToolButton
      Left = 221
      Top = 0
      Hint = 'Aktif kayda geri al'
      Caption = 'tbtnAKTIF'
      Enabled = False
      ImageIndex = 10
      OnClick = tbtnAKTIFClick
    end
    object ToolButton1: TToolButton
      Left = 244
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 11
      Style = tbsSeparator
    end
  end
  object GroupBox2: TGroupBox
    Left = 368
    Top = 24
    Width = 217
    Height = 217
    TabOrder = 3
    object StaticText1: TStaticText
      Left = 8
      Top = 16
      Width = 201
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Toplam Mal Bedeli'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object StaticText2: TStaticText
      Left = 8
      Top = 56
      Width = 201
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Taksit Tutarý'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object StaticText3: TStaticText
      Left = 8
      Top = 96
      Width = 201
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Taksit Bitiþ Tarihi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object StaticText4: TStaticText
      Left = 8
      Top = 136
      Width = 201
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Toplam Ödenen Tutar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object StaticText5: TStaticText
      Left = 8
      Top = 176
      Width = 201
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Kalan Borç Toplamý'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object TOPMALBED_Edit: TDBEdit
      Left = 8
      Top = 32
      Width = 201
      Height = 21
      Color = clWhite
      DataField = 'MAL_BEDELI'
      DataSource = dsrcMUSTERI
      Enabled = False
      TabOrder = 5
    end
    object TAKTUT_Edit: TDBEdit
      Left = 8
      Top = 72
      Width = 201
      Height = 21
      Color = clWhite
      DataField = 'AYLIK_TAKSIT'
      DataSource = dsrcMUSTERI
      Enabled = False
      TabOrder = 6
    end
    object TAKBITTAR_Edit: TDBEdit
      Left = 8
      Top = 112
      Width = 201
      Height = 21
      Color = clWhite
      DataField = 'SON_TAKSIT_TARIHI'
      DataSource = dsrcMUSTERI
      Enabled = False
      TabOrder = 7
    end
    object ODENENTUTAR_Edit: TDBEdit
      Left = 8
      Top = 152
      Width = 201
      Height = 21
      Color = clWhite
      DataField = 'ODENEN_TUTAR'
      DataSource = dsrcMUSTERI
      Enabled = False
      TabOrder = 8
    end
    object KALANBORC_Edit: TDBEdit
      Left = 8
      Top = 192
      Width = 201
      Height = 21
      Color = clWhite
      DataField = 'KALAN_BORC'
      DataSource = dsrcMUSTERI
      Enabled = False
      TabOrder = 9
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 458
    Width = 585
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Width = 150
      end
      item
        Alignment = taCenter
        Width = 150
      end
      item
        Alignment = taCenter
        Bevel = pbNone
        Text = 'Aktif Kayýt Sayýsý'
        Width = 92
      end
      item
        Alignment = taRightJustify
        Text = '0'
        Width = 52
      end
      item
        Bevel = pbNone
        Text = 'Pasif Kayýt Sayýsý'
        Width = 92
      end
      item
        Alignment = taRightJustify
        Text = '0'
        Width = 50
      end>
    SimplePanel = False
  end
  object GroupBox5: TGroupBox
    Left = 0
    Top = 240
    Width = 585
    Height = 217
    TabOrder = 5
    object PageControl2: TPageControl
      Left = 8
      Top = 16
      Width = 569
      Height = 193
      ActivePage = TabSheet4
      TabOrder = 0
      object TabSheet4: TTabSheet
        Caption = 'Taksit Durumu'
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 561
          Height = 161
          Color = clWhite
          DataSource = dsrcTAKSIT
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawDataCell = DBGrid1DrawDataCell
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'VADE_TARIHI'
              Title.Alignment = taCenter
              Title.Caption = 'Vade Tarihi'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TAKSIT_TUTARI'
              Title.Alignment = taCenter
              Title.Caption = 'Taksit Tutarý'
              Width = 138
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ODEME_TUTARI'
              Title.Alignment = taCenter
              Title.Caption = 'Ödenen'
              Width = 138
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'KALAN_BAKIYE'
              Title.Alignment = taCenter
              Title.Caption = 'Kalan'
              Width = 138
              Visible = True
            end>
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Ödeme Fiþi'
        ImageIndex = 1
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 561
          Height = 161
          DataSource = dsrcODEME
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'OTOMATIK_SAYI'
              Title.Alignment = taCenter
              Title.Caption = 'Fiþ Numarasý'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ODEME_TARIHI'
              Title.Alignment = taCenter
              Title.Caption = 'Ödeme Tarihi'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SATICI'
              Title.Alignment = taCenter
              Title.Caption = 'Tahsilatçý'
              Width = 140
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ODEME_TUTARI'
              Title.Alignment = taCenter
              Title.Caption = 'Ödeme Tutarý'
              Width = 140
              Visible = True
            end>
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Satýþ Fiþi'
        ImageIndex = 2
        object DBGrid3: TDBGrid
          Left = 0
          Top = 0
          Width = 561
          Height = 161
          DataSource = dsrcSATISFISI
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'OTOMATIK_SAYI'
              Title.Alignment = taCenter
              Title.Caption = 'Fiþ No'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TARIH'
              Title.Alignment = taCenter
              Title.Caption = 'Tarih'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SATICI'
              Title.Alignment = taCenter
              Title.Caption = 'Satýcý'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'URUN_NO'
              Title.Alignment = taCenter
              Title.Caption = 'Ürün No'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'URUN_ADI'
              Title.Alignment = taCenter
              Title.Caption = 'Ürün Adý'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MAL_ADEDI'
              Title.Alignment = taCenter
              Title.Caption = 'Adeti'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BIRIM_FIYATI'
              Title.Alignment = taCenter
              Title.Caption = 'Fiyatý'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MAL_BEDELI'
              Title.Alignment = taCenter
              Title.Caption = 'Toplam'
              Width = 100
              Visible = True
            end>
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'Devir Fiþi'
        ImageIndex = 3
        object DBGrid4: TDBGrid
          Left = 0
          Top = 0
          Width = 561
          Height = 161
          DataSource = dsrcDEVIR
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'VADE_TARIHI'
              Title.Caption = 'Vade Tarihi'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TAKSIT_TUTARI'
              Title.Caption = 'Taksit Tutarý'
              Width = 138
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ODEME_TUTARI'
              Title.Caption = 'Ödenen'
              Width = 138
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'KALAN_BAKIYE'
              Title.Caption = 'Kalan'
              Width = 138
              Visible = True
            end>
        end
      end
    end
  end
  object ImageList1: TImageList
    Left = 728
    Top = 24
    Bitmap = {
      494C01010B000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001001800000000000030
      0000000000000000000000000000000000008F0D4525ADD01198A80800361B11
      0300003100004C0000A00850CB7F1850CB7F5050CB7F6050CB7F7850CB7F0100
      0000E0A39D0110C09D0100000000000000000000000000000000FEFFFFFF0000
      000000000000000000000000000000000000200000A0433A5C42656C67656C65
      72696D000000000000000000000000000000180000A0433A5C42656C67656C65
      72696D00000000000000640000A0F81A2E79D01A2E79981A2E79801A2E79681A
      2E79581A2E79401A2E79101B2E79010000000000000000000000020000000000
      00000000000000000000000000000000000000000000490000A034C94D00741F
      4700962A702E20006B6974617079757264755B315D2E6A7067004B4954415059
      7E312E4A504700000067150000A0F40E9C0194BB40004749460074A59D016A00
      00A014001F0FE04FD020EA3A6910A2D808002B30309D190023433A5C00000000
      0000000000000000000000000011EE3200B10000000000632A1291100042656C
      67656C6572696D0042454C47454C7E3100BA7E3100BA8F0D4525ADD01198A808
      00361B11030000310000680000A0F81A2E79D01A2E79981A2E79801A2E79681A
      2E79581A2E79401A2E79101B2E7901000000E8D59D01BCD79D0130F7680194D6
      9D0190D69D010000000000000000000000000400000000000000000000000000
      000000000000000000000000000000000000640000A0F81A2E79D01A2E79981A
      2E79801A2E79681A2E79581A2E79401A2E79101B2E790100000038C39D018CC4
      9D0174244000A4C39D01A0C39D0100000000000000006C0000A0F81A2E79D01A
      2E79981A2E79801A2E79681A2E79581A2E79401A2E79101B2E7901000000C0A5
      9D01B0C09D0168D968012CA69D0128A69D010000000000000000000000000200
      0000000000000000000000000000000000000000000000000000000000000000
      0000680000A014001F0FE04FD020EA3A6910A2D808002B30309D190023433A5C
      000000000000000000000000000000000011EE3200B10000000000632A129110
      0042656C67656C6572696D0042454C47454CEA3A6910A2D808002B30309D1900
      23433A5C000000000000000000000000000000000011EE3200B1000000000063
      2A1291100042656C67656C6572696D0042454C47454C7E3100BA8F0D4525ADD0
      1198A80800361B11030000310000680000A0F81A2E79D01A2E79981A2E79801A
      2E79681A2E79581A2E79401A2E79101B2E7901000000E8C79D01BCC99D01188C
      680194C89D0190C89D0100000000000000000000000004000000000000000000
      0000000000000000000000000000000000008F0D4525ADD01198A80800361B11
      030000000011240000A0200000000400400094136481100045676C656E636500
      45474C454E4364A29D01140000A0433A5C42656C67656C6572696D0000006800
      00A014001F0FE04FD020EA3A6910A2D808002B30309D190023433A5C00000000
      0000000000000000000000000011EE3200B10000000000632A1291100042656C
      67656C6572696D0042454C47454C7E3100BA8F0D4525ADD01198A80800361B11
      030000000000680000A014001F0FE04FD0206D0042454C47454C7E3100BA8F0D
      4525ADD01198A80800361B110300000042454C0000A00850CB7F1850CB7F5050
      CB7F6050CB7F7850CB7F01000000F0A09D0100A29D0100000000000000000000
      000000000000FEFFFFFF00000000000000000000000000000000000000006800
      00A014001F0FE04FD020EA3A6910A2D808002B30309D190023433A5C00000000
      0000000000000000000000000011EE3200B10000000000632A1291100042656C
      67656C6572696D0042454C47454C7E3100BA8F0D4525ADD01198A80800361B11
      030000000000640000A0F81A2E79D01A2E79981A2E79801A2E79681A2E79581A
      2E79401A2E79101B2E79010000004CA19D01A0A29D0184F96801B8A19D01B4A1
      9D01000000000000000000000000020000000000000000000000000000000000
      00000000000000000000680000A014001F0FE04FD020EA3A6910A2D808002B30
      309D190023433A5C000000000000000000000000000000000011EE3200B10000
      000000632A1291100042656C67656C6572690000000000632A1291100042656C
      67656C6572696D0042454C47454C7E3100BA8F0D4525ADD01198A80800361B11
      030000000011390000A0703F4B00E4989D01A526C09A2080416363737461742E
      65786500000000004D4F150000A0A47574011C8F6B01002E544544A09D016A00
      00A014001F0FE04FD020EA3A6910A2D808002B30309D190023433A5C00000000
      0000000000000000000000000011EE3200B10000000000632A1291100042656C
      67656C6572696D0042454C47454C7E3100BA000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000008080008080008080008080008080008080008080008080
      0080800080800080800080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFF00FFFF000000008080008080008080008080008080
      0080000000000000000000000011EE3200B1000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000008080008080000000000000000000000000000000000000
      0000000000000080800080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFFFFF00FFFFFFFFFF00FFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000008080000000000000000000000000000000000000000000
      0000000000000000000080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF
      000000000000000000000000000000000000000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000008080000000000000000000000000000000000000000000
      0000000000000000000080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF
      000000000000000000000000000000000000000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000008080000000000000000000000000000000000000000000
      0000000000000000000080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFF00FFFF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000
      0000000000000000008080000000000000000000000000000000000000000000
      0000000000000000000080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00000000000000000000000000
      0000000000000000008080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000077777777777777777700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000555555555555
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000055555555555500000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      006699CC33669977777777777777777777777700000000000000000000000000
      000000000000000000000000000000000000CCFF00CCFF0066FF0066FF555555
      5555555555550000000000000000000000000000000000000000000000000000
      0000000000CCFF00CCFF0066FF0066FF00000055555555555500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000006699CC0033
      6600006633669933669977777777777777777777777700000000000000000000
      000000000000000000000000000000000000CCFF00CCFF0066FF0066FF555555
      555555555555555555555555000000000000000000000000000000CC99996633
      3300000000CCFF00CCFF0066FF0066FF9966CC00000055555555555555555500
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000006699CC0033666699CC6699
      CC00336633669933669933669977777777777777777777777700000000000000
      000000000000000000000000000000000000CCFF00CCFF0066FF0066FF555555
      555555555555555555000000000000000000000000000000CC9999CC99996633
      3300000000CCFF00CCFF0066FF0066FF9966CC33009955555555555500000000
      0000505240003000C000011830009643C000000000003E203000000096430100
      000430003E200000000000000000000000006699CC99CCFF0000006699CC99CC
      FF00336633669933669933669933669977777777777777777777777700000000
      000000000000000000000000000000000000CCFF00CCFF0066FF0066FF555555
      555555000000000000000000000000000000000000000000CC9999CC99996633
      3300000000CCFF00CCFF0066FF0066FF9966CC33009900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006699CC99CCFF99CCFF0033666699
      CC00336633669933669933669933669933669977777777777777777777777700
      000000000000000000000000000000000000CCFF00CCFF00CCFF0033CC000000
      000000000000000000000000000000000000000000000000CC9999CC99996633
      3300000000CCFF00CCFF00CCFF0033CC9966CC33009900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006699CC0033666699CC6699CC6699
      CC00336633669933669933669933669933669977777777777777777700000000
      000000000000000000000000000000000000CCFF00CCFF00CCFF0066FF000000
      000000000000000000000000000000000000000000000000CC9999CC99996633
      3300CCFF00CCFF00CCFF00CCFF0066FF00000033009900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000008080008080000000006699CC99CCFF0000006699CC99CC
      FF00336633669933669933669933669933669977777700000000000000000000
      000000000000000000000000000000CCFF00CCFF00CCFF00CCFF0066FF000000
      000000000000000000000000000000000000000000CC9999CC9999CC9999CC99
      9900CCFF00CCFF00CCFF00CCFF0066FF00000033009900000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000008080008080000000006699CC99CCFF3366CC3366996699
      CCCCCCFFCCCCFF33339933669933669933669900000000000000000000000000
      000000000000000000000000000000CCFF00CCFF00CCFF00CCFF0066FF000000
      000000000000000000000000000000000000000000CC9999CC9999CC9999CC99
      9900CCFF00CCFF00CCFF00CCFF0066FF00000033009900000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000008080008080000000006699CC6699CC6699CCFFFFFF99CC
      FF99CCFF99CCFF99CCFF33669933669933669900000000000000000000000000
      000000000000000000000000000000CCFF00CCFF00CCFFFFFFFF0066FF000000
      000000000000000000000000000000000000000000CC9999CC9999CC9999CC99
      9900CCFF00CCFF00CCFFFFFFFF0066FF00000033009900000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000008080008080000000006699CCFFFFFF99CCFF99CCFF99CC
      FF99CCFF99CCFF99CCFF99CCFF33669933669900000000000000000000000000
      000000000000000000000000000000CCFFFFFFFF0066FF0066FF0066FF000000
      000000000000000000000000000000000000000000CC9999CC9999CC9999CC99
      9900CCFFFFFFFF0066FF0066FF0066FF00000033009900000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      00000000000000000080800080800080800000000099CCFF99CCFF99CCFF99CC
      FF99CCFF99CCFF99CCFF99CCFF99CCFF33669900000000000000000000000000
      0000000000000000000000000000000000000000555555555555000000000000
      000000000000000000000000000000000000000000CC9999CC9999FFFFFFFFCC
      CC000000000000555555555555FFFFFFCC99FFCC99FF00000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      00000000000000000080800080800000000000000000000099CCFF99CCFF99CC
      FF99CCFF99CCFF99CCFF99CCFF99CCFF00000000000000000000000000000000
      0000000000000000000000000000000000A4A0A0DDDDDD999999000000000000
      0000000000000000000000000000000000000000000000005555550000000000
      00000000A4A0A0DDDDDD99999900000000000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      00000000000000000080800000000000000000000000000000000099CCFF99CC
      FF99CCFF99CCFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000DDDDDDFFFFFFA4A0A0000000000000
      000000000000000000000000000000000000000000000000444444A4A0A05555
      55000000DDDDDDFFFFFFA4A0A000000055555500000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      00000000000000000080800000000000000000000000000000000000000099CC
      FF99CCFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000111111444444000000000000
      000000000000000000000000000000000000000000000000DDDDDDFFFFFFA4A0
      A0000000000000111111444444FFFFFFA4A0A000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000008080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000222222C0C0C04444
      44000000000000000000222222C0C0C044444400000000000000000000000000
      0000CCFF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF00CCFF0033CC00
      33CC0033CC0033CC9966CC9966CC9966CC330000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FFFF000000000000000000000000000000000000777777000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006699CC6699CC336699777777000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000006699CC6699CC6699CC6699CC336699336699777777000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006699CC6699CC99CCFF33669999CCFF6699CC336699336699336699777777
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FFFF00FFFF00FFFF00000000000000000000000000000000
      00006699CC0033663366990033666699CC6699CC777777336699336699336699
      7777770000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080808080000000000000000000
      0000000000000000000000800000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080808080808080808000000000000000000000000000000000
      00006699CC0033666699CC6699CC99CCFF777777A4A0A099CCFF336699336699
      3366997777770000000000000000000000000000000000008000008000008000
      0080000080000000000000000000000000000000000080000080808000000000
      0000000000000000808080800000000000000000000000000000000000800000
      8000008000008000008000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006699CC6699CC99CCFF777777A4A0A0CCCCCCDDDDDD00000099CCFF336699
      3366993366997777770000000000000000000000000000008000008000008000
      0080000000000000000000000000000000000000000000000080000000000000
      0000000000000000800000000000000000000000000000000000000000000000
      8000008000008000008000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099CCFF222222A4A0A0CCCCCCDDDDDDDDDDDDFFFFFF00000000000099CCFF
      3366993366993366997777770000000000000000000000008000008000008000
      0000000000000000000000000000000000000000000000000080000000000000
      0000000000000000800000000000000000000000000000000000000000000000
      0000008000008000008000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000222222DDDDDDDDDDDDFFFFFF444444DDDDDD000000000000000000
      99CCFF3366993366990000000000000000000000000000008000008000000000
      0080000000000000000000000000000000000000000000000080000000000000
      0000000000000000800000000000000000000000000000000000000000000000
      800000000000800000800000000000000000000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
      0000000000222222FFFFFF444444DDDDDDFFFFFF444444DDDDDD000000000000
      00000099CCFF3366990000000000000000000000000000008000000000000000
      0000000080000080000000000000000000000000000080000080808000000000
      0000000000000000808080800000000000000000000000000000800000800000
      000000000000000000800000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000FFFFFF00000000000000000000000000
      0000000000222222222222FFFFFF444444DDDDDDDDDDDD444444DDDDDD000000
      00000000000099CCFF0000000000000000000000000000000000000000000000
      0000000000000000000080000080000080000080000080808000000000000000
      0000000000000000000000808080800000800000800000800000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000222222222222DDDDDD444444DDDDDDDDDDDD444444DDDDDD
      00000000000099CCFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFFFFF000000000000000000000000000000FFFFFF00000000000000000000
      0000000000000000000000000000111111444444DDDDDDDDDDDD444444DDDDDD
      DDDDDD0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
      0000000000000000000000000000000000222222444444DDDDDDDDDDDD444444
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000222222444444000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000008080008080000000000000000000000000000000000000
      0000000000000000000080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000008080008080000000000000000000000000000000000000
      0000000000000000000080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000008080008080008080008080008080008080008080008080
      008080000000000000000000000000000000000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000008080008080000000000000000000000000000000000000
      0000000000000000000080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF000000008080008080008080008080008080008080008080
      008080008080000000000000000000000000000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFF00000000000000000000
      0000000000000000008080008080000000000000000000000000000000000000
      0000000000000000000080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFFFFF00FFFF000000008080008080008080008080008080008080
      008080008080008080000000000000000000000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000008080008080008080008080008080008080008080008080
      0080800080800080800080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFF00FFFF000000008080008080008080008080008080
      008080008080008080008080000000000000000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000008080008080000000000000000000000000000000000000
      0000000000000080800080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFFFFF00FFFFFFFFFF00FFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000008080000000000000000000000000000000000000000000
      0000000000000000000080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF
      000000000000000000000000000000000000000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000008080000000000000000000000000000000000000000000
      0000000000000000000080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF
      000000000000000000000000000000000000000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000008080000000000000000000000000000000000000000000
      0000000000000000000080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFFFF00FFFF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000
      0000000000000000008080000000000000000000000000000000000000000000
      0000000000000000000080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00000000000000000000000000
      0000000000000000008080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000
      0000000000000000008080000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000000000000000000000000008000000000000000000000000000000000
      FFFFFF0000000000FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFF0000000000000000
      0000000000FFFFFFFFFFFFFF00000000FC3FFC3FFE1FFFFFF01FF00FF807FFFF
      C00FF003C001FFFF0007F007800300000003F01F800F00000001F07F800F0000
      0003F03F800F0000000FF03F800F0000001FF03F80070000001FF03F80070000
      001FF03F80070000801FF0FF80070000C01FF87F800F0000E07FF87FC00F0000
      F1FFFCFFC20F0000FFFFFFFFC71F0000FFFFFFFFFFFEF9FFFFFFFFFFC007E0FF
      FFFFFFFFBFEB807FFFFFFFFF0005003FFFFFFFFF7E31001FFFE7E7FF7E35000F
      C1F3CF8300060007C3FBDFC37FEA0003C7FBDFE380140003CBFBDFD3C00A8003
      DCF3CF3BE0018003FF07E0FFE007C003FFFFFFFFF007F00FFFFFFFFFF003F83F
      FFFFFFFFF803FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC001FFFFFFFF
      C0078031EFFD001FC0078031C7FF000FC0078031C3FB0007C0078001E3F70003
      C0078001F1E70001C0078001F8CF0000C0078FF1FC1F001FC0078FF1FE3F001F
      C0078FF1FC1F001FC0078FF1F8CF8FF1C00F8FF1E1E7FFF9C01F8FF5C3F3FF75
      C03F8001C7FDFF8FFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object dsrcMAHALLE: TDataSource
    DataSet = queryMAHALLE
    Left = 728
    Top = 120
  end
  object queryMAHALLE: TQuery
    Active = True
    DatabaseName = 'BM'
    FilterOptions = [foCaseInsensitive, foNoPartialCompare]
    SQL.Strings = (
      'SELECT DISTINCT MAHALLE FROM BOLGE'
      'WHERE BOLGE=:SEMT')
    Left = 696
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'SEMT'
        ParamType = ptUnknown
      end>
  end
  object dsrcBOLGE: TDataSource
    DataSet = queryBOLGE
    Left = 728
    Top = 152
  end
  object queryBOLGE: TQuery
    Active = True
    DatabaseName = 'BM'
    SQL.Strings = (
      'SELECT DISTINCT BOLGE FROM BOLGE')
    Left = 696
    Top = 152
  end
  object tblMUSTERI: TTable
    Active = True
    AutoRefresh = True
    DatabaseName = 'BM'
    TableName = 'MUSTERI.db'
    Left = 696
    Top = 56
    object tblMUSTERIM_NO: TStringField
      FieldName = 'M_NO'
      Size = 15
    end
    object tblMUSTERIM_ADI: TStringField
      FieldName = 'M_ADI'
      Size = 25
    end
    object tblMUSTERIM_SOYADI: TStringField
      FieldName = 'M_SOYADI'
      Size = 25
    end
    object tblMUSTERIM_CADDE: TStringField
      FieldName = 'M_CADDE'
      Size = 30
    end
    object tblMUSTERIM_SOKAK: TStringField
      FieldName = 'M_SOKAK'
      Size = 15
    end
    object tblMUSTERIM_KAPINO: TStringField
      FieldName = 'M_KAPINO'
      Size = 10
    end
    object tblMUSTERIM_BOLGE: TStringField
      FieldName = 'M_BOLGE'
      Size = 25
    end
    object tblMUSTERIM_MAHALLE: TStringField
      FieldName = 'M_MAHALLE'
      Size = 25
    end
    object tblMUSTERIM_EVTEL: TStringField
      FieldName = 'M_EVTEL'
      EditMask = '(# ###) ### ## ##;1;_'
      Size = 25
    end
    object tblMUSTERIM_CEPTEL: TStringField
      FieldName = 'M_CEPTEL'
      EditMask = '(# ###) ### ## ##;1;_'
      Size = 25
    end
    object tblMUSTERIM_ISTEL1: TStringField
      FieldName = 'M_ISTEL1'
      EditMask = '(# ###) ### ## ##;1;_'
      Size = 25
    end
    object tblMUSTERIM_ISTEL2: TStringField
      FieldName = 'M_ISTEL2'
      EditMask = '(# ###) ### ## ##;1;_'
      Size = 25
    end
    object tblMUSTERIK_ADI: TStringField
      FieldName = 'K_ADI'
      Size = 25
    end
    object tblMUSTERIK_SOYADI: TStringField
      FieldName = 'K_SOYADI'
      Size = 25
    end
    object tblMUSTERIK_CADDE: TStringField
      FieldName = 'K_CADDE'
      Size = 30
    end
    object tblMUSTERIK_SOKAK: TStringField
      FieldName = 'K_SOKAK'
      Size = 15
    end
    object tblMUSTERIK_KAPINO: TStringField
      FieldName = 'K_KAPINO'
      Size = 10
    end
    object tblMUSTERIK_BOLGE: TStringField
      FieldName = 'K_BOLGE'
      Size = 25
    end
    object tblMUSTERIK_MAHALLE: TStringField
      FieldName = 'K_MAHALLE'
      Size = 25
    end
    object tblMUSTERIK_EVTEL: TStringField
      FieldName = 'K_EVTEL'
      EditMask = '(# ###) ### ## ##;1;_'
      Size = 25
    end
    object tblMUSTERIK_CEPTEL: TStringField
      FieldName = 'K_CEPTEL'
      EditMask = '(# ###) ### ## ##;1;_'
      Size = 25
    end
    object tblMUSTERIK_ISTEL1: TStringField
      FieldName = 'K_ISTEL1'
      EditMask = '(# ###) ### ## ##;1;_'
      Size = 25
    end
    object tblMUSTERIK_ISTEL2: TStringField
      FieldName = 'K_ISTEL2'
      EditMask = '(# ###) ### ## ##;1;_'
      Size = 25
    end
    object tblMUSTERIDURUM: TStringField
      FieldName = 'DURUM'
      Size = 15
    end
    object tblMUSTERIKARALISTE_ACIKLAMASI: TMemoField
      FieldName = 'KARALISTE_ACIKLAMASI'
      BlobType = ftMemo
      Size = 240
    end
    object tblMUSTERIKARA_LISTE: TStringField
      FieldName = 'KARA_LISTE'
      Size = 25
    end
    object tblMUSTERIAYLIK_TAKSIT: TCurrencyField
      FieldName = 'AYLIK_TAKSIT'
    end
    object tblMUSTERIMAL_BEDELI: TCurrencyField
      FieldName = 'MAL_BEDELI'
    end
    object tblMUSTERIODENEN_TUTAR: TCurrencyField
      FieldName = 'ODENEN_TUTAR'
    end
    object tblMUSTERIKALAN_BORC: TCurrencyField
      FieldName = 'KALAN_BORC'
    end
    object tblMUSTERISON_TAKSIT_TARIHI: TDateField
      Alignment = taRightJustify
      FieldName = 'SON_TAKSIT_TARIHI'
    end
  end
  object dsrcMUSTERI: TDataSource
    DataSet = tblMUSTERI
    Left = 728
    Top = 56
  end
  object dsrcMAHALLE2: TDataSource
    DataSet = queryMAHALLE2
    Left = 728
    Top = 88
  end
  object queryMAHALLE2: TQuery
    Active = True
    DatabaseName = 'BM'
    FilterOptions = [foCaseInsensitive, foNoPartialCompare]
    SQL.Strings = (
      'SELECT DISTINCT MAHALLE FROM BOLGE'
      'WHERE BOLGE=:SEMT')
    Left = 696
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'SEMT'
        ParamType = ptUnknown
      end>
  end
  object dsrcTAKSIT: TDataSource
    DataSet = queryTAKSIT
    Left = 728
    Top = 312
  end
  object queryTAKSIT: TQuery
    Active = True
    DatabaseName = 'BM'
    SQL.Strings = (
      'SELECT VADE_TARIHI,  '
      'SUM(TAKSIT_TUTARI)TAKSIT_TUTARI, '
      'SUM(ODEME_TUTARI)ODEME_TUTARI,'
      'SUM(KALAN_BAKIYE)KALAN_BAKIYE FROM TAKSIT'
      'WHERE (MUSTERI_KODU=:MUSTERI_NO AND TAKSIT_TURU="TAKSIT FISI")'
      'GROUP BY VADE_TARIHI')
    Left = 696
    Top = 312
    ParamData = <
      item
        DataType = ftString
        Name = 'MUSTERI_NO'
        ParamType = ptUnknown
      end>
    object queryTAKSITVADE_TARIHI: TDateField
      FieldName = 'VADE_TARIHI'
      Origin = 'BM."TAKSIT.DB".VADE_TARIHI'
    end
    object queryTAKSITTAKSIT_TUTARI: TCurrencyField
      FieldName = 'TAKSIT_TUTARI'
      Origin = 'BM."TAKSIT.DB".TAKSIT_TUTARI'
    end
    object queryTAKSITODEME_TUTARI: TCurrencyField
      FieldName = 'ODEME_TUTARI'
      Origin = 'BM."TAKSIT.DB".ODEME_TUTARI'
    end
    object queryTAKSITKALAN_BAKIYE: TCurrencyField
      FieldName = 'KALAN_BAKIYE'
      Origin = 'BM."TAKSIT.DB".KALAN_BAKIYE'
    end
  end
  object dsrcSATIS: TDataSource
    DataSet = querySATIS
    Left = 728
    Top = 184
  end
  object querySATIS: TQuery
    Active = True
    DatabaseName = 'BM'
    SQL.Strings = (
      
        'SELECT SUM(PESINAT)PESINAT, SUM(MAL_BEDELI)MAL_BEDELI FROM STOKH' +
        'AR'
      'WHERE (MUSTERI_NO=:M_NO AND HAREKET_TURU = FALSE)')
    Left = 696
    Top = 184
    ParamData = <
      item
        DataType = ftString
        Name = 'M_NO'
        ParamType = ptUnknown
      end>
    object querySATISPESINAT: TCurrencyField
      FieldName = 'PESINAT'
      Origin = 'BM."STOKHAR.DB".PESINAT'
    end
    object querySATISMAL_BEDELI: TCurrencyField
      FieldName = 'MAL_BEDELI'
      Origin = 'BM."STOKHAR.DB".MAL_BEDELI'
    end
  end
  object dsrcAKTIF: TDataSource
    DataSet = queryAKTIF
    Left = 728
    Top = 216
  end
  object dsrcPASIF: TDataSource
    DataSet = queryPASIF
    Left = 728
    Top = 248
  end
  object queryAKTIF: TQuery
    Active = True
    DatabaseName = 'BM'
    SQL.Strings = (
      'SELECT * FROM MUSTERI'
      'WHERE DURUM="FALSE"')
    Left = 696
    Top = 216
  end
  object queryPASIF: TQuery
    Active = True
    DatabaseName = 'BM'
    SQL.Strings = (
      'SELECT * FROM MUSTERI'
      'WHERE DURUM="TRUE"')
    Left = 696
    Top = 248
  end
  object queryODEME: TQuery
    Active = True
    DatabaseName = 'BM'
    SQL.Strings = (
      'SELECT * FROM ODEME'
      'WHERE MNO=:M_NO')
    Left = 696
    Top = 280
    ParamData = <
      item
        DataType = ftString
        Name = 'M_NO'
        ParamType = ptUnknown
      end>
    object queryODEMEOTOMATIK_SAYI: TIntegerField
      FieldName = 'OTOMATIK_SAYI'
      Origin = 'BM."ODEME.DB".OTOMATIK_SAYI'
    end
    object queryODEMEMNO: TStringField
      FieldName = 'MNO'
      Origin = 'BM."ODEME.DB".MNO'
      Size = 15
    end
    object queryODEMESATICI: TStringField
      FieldName = 'SATICI'
      Origin = 'BM."ODEME.DB".SATICI'
      Size = 25
    end
    object queryODEMEACIKLAMA: TMemoField
      FieldName = 'ACIKLAMA'
      Origin = 'BM."ODEME.DB".ACIKLAMA'
      BlobType = ftMemo
      Size = 100
    end
    object queryODEMEODEME_TARIHI: TDateField
      FieldName = 'ODEME_TARIHI'
      Origin = 'BM."ODEME.DB".ODEME_TARIHI'
    end
    object queryODEMEODEME_TUTARI: TCurrencyField
      FieldName = 'ODEME_TUTARI'
      Origin = 'BM."ODEME.DB".ODEME_TUTARI'
    end
    object queryODEMEBAKIYE: TCurrencyField
      FieldName = 'BAKIYE'
      Origin = 'BM."ODEME.DB".BAKIYE'
    end
    object queryODEMEMADI: TStringField
      FieldName = 'MADI'
      Origin = 'BM."ODEME.DB".MADI'
      Size = 25
    end
    object queryODEMEMSOYADI: TStringField
      FieldName = 'MSOYADI'
      Origin = 'BM."ODEME.DB".MSOYADI'
      Size = 25
    end
    object queryODEMEONAY: TBooleanField
      FieldName = 'ONAY'
      Origin = 'BM."ODEME.DB".ONAY'
    end
  end
  object dsrcODEME: TDataSource
    DataSet = queryODEME
    Left = 728
    Top = 280
  end
  object dsrcSATISFISI: TDataSource
    DataSet = querySATISFISI
    Left = 728
    Top = 344
  end
  object querySATISFISI: TQuery
    Active = True
    DatabaseName = 'BM'
    SQL.Strings = (
      'SELECT * FROM STOKHAR'
      'WHERE MUSTERI_NO=:M_NO')
    Left = 696
    Top = 344
    ParamData = <
      item
        DataType = ftString
        Name = 'M_NO'
        ParamType = ptUnknown
      end>
    object querySATISFISIOTOMATIK_SAYI: TIntegerField
      FieldName = 'OTOMATIK_SAYI'
      Origin = 'BM."STOKHAR.DB".OTOMATIK_SAYI'
    end
    object querySATISFISIHAREKET_TURU: TBooleanField
      FieldName = 'HAREKET_TURU'
      Origin = 'BM."STOKHAR.DB".HAREKET_TURU'
    end
    object querySATISFISITARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'BM."STOKHAR.DB".TARIH'
    end
    object querySATISFISIMUSTERI_NO: TStringField
      FieldName = 'MUSTERI_NO'
      Origin = 'BM."STOKHAR.DB".MUSTERI_NO'
      Size = 15
    end
    object querySATISFISIMUSTERI_ADI: TStringField
      FieldName = 'MUSTERI_ADI'
      Origin = 'BM."STOKHAR.DB".MUSTERI_ADI'
      Size = 25
    end
    object querySATISFISIMUSTERI_SOYADI: TStringField
      FieldName = 'MUSTERI_SOYADI'
      Origin = 'BM."STOKHAR.DB".MUSTERI_SOYADI'
      Size = 25
    end
    object querySATISFISIKAYIT_NO: TStringField
      FieldName = 'KAYIT_NO'
      Origin = 'BM."STOKHAR.DB".KAYIT_NO'
      Size = 15
    end
    object querySATISFISISATICI: TStringField
      FieldName = 'SATICI'
      Origin = 'BM."STOKHAR.DB".SATICI'
      Size = 25
    end
    object querySATISFISIBIRIM_FIYATI: TCurrencyField
      FieldName = 'BIRIM_FIYATI'
      Origin = 'BM."STOKHAR.DB".BIRIM_FIYATI'
    end
    object querySATISFISIMAL_ADEDI: TFloatField
      FieldName = 'MAL_ADEDI'
      Origin = 'BM."STOKHAR.DB".MAL_ADEDI'
    end
    object querySATISFISIILK_TAKSIT_TARIHI: TDateField
      FieldName = 'ILK_TAKSIT_TARIHI'
      Origin = 'BM."STOKHAR.DB".ILK_TAKSIT_TARIHI'
    end
    object querySATISFISIMAL_BEDELI: TCurrencyField
      FieldName = 'MAL_BEDELI'
      Origin = 'BM."STOKHAR.DB".MAL_BEDELI'
    end
    object querySATISFISIPESINAT: TCurrencyField
      FieldName = 'PESINAT'
      Origin = 'BM."STOKHAR.DB".PESINAT'
    end
    object querySATISFISITAKSIT_SAYISI: TFloatField
      FieldName = 'TAKSIT_SAYISI'
      Origin = 'BM."STOKHAR.DB".TAKSIT_SAYISI'
    end
    object querySATISFISITAKSIT_TUTARI: TCurrencyField
      FieldName = 'TAKSIT_TUTARI'
      Origin = 'BM."STOKHAR.DB".TAKSIT_TUTARI'
    end
    object querySATISFISIKALAN_BORC: TCurrencyField
      FieldName = 'KALAN_BORC'
      Origin = 'BM."STOKHAR.DB".KALAN_BORC'
    end
    object querySATISFISIACIKLAMA: TMemoField
      FieldName = 'ACIKLAMA'
      Origin = 'BM."STOKHAR.DB".ACIKLAMA'
      BlobType = ftMemo
      Size = 150
    end
    object querySATISFISIURUN_NO: TStringField
      FieldName = 'URUN_NO'
      Origin = 'BM."STOKHAR.DB".URUN_NO'
      Size = 15
    end
    object querySATISFISIURUN_ADI: TStringField
      FieldName = 'URUN_ADI'
      Origin = 'BM."STOKHAR.DB".URUN_ADI'
      Size = 25
    end
  end
  object queryDEVIR: TQuery
    Active = True
    DatabaseName = 'BM'
    SQL.Strings = (
      'SELECT VADE_TARIHI,  '
      'SUM(TAKSIT_TUTARI)TAKSIT_TUTARI, '
      'SUM(ODEME_TUTARI)ODEME_TUTARI,'
      'SUM(KALAN_BAKIYE)KALAN_BAKIYE FROM TAKSIT'
      'WHERE (MUSTERI_KODU=:MUSTERI_NO AND TAKSIT_TURU="DEVIR FISI")'
      'GROUP BY VADE_TARIHI')
    Left = 696
    Top = 376
    ParamData = <
      item
        DataType = ftString
        Name = 'MUSTERI_NO'
        ParamType = ptUnknown
      end>
    object DateField1: TDateField
      FieldName = 'VADE_TARIHI'
      Origin = 'BM."TAKSIT.DB".VADE_TARIHI'
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'TAKSIT_TUTARI'
      Origin = 'BM."TAKSIT.DB".TAKSIT_TUTARI'
    end
    object queryDEVIRODEME_TUTARI: TCurrencyField
      FieldName = 'ODEME_TUTARI'
      Origin = 'BM."TAKSIT.DB".ODEME_TUTARI'
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'KALAN_BAKIYE'
      Origin = 'BM."TAKSIT.DB".KALAN_BAKIYE'
    end
  end
  object dsrcDEVIR: TDataSource
    DataSet = queryDEVIR
    Left = 728
    Top = 376
  end
end
