object frmSatici: TfrmSatici
  Left = 311
  Top = 185
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Satýcý Griþi'
  ClientHeight = 299
  ClientWidth = 275
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 0
    Width = 260
    Height = 25
    DataSource = dsrcSATICI
    Hints.Strings = (
      'Ýlk Kayýt'
      'Önceki Kayýt'
      'Sonraki Kayýt'
      'Enson Kayýt'
      'Yeni'
      'Sil'
      'Düzenle'
      'Kaydet'
      'Sil'
      'Yenile')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 24
    Width = 273
    Height = 273
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 8
      Top = 16
      Width = 257
      Height = 249
      DataSource = dsrcSATICI
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ISIM KISALTMASI'
          Title.Alignment = taCenter
          Title.Caption = 'Kýsaltma'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ISIM'
          Title.Alignment = taCenter
          Title.Caption = 'Personel'
          Visible = True
        end>
    end
  end
  object dsrcSATICI: TDataSource
    DataSet = tblSATICI
    Left = 280
  end
  object tblSATICI: TTable
    Active = True
    DatabaseName = 'BM'
    TableName = 'SATICI.db'
    Left = 312
  end
end
