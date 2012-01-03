object frmBolgeGirisi: TfrmBolgeGirisi
  Left = 495
  Top = 183
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Bölge Giriþi'
  ClientHeight = 302
  ClientWidth = 257
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
  object GroupBox4: TGroupBox
    Left = 0
    Top = -4
    Width = 257
    Height = 306
    TabOrder = 0
    object DBGrid2: TDBGrid
      Left = 8
      Top = 48
      Width = 241
      Height = 249
      DataSource = DataSource3
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'BOLGE'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MAHALLE'
          Width = 105
          Visible = True
        end>
    end
    object DBNavigator2: TDBNavigator
      Left = 8
      Top = 16
      Width = 240
      Height = 25
      DataSource = DataSource3
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
      TabOrder = 1
    end
  end
  object DataSource3: TDataSource
    DataSet = Table2
    Left = 264
    Top = 328
  end
  object Table2: TTable
    Active = True
    AutoRefresh = True
    DatabaseName = 'BM'
    FilterOptions = [foCaseInsensitive]
    TableName = 'BOLGE.db'
    Left = 264
    Top = 296
  end
end
