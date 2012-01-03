object frmHareketListesi: TfrmHareketListesi
  Left = 363
  Top = 251
  BorderStyle = bsDialog
  Caption = 'Hareket Listesi'
  ClientHeight = 322
  ClientWidth = 299
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 64
    Width = 297
    Height = 257
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 8
      Top = 16
      Width = 281
      Height = 233
      DataSource = dsrcHAREKET
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
          FieldName = 'TARIH'
          Title.Alignment = taCenter
          Title.Caption = 'Tarih'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KAYIT_NO'
          Title.Alignment = taCenter
          Title.Caption = 'Fatura No'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUSTERI_ADI'
          Title.Alignment = taCenter
          Title.Caption = 'Firma Adý'
          Width = 120
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 297
    Height = 73
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 16
      Width = 47
      Height = 13
      Caption = 'Fatura No'
    end
    object Label3: TLabel
      Left = 8
      Top = 40
      Width = 43
      Height = 13
      Caption = 'Firma Adý'
    end
    object FaturaNo_Edit: TEdit
      Left = 80
      Top = 16
      Width = 65
      Height = 21
      TabOrder = 0
      OnChange = FaturaNo_EditChange
    end
    object Firma_Edit: TEdit
      Left = 80
      Top = 40
      Width = 201
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = Firma_EditChange
    end
  end
  object dsrcHAREKET: TDataSource
    DataSet = queryHAREKET
    Left = 312
    Top = 288
  end
  object queryHAREKET: TQuery
    Active = True
    DatabaseName = 'BM'
    SQL.Strings = (
      'SELECT TARIH, '
      '               MUSTERI_ADI, '
      '               KAYIT_NO, '
      '               HAREKET_TURU FROM STOKHAR'
      'WHERE MUSTERI_ADI LIKE :FIRMA AND '
      '               KAYIT_NO LIKE :FATURA_NO AND '
      '               HAREKET_TURU=TRUE')
    Left = 344
    Top = 288
    ParamData = <
      item
        DataType = ftString
        Name = 'FIRMA'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'FATURA_NO'
        ParamType = ptUnknown
      end>
    object queryHAREKETTARIH: TDateField
      FieldName = 'TARIH'
      Origin = 'BM."STOKHAR.DB".TARIH'
    end
    object queryHAREKETMUSTERI_ADI: TStringField
      FieldName = 'MUSTERI_ADI'
      Origin = 'BM."STOKHAR.DB".MUSTERI_ADI'
      Size = 25
    end
    object queryHAREKETKAYIT_NO: TStringField
      FieldName = 'KAYIT_NO'
      Origin = 'BM."STOKHAR.DB".KAYIT_NO'
      Size = 15
    end
    object queryHAREKETHAREKET_TURU: TBooleanField
      FieldName = 'HAREKET_TURU'
      Origin = 'BM."STOKHAR.DB".HAREKET_TURU'
    end
  end
end
