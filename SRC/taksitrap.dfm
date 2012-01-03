object frmTaksitRaporu: TfrmTaksitRaporu
  Left = 188
  Top = 336
  Width = 838
  Height = 603
  Caption = 'frmTaksitRaporu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 8
    Top = 0
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = queryTAKSIT
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      50
      2970
      50
      2100
      50
      50
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object ColumnHeaderBand1: TQRBand
      Left = 19
      Top = 78
      Width = 756
      Height = 32
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        84.6666666666667
        2000.25)
      BandType = rbColumnHeader
      object QRLabel3: TQRLabel
        Left = 8
        Top = 8
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          21.1666666666667
          171.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Tarih'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 80
        Top = 8
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          211.666666666667
          21.1666666666667
          256.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Müþteri No'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 184
        Top = 8
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          21.1666666666667
          256.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Müþteri Adý'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 288
        Top = 8
        Width = 121
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          762
          21.1666666666667
          320.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Müþteri Soyadý'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 416
        Top = 8
        Width = 113
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1100.66666666667
          21.1666666666667
          298.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Taksit Tutarý'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 536
        Top = 8
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1418.16666666667
          21.1666666666667
          277.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Odenen Tutar'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 648
        Top = 8
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1714.5
          21.1666666666667
          277.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Bakiye'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object DetailBand1: TQRBand
      Left = 19
      Top = 110
      Width = 756
      Height = 32
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        84.6666666666667
        2000.25)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 8
        Top = 8
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          21.1666666666667
          171.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = queryTAKSIT
        DataField = 'VADE_TARIHI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText2: TQRDBText
        Left = 80
        Top = 8
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          211.666666666667
          21.1666666666667
          256.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = queryTAKSIT
        DataField = 'MUSTERI_KODU'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText3: TQRDBText
        Left = 184
        Top = 8
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          21.1666666666667
          256.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = queryMUSTERI
        DataField = 'M_ADI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText4: TQRDBText
        Left = 288
        Top = 8
        Width = 121
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          762
          21.1666666666667
          320.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = queryMUSTERI
        DataField = 'M_SOYADI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText6: TQRDBText
        Left = 416
        Top = 8
        Width = 113
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1100.66666666667
          21.1666666666667
          298.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = queryTUTAR
        DataField = 'TAKSIT_TUTARI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText5: TQRDBText
        Left = 536
        Top = 8
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1418.16666666667
          21.1666666666667
          277.8125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = queryTUTAR
        DataField = 'ODEME_TUTARI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText7: TQRDBText
        Left = 648
        Top = 8
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1714.5
          21.1666666666667
          277.8125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = queryTUTAR
        DataField = 'KALAN_BAKIYE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
    object PageFooterBand1: TQRBand
      Left = 19
      Top = 142
      Width = 756
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        92.6041666666667
        2000.25)
      BandType = rbPageFooter
      object QRLabel10: TQRLabel
        Left = 360
        Top = 8
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          952.5
          21.1666666666667
          129.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Toplam'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRExpr1: TQRExpr
        Left = 416
        Top = 8
        Width = 113
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1100.66666666667
          21.1666666666667
          298.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(queryTUTAR.TAKSIT_TUTARI)'
        Mask = '###,###,###,###,###'
        FontSize = 10
      end
      object QRExpr2: TQRExpr
        Left = 536
        Top = 8
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1418.16666666667
          21.1666666666667
          277.8125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(queryTUTAR.ODEME_TUTARI)'
        Mask = '###,###,###,###,###'
        FontSize = 10
      end
      object QRExpr3: TQRExpr
        Left = 648
        Top = 8
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1714.5
          21.1666666666667
          277.8125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(queryTUTAR.KALAN_BAKIYE)'
        Mask = '###,###,###,###,###'
        FontSize = 10
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 19
      Top = 19
      Width = 756
      Height = 59
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        156.104166666667
        2000.25)
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 272
        Top = 0
        Width = 208
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.5
          719.666666666667
          0
          550.333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'T a k s i t   R a p o r  u '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 15
      end
      object QRLabel2: TQRLabel
        Left = 672
        Top = 8
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1778
          21.1666666666667
          89.9583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Sayfa'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRSysData1: TQRSysData
        Left = 711
        Top = 8
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1881.1875
          21.1666666666667
          121.708333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsPageNumber
        Transparent = False
        FontSize = 10
      end
    end
  end
  object dsrcTAKSIT: TDataSource
    DataSet = queryTAKSIT
  end
  object queryTAKSIT: TQuery
    Active = True
    DatabaseName = 'BM'
    SQL.Strings = (
      'SELECT DISTINCT VADE_TARIHI,  MUSTERI_KODU  FROM TAKSIT'
      'WHERE ( (VADE_TARIHI >= :TARIH1 AND VADE_TARIHI <= :TARIH2) AND'
      
        '               (MUSTERI_KODU >= :MNO1 AND MUSTERI_KODU <= :MNO2)' +
        ' )')
    Left = 32
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'TARIH1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'TARIH2'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'MNO1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'MNO2'
        ParamType = ptUnknown
      end>
  end
  object queryMUSTERI: TQuery
    Active = True
    DatabaseName = 'BM'
    DataSource = dsrcTAKSIT
    SQL.Strings = (
      'SELECT * FROM MUSTERI'
      'WHERE M_NO=:MUSTERI_KODU')
    Left = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'MUSTERI_KODU'
        ParamType = ptUnknown
      end>
    object queryMUSTERIM_NO: TStringField
      FieldName = 'M_NO'
      Origin = 'BM."MUSTERI.DB".M_NO'
      Size = 15
    end
    object queryMUSTERIM_ADI: TStringField
      FieldName = 'M_ADI'
      Origin = 'BM."MUSTERI.DB".M_ADI'
      Size = 25
    end
    object queryMUSTERIM_SOYADI: TStringField
      FieldName = 'M_SOYADI'
      Origin = 'BM."MUSTERI.DB".M_SOYADI'
      Size = 25
    end
    object queryMUSTERIM_CADDE: TStringField
      FieldName = 'M_CADDE'
      Origin = 'BM."MUSTERI.DB".M_CADDE'
      Size = 30
    end
    object queryMUSTERIM_SOKAK: TStringField
      FieldName = 'M_SOKAK'
      Origin = 'BM."MUSTERI.DB".M_SOKAK'
      Size = 15
    end
    object queryMUSTERIM_KAPINO: TStringField
      FieldName = 'M_KAPINO'
      Origin = 'BM."MUSTERI.DB".M_KAPINO'
      Size = 10
    end
    object queryMUSTERIM_BOLGE: TStringField
      FieldName = 'M_BOLGE'
      Origin = 'BM."MUSTERI.DB".M_BOLGE'
      Size = 25
    end
    object queryMUSTERIM_MAHALLE: TStringField
      FieldName = 'M_MAHALLE'
      Origin = 'BM."MUSTERI.DB".M_MAHALLE'
      Size = 25
    end
    object queryMUSTERIM_EVTEL: TStringField
      FieldName = 'M_EVTEL'
      Origin = 'BM."MUSTERI.DB".M_EVTEL'
      Size = 25
    end
    object queryMUSTERIM_CEPTEL: TStringField
      FieldName = 'M_CEPTEL'
      Origin = 'BM."MUSTERI.DB".M_CEPTEL'
      Size = 25
    end
    object queryMUSTERIM_ISTEL1: TStringField
      FieldName = 'M_ISTEL1'
      Origin = 'BM."MUSTERI.DB".M_ISTEL1'
      Size = 25
    end
    object queryMUSTERIM_ISTEL2: TStringField
      FieldName = 'M_ISTEL2'
      Origin = 'BM."MUSTERI.DB".M_ISTEL2'
      Size = 25
    end
    object queryMUSTERIK_ADI: TStringField
      FieldName = 'K_ADI'
      Origin = 'BM."MUSTERI.DB".K_ADI'
      Size = 25
    end
    object queryMUSTERIK_SOYADI: TStringField
      FieldName = 'K_SOYADI'
      Origin = 'BM."MUSTERI.DB".K_SOYADI'
      Size = 25
    end
    object queryMUSTERIK_CADDE: TStringField
      FieldName = 'K_CADDE'
      Origin = 'BM."MUSTERI.DB".K_CADDE'
      Size = 30
    end
    object queryMUSTERIK_SOKAK: TStringField
      FieldName = 'K_SOKAK'
      Origin = 'BM."MUSTERI.DB".K_SOKAK'
      Size = 15
    end
    object queryMUSTERIK_KAPINO: TStringField
      FieldName = 'K_KAPINO'
      Origin = 'BM."MUSTERI.DB".K_KAPINO'
      Size = 10
    end
    object queryMUSTERIK_BOLGE: TStringField
      FieldName = 'K_BOLGE'
      Origin = 'BM."MUSTERI.DB".K_BOLGE'
      Size = 25
    end
    object queryMUSTERIK_MAHALLE: TStringField
      FieldName = 'K_MAHALLE'
      Origin = 'BM."MUSTERI.DB".K_MAHALLE'
      Size = 25
    end
    object queryMUSTERIK_EVTEL: TStringField
      FieldName = 'K_EVTEL'
      Origin = 'BM."MUSTERI.DB".K_EVTEL'
      Size = 25
    end
    object queryMUSTERIK_CEPTEL: TStringField
      FieldName = 'K_CEPTEL'
      Origin = 'BM."MUSTERI.DB".K_CEPTEL'
      Size = 25
    end
    object queryMUSTERIK_ISTEL1: TStringField
      FieldName = 'K_ISTEL1'
      Origin = 'BM."MUSTERI.DB".K_ISTEL1'
      Size = 25
    end
    object queryMUSTERIK_ISTEL2: TStringField
      FieldName = 'K_ISTEL2'
      Origin = 'BM."MUSTERI.DB".K_ISTEL2'
      Size = 25
    end
    object queryMUSTERIDURUM: TStringField
      FieldName = 'DURUM'
      Origin = 'BM."MUSTERI.DB".DURUM'
      Size = 15
    end
    object queryMUSTERIKARALISTE_ACIKLAMASI: TMemoField
      FieldName = 'KARALISTE_ACIKLAMASI'
      Origin = 'BM."MUSTERI.DB".KARALISTE_ACIKLAMASI'
      BlobType = ftMemo
      Size = 240
    end
    object queryMUSTERIKARA_LISTE: TStringField
      FieldName = 'KARA_LISTE'
      Origin = 'BM."MUSTERI.DB".KARA_LISTE'
      Size = 25
    end
    object queryMUSTERIAYLIK_TAKSIT: TCurrencyField
      FieldName = 'AYLIK_TAKSIT'
      Origin = 'BM."MUSTERI.DB".AYLIK_TAKSIT'
    end
    object queryMUSTERIMAL_BEDELI: TCurrencyField
      FieldName = 'MAL_BEDELI'
      Origin = 'BM."MUSTERI.DB".MAL_BEDELI'
    end
    object queryMUSTERIODENEN_TUTAR: TCurrencyField
      FieldName = 'ODENEN_TUTAR'
      Origin = 'BM."MUSTERI.DB".ODENEN_TUTAR'
    end
    object queryMUSTERIKALAN_BORC: TCurrencyField
      FieldName = 'KALAN_BORC'
      Origin = 'BM."MUSTERI.DB".KALAN_BORC'
    end
    object queryMUSTERISON_TAKSIT_TARIHI: TDateField
      FieldName = 'SON_TAKSIT_TARIHI'
      Origin = 'BM."MUSTERI.DB".SON_TAKSIT_TARIHI'
    end
  end
  object queryTUTAR: TQuery
    Active = True
    DatabaseName = 'BM'
    DataSource = dsrcTAKSIT
    SQL.Strings = (
      'SELECT VADE_TARIHI,  '
      'SUM(TAKSIT_TUTARI)TAKSIT_TUTARI, '
      'SUM(ODEME_TUTARI)ODEME_TUTARI,'
      'SUM(KALAN_BAKIYE)KALAN_BAKIYE FROM TAKSIT'
      
        'WHERE (MUSTERI_KODU=:MUSTERI_KODU AND TAKSIT_TURU="TAKSIT FISI" ' +
        ' AND VADE_TARIHI=:VADE_TARIHI)'
      'GROUP BY VADE_TARIHI')
    Left = 96
    ParamData = <
      item
        DataType = ftString
        Name = 'MUSTERI_KODU'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'VADE_TARIHI'
        ParamType = ptUnknown
      end>
  end
end
