object frmMusteriListesi: TfrmMusteriListesi
  Left = 236
  Top = 211
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Müþteri Listesi'
  ClientHeight = 386
  ClientWidth = 394
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 24
    Width = 297
    Height = 49
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 77
      Height = 13
      Caption = 'Müþteri No / Adý'
      OnClick = BitBtn2Click
    end
    object Edit1: TEdit
      Left = 96
      Top = 16
      Width = 193
      Height = 21
      AutoSize = False
      CharCase = ecUpperCase
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = Edit1Change
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 80
    Width = 393
    Height = 305
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 8
      Top = 16
      Width = 377
      Height = 281
      DataSource = DataSource1
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
          FieldName = 'M_NO'
          Title.Alignment = taCenter
          Title.Caption = 'M.No'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M_ADI'
          Title.Alignment = taCenter
          Title.Caption = 'M.Adý'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'M_SOYADI'
          Title.Alignment = taCenter
          Title.Caption = 'M.Soyadý'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KALAN'
          Title.Alignment = taCenter
          Title.Caption = 'Bakiyesi'
          Width = 100
          Visible = True
        end>
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 394
    Height = 29
    Caption = 'ToolBar1'
    Flat = True
    HotImages = frmMusteri.ImageList1
    Images = frmMusteri.ImageList1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    object tbtnKLEKLE: TToolButton
      Left = 0
      Top = 0
      Hint = 'Kara Listedekileri listele'
      Caption = 'tbtnKLEKLE'
      ImageIndex = 7
      OnClick = tbtnKLEKLEClick
    end
    object tbtnKLCIKAR: TToolButton
      Left = 23
      Top = 0
      Hint = 'Kara Listede Olmayanlarý Listele'
      Caption = 'tbtnKLCIKAR'
      Enabled = False
      ImageIndex = 8
      OnClick = tbtnKLCIKARClick
    end
    object ToolButton3: TToolButton
      Left = 46
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object tbtnPASIF: TToolButton
      Left = 54
      Top = 0
      Hint = 'Pasifleri Listele'
      Caption = 'tbtnPASIF'
      ImageIndex = 9
      OnClick = tbtnPASIFClick
    end
    object tbtnAKTIF: TToolButton
      Left = 77
      Top = 0
      Hint = 'Aktifleri Listele'
      Caption = 'tbtnAKTIF'
      Enabled = False
      ImageIndex = 10
      OnClick = tbtnAKTIFClick
    end
    object ToolButton1: TToolButton
      Left = 100
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 13
      Style = tbsSeparator
    end
    object lblDurumEtiketi: TLabel
      Left = 108
      Top = 0
      Width = 277
      Height = 22
      Alignment = taCenter
      AutoSize = False
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ToolButton2: TToolButton
      Left = 385
      Top = 0
      Width = 9
      Caption = 'ToolButton2'
      ImageIndex = 12
      Style = tbsSeparator
    end
  end
  object BitBtn2: TBitBtn
    Left = 304
    Top = 32
    Width = 89
    Height = 41
    Caption = 'Ýptal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
    Kind = bkCancel
  end
  object AYAR_Edit: TEdit
    Left = 488
    Top = 32
    Width = 25
    Height = 21
    TabOrder = 4
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 456
    Top = 32
  end
  object Query1: TQuery
    Active = True
    DatabaseName = 'BM'
    FilterOptions = [foCaseInsensitive, foNoPartialCompare]
    SQL.Strings = (
      'SELECT M_NO, M_ADI, M_SOYADI, KALAN_BORC FROM MUSTERI'
      
        'WHERE ((M_NO LIKE :NO OR M_ADI LIKE :ISIM)  AND DURUM LIKE :AKPA' +
        'S AND KARA_LISTE LIKE :KARA_LISTE)')
    Left = 408
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'NO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ISIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'AKPAS'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'KARA_LISTE'
        ParamType = ptUnknown
      end>
  end
end
