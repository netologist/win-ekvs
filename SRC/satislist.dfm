object frmSatisListesi: TfrmSatisListesi
  Left = 364
  Top = 303
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Satýþ Fiþi Listesi'
  ClientHeight = 322
  ClientWidth = 425
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 425
    Height = 321
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 103
      Height = 13
      Caption = 'Satýþ Fiþi / Müþteri No'
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 48
      Width = 409
      Height = 265
      DataSource = dsrcSATISLIST
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'OTOMATIK_SAYI'
          Title.Alignment = taCenter
          Title.Caption = 'Satýþ Fiþi'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TARIH'
          Title.Alignment = taCenter
          Title.Caption = 'Tarih'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUSTERI_NO'
          Title.Alignment = taCenter
          Title.Caption = 'Müþteri No'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUSTERI_ADI'
          Title.Alignment = taCenter
          Title.Caption = 'Müþteri Adý'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUSTERI_SOYADI'
          Title.Alignment = taCenter
          Title.Caption = 'Müþteri Soyadý'
          Width = 95
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 120
      Top = 16
      Width = 297
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = Edit1Change
    end
  end
  object dsrcSATISLIST: TDataSource
    DataSet = querySATISLIST
    Left = 16
    Top = 280
  end
  object querySATISLIST: TQuery
    Active = True
    DatabaseName = 'BM'
    SQL.Strings = (
      
        'SELECT OTOMATIK_SAYI, TARIH, MUSTERI_NO, MUSTERI_ADI, MUSTERI_SO' +
        'YADI FROM STOKHAR'
      
        'WHERE (KAYIT_NO LIKE :OTOSAYI OR MUSTERI_NO LIKE :MNO) AND HAREK' +
        'ET_TURU = FALSE')
    Left = 48
    Top = 280
    ParamData = <
      item
        DataType = ftString
        Name = 'OTOSAYI'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'MNO'
        ParamType = ptUnknown
      end>
    object querySATISLISTOTOMATIK_SAYI: TIntegerField
      FieldName = 'OTOMATIK_SAYI'
      Origin = 'BM."STOKHAR.DB".OTOMATIK_SAYI'
    end
    object querySATISLISTTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'BM."STOKHAR.DB".TARIH'
    end
    object querySATISLISTMUSTERI_NO: TStringField
      FieldName = 'MUSTERI_NO'
      Origin = 'BM."STOKHAR.DB".MUSTERI_NO'
      Size = 15
    end
    object querySATISLISTMUSTERI_ADI: TStringField
      FieldName = 'MUSTERI_ADI'
      Origin = 'BM."STOKHAR.DB".MUSTERI_ADI'
      Size = 25
    end
    object querySATISLISTMUSTERI_SOYADI: TStringField
      FieldName = 'MUSTERI_SOYADI'
      Origin = 'BM."STOKHAR.DB".MUSTERI_SOYADI'
      Size = 25
    end
  end
end
