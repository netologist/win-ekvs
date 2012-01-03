object frmOdemeFisi: TfrmOdemeFisi
  Left = 190
  Top = 158
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ödeme Fiþi'
  ClientHeight = 416
  ClientWidth = 633
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
    Top = -1
    Width = 633
    Height = 417
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 8
      Top = 8
      Width = 617
      Height = 145
      Enabled = False
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 51
        Height = 13
        Caption = 'Müþteri No'
      end
      object Label3: TLabel
        Left = 24
        Top = 64
        Width = 32
        Height = 13
        Caption = 'Soyadý'
      end
      object Label4: TLabel
        Left = 224
        Top = 16
        Width = 31
        Height = 13
        Caption = 'Cadde'
      end
      object Label5: TLabel
        Left = 224
        Top = 40
        Width = 31
        Height = 13
        Caption = 'Sokak'
      end
      object Label2: TLabel
        Left = 40
        Top = 40
        Width = 15
        Height = 13
        Caption = 'Adý'
      end
      object Label6: TLabel
        Left = 216
        Top = 64
        Width = 38
        Height = 13
        Caption = 'Kapý No'
      end
      object Label7: TLabel
        Left = 32
        Top = 88
        Width = 27
        Height = 13
        Caption = 'Bölge'
      end
      object Label8: TLabel
        Left = 24
        Top = 112
        Width = 37
        Height = 13
        Caption = 'Mahalle'
      end
      object Label9: TLabel
        Left = 224
        Top = 88
        Width = 31
        Height = 13
        Caption = 'Ev Tel'
      end
      object Label10: TLabel
        Left = 216
        Top = 112
        Width = 37
        Height = 13
        Caption = 'Cep Tel'
      end
      object Label13: TLabel
        Left = 416
        Top = 16
        Width = 42
        Height = 13
        Caption = 'Mal Bed.'
      end
      object Label14: TLabel
        Left = 432
        Top = 40
        Width = 29
        Height = 13
        Caption = 'Taksit'
      end
      object Label15: TLabel
        Left = 424
        Top = 64
        Width = 38
        Height = 13
        Caption = 'Ödenen'
      end
      object Label16: TLabel
        Left = 432
        Top = 88
        Width = 27
        Height = 13
        Caption = 'Kalan'
      end
      object MNO_Edit: TDBEdit
        Left = 72
        Top = 16
        Width = 129
        Height = 21
        DataField = 'M_NO'
        DataSource = dsrcMUSTERI
        Enabled = False
        TabOrder = 0
      end
      object MADI_Edit: TDBEdit
        Left = 72
        Top = 40
        Width = 129
        Height = 21
        DataField = 'M_ADI'
        DataSource = dsrcMUSTERI
        Enabled = False
        TabOrder = 1
      end
      object MSOYADI_Edit: TDBEdit
        Left = 72
        Top = 64
        Width = 129
        Height = 21
        DataField = 'M_SOYADI'
        DataSource = dsrcMUSTERI
        Enabled = False
        TabOrder = 2
      end
      object MBOLGE_Edit: TDBEdit
        Left = 72
        Top = 88
        Width = 129
        Height = 21
        DataField = 'M_BOLGE'
        DataSource = dsrcMUSTERI
        Enabled = False
        TabOrder = 3
      end
      object MCADDE_Edit: TDBEdit
        Left = 264
        Top = 16
        Width = 137
        Height = 21
        DataField = 'M_CADDE'
        DataSource = dsrcMUSTERI
        Enabled = False
        TabOrder = 5
      end
      object MSOKAK_Edit: TDBEdit
        Left = 264
        Top = 40
        Width = 137
        Height = 21
        DataField = 'M_SOKAK'
        DataSource = dsrcMUSTERI
        Enabled = False
        TabOrder = 6
      end
      object MKAPINO_Edit: TDBEdit
        Left = 264
        Top = 64
        Width = 137
        Height = 21
        DataField = 'M_KAPINO'
        DataSource = dsrcMUSTERI
        Enabled = False
        TabOrder = 7
      end
      object M_EVTEL_Edit: TDBEdit
        Left = 264
        Top = 88
        Width = 137
        Height = 21
        DataField = 'M_EVTEL'
        DataSource = dsrcMUSTERI
        Enabled = False
        TabOrder = 8
      end
      object MCEPTEL_Edit: TDBEdit
        Left = 264
        Top = 112
        Width = 137
        Height = 21
        DataField = 'M_CEPTEL'
        DataSource = dsrcMUSTERI
        Enabled = False
        TabOrder = 9
      end
      object MMAHALLE_Edit: TDBEdit
        Left = 72
        Top = 112
        Width = 129
        Height = 21
        DataField = 'M_MAHALLE'
        DataSource = dsrcMUSTERI
        Enabled = False
        TabOrder = 4
      end
      object MALBED_Edit: TDBEdit
        Left = 472
        Top = 16
        Width = 137
        Height = 21
        DataField = 'MAL_BEDELI'
        DataSource = dsrcMUSTERI
        Enabled = False
        TabOrder = 10
      end
      object TAKSIT_Edit: TDBEdit
        Left = 472
        Top = 40
        Width = 137
        Height = 21
        DataField = 'AYLIK_TAKSIT'
        DataSource = dsrcMUSTERI
        Enabled = False
        TabOrder = 11
      end
      object ODENEN_Edit: TDBEdit
        Left = 472
        Top = 64
        Width = 137
        Height = 21
        DataField = 'ODENEN_TUTAR'
        DataSource = dsrcMUSTERI
        Enabled = False
        TabOrder = 12
      end
      object KALAN_Edit: TDBEdit
        Left = 472
        Top = 88
        Width = 137
        Height = 21
        DataField = 'KALAN_BORC'
        DataSource = dsrcMUSTERI
        Enabled = False
        TabOrder = 13
      end
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 160
      Width = 617
      Height = 249
      DataSource = dsrcODEME
      PopupMenu = PopupMenu1
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnColExit = DBGrid1ColExit
      OnKeyDown = DBGrid1KeyDown
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'SATICI'
          Title.Alignment = taCenter
          Title.Caption = 'Tahsilatçý'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MNO'
          Title.Alignment = taCenter
          Title.Caption = 'Müþteri No'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MADI'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Adý'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MSOYADI'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Soyadý'
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ODEME_TARIHI'
          Title.Alignment = taCenter
          Title.Caption = 'Tarih'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ODEME_TUTARI'
          Title.Alignment = taCenter
          Title.Caption = 'Tutar'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAKIYE'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Bakiye'
          Width = 90
          Visible = True
        end>
    end
  end
  object dsrcODEME: TDataSource
    DataSet = tblODEME
    Left = 640
    Top = 384
  end
  object tblODEME: TTable
    Active = True
    AfterInsert = tblODEMEAfterInsert
    AfterPost = tblODEMEAfterPost
    DatabaseName = 'BM'
    TableName = 'ODEME.db'
    Left = 640
    Top = 352
    object tblODEMEOTOMATIK_SAYI: TAutoIncField
      FieldName = 'OTOMATIK_SAYI'
      ReadOnly = True
    end
    object tblODEMEMNO: TStringField
      FieldName = 'MNO'
      Size = 15
    end
    object tblODEMESATICI: TStringField
      FieldName = 'SATICI'
      Required = True
      Size = 25
    end
    object tblODEMEACIKLAMA: TMemoField
      FieldName = 'ACIKLAMA'
      BlobType = ftMemo
      Size = 100
    end
    object tblODEMEODEME_TARIHI: TDateField
      FieldName = 'ODEME_TARIHI'
      EditMask = '##.##.####;1;_'
    end
    object tblODEMEODEME_TUTARI: TCurrencyField
      FieldName = 'ODEME_TUTARI'
    end
    object tblODEMEBAKIYE: TCurrencyField
      FieldName = 'BAKIYE'
    end
    object tblODEMEMADI: TStringField
      FieldName = 'MADI'
      Size = 25
    end
    object tblODEMEMSOYADI: TStringField
      FieldName = 'MSOYADI'
      Size = 25
    end
    object tblODEMEONAY: TBooleanField
      FieldName = 'ONAY'
    end
    object tblODEMETAKSIT_NO: TIntegerField
      FieldName = 'TAKSIT_NO'
    end
  end
  object querySATICI: TQuery
    Active = True
    DatabaseName = 'BM'
    SQL.Strings = (
      'SELECT DISTINCT * FROM SATICI')
    Left = 704
    Top = 352
    object querySATICIISIMKISALTMASI: TStringField
      FieldName = 'ISIM KISALTMASI'
      Size = 10
    end
    object querySATICIISIM: TStringField
      FieldName = 'ISIM'
      Size = 25
    end
  end
  object dsrcSATICI: TDataSource
    DataSet = querySATICI
    Left = 704
    Top = 384
  end
  object PopupMenu1: TPopupMenu
    Left = 672
    Top = 256
    object Ekle1: TMenuItem
      Bitmap.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888888888888888888800000000000888880FFFFFFFFF0888880FFFFFFFFF
        0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF
        0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFF0000888880FFFFFF0F0
        8888880FFFFFF008888888000000008888888888888888888888}
      Caption = 'Ekle'
      OnClick = Ekle1Click
    end
    object Sil1: TMenuItem
      Bitmap.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888808888888888088800088888888888880000888888
        8088888000888888088888880008888008888888800088008888888888000008
        8888888888800088888888888800000888888888800088008888888000088880
        0888880000888888008888000888888888088888888888888888}
      Caption = 'Sil'
      OnClick = Sil1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object MteriListesi1: TMenuItem
      Bitmap.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00000000707070707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000609F
        CF30609F000000707070707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000609FCF609FCF609F
        CF30609F30609F000000707070707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000000000609FCF609FCF609FCF609FCF609F
        CF30609F30609F30609F000000707070707070FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000000000609FCF609FCF609FCF609FCF609FCF609FCF609F
        CF30609F30609F30609F30609F000000707070707070FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000000000609FCF609FCF609FCF609FCF9FCFFF9FCFFF9FCFFF609FCF609F
        CF30609F30609F30609F30609F30609F000000707070707070FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        609FCF609FCF609FCF609FCF9FCFFF9FCFFF30609F30609F9FCFFF609FCF609F
        CF30609F30609F30609F30609F30609F30609F000000707070707070FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        609FCF609FCF3060CF609FCF30609F30609F30609F30609F9FCFFF609FCF609F
        CF30609F609FCF30609F30609F30609F30609F30609F000000707070707070FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        609FCF609FCF00306030609F30609F30609F003060003060609FCF609FCF609F
        CF30609F707070609FCF30609F30609F30609F30609F30609F00000070707070
        7070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        609FCF609FCF00306030609F003060003060609FCF609FCF609FCF609FCF9FCF
        FF9FCFFF60606060609F30609F30609F30609F30609F30609F30609F00000070
        7070707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        609FCF609FCF003060003060609FCF609FCF609FCF609FCF9FCFFF9FCFFF7070
        70707070A0A0A03030309FCFFF30609F30609F30609F30609F30609F30609F00
        0000707070707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        609FCF609FCF609FCF609FCF609FCF609FCF9FCFFF9FCFFF707070707070A0A0
        A0A0A0A0DFDFDF3030300000009FCFFF30609F30609F30609F30609F30609F30
        609F000000707070707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        609FCF609FCF609FCF609FCF9FCFFF9FCFFF707070707070A0A0A0A0A0A0CFCF
        CFCFCFCFDFDFDF5050500000007070709FCFFF30609F30609F30609F30609F30
        609F30609F000000707070707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        609FCF609FCF9FCFFF9FCFFF707070707070A0A0A0A0A0A0CFCFCFCFCFCFDFDF
        DFDFDFDFDFDFDF5050500000007070700000009FCFFF30609F30609F30609F30
        609F30609F30609F000000707070707070FFFFFFFFFFFFFFFFFFFFFFFF000000
        9FCFFF9FCFFF202020707070A0A0A0A0A0A0CFCFCFCFCFCFDFDFDFDFDFDFDFDF
        DFDFDFDFFFFFFF505050000000A0A0A00000007070709FCFFF30609F30609F30
        609F30609F30609F30609F000000707070707070FFFFFFFFFFFFFFFFFF000000
        9FCFFF003060202020A0A0A0CFCFCFCFCFCFDFDFDFDFDFDFDFDFDFDFDFDFFFFF
        FFFFFFFF404040606060000000A0A0A00000007070700000009FCFFF30609F30
        609F30609F30609F30609F30609F000000707070FFFFFFFFFFFFFFFFFFFFFFFF
        0000009FCFFF202020FFFFFFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFFFFF4040
        40404040DFDFDFF0FFFF000000A0A0A0000000A0A0A00000007070709FCFFF30
        609F30609F30609F30609F30609F000000707070FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000202020FFFFFFDFDFDFDFDFDFFFFFFFFFFFFF404040404040DFDF
        DFDFDFDFFFFFFFA0A0A0000000DFDFDF000000A0A0A00000007070700000009F
        CFFF30609F30609F30609F30609F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF202020FFFFFFFFFFFFFFFFFF404040404040DFDFDFDFDFDFFFFF
        FFFFFFFF4040409F9F9FDFDFDFDFDFDF000000A0A0A0000000A0A0A000000070
        70709FCFFF30609F30609F30609F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF202020FFFFFF404040404040DFDFDFDFDFDFFFFFFFFFFFFF4040
        40404040DFDFDFDFDFDFDFDFDF404040000000DFDFDF000000A0A0A000000070
        70700000009FCFFF30609F30609F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF202020202020202020DFDFDFFFFFFFFFFFFF404040404040DFDF
        DFDFDFDFDFDFDFA0A0A0404040DFDFDFDFDFDFDFDFDF000000A0A0A0000000A0
        A0A00000000030609FCFFF30609F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF202020FFFFFF404040303030DFDFDFDFDFDFDFDF
        DFDFDFDF4040409F9F9FDFDFDFDFDFDFDFDFDF404040000000DFDFDF000000A0
        A0A00000000030600030609FCFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF202020202020202020F0FFFFDFDFDFDFDFDF4040
        40404040DFDFDFDFDFDFDFDFDF404040404040DFDFDFDFDFDFDFDFDF000000A0
        A0A00000000030609FCFFF9FCFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020206060603030309F9F9FDFDF
        DFDFDFDFA0A0A09F9F9FA0A0A0DFDFDFDFDFDFA0A0A09F9F9FA0A0A0606060DF
        DFDF00000030609F707070707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF101010F0FFFF4040
        40404040DFDFDFDFDFDFDFDFDF404040404040DFDFDFDFDFDFDFDFDFDFDFDF40
        4040000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020200000001010
        10DFDFDFDFDFDFA0A0A0404040DFDFDFDFDFDFDFDFDFDFDFDF404040404040FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020
        20F0FFFF4040409F9F9FDFDFDFDFDFDFDFDFDF404040404040FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2020
        20000000101010DFDFDFDFDFDF404040404040FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF202020A0A0A0404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF202020707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Caption = 'Müþteri Listesi'
      OnClick = MteriListesi1Click
    end
  end
  object queryTAKSIT: TQuery
    Active = True
    DatabaseName = 'BM'
    SQL.Strings = (
      
        'SELECT SUM(TAKSIT_TUTARI)TAKSIT_TUTARI, SUM(ODEME_TUTARI)ODEME_T' +
        'UTARI, SUM(KALAN_BAKIYE)KALAN_BAKIYE FROM TAKSIT'
      'WHERE (AY_YIL=:AY_YIL AND MUSTERI_KODU=:M_NO)')
    Left = 672
    Top = 320
    ParamData = <
      item
        DataType = ftString
        Name = 'AY_YIL'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'M_NO'
        ParamType = ptUnknown
      end>
    object queryTAKSITODEME_TUTARI: TCurrencyField
      FieldName = 'ODEME_TUTARI'
      Origin = 'BM."TAKSIT.DB".ODEME_TUTARI'
    end
    object queryTAKSITKALAN_BAKIYE: TCurrencyField
      FieldName = 'KALAN_BAKIYE'
      Origin = 'BM."TAKSIT.DB".KALAN_BAKIYE'
    end
    object queryTAKSITTAKSIT_TUTARI: TCurrencyField
      FieldName = 'TAKSIT_TUTARI'
      Origin = 'BM."TAKSIT.DB".TAKSIT_TUTARI'
    end
  end
  object queryMUSTERITAKSIT: TQuery
    Active = True
    DatabaseName = 'BM'
    SQL.Strings = (
      'SELECT VADE_TARIHI,  '
      'SUM(TAKSIT_TUTARI)TAKSIT_TUTARI, '
      'SUM(ODEME_TUTARI)ODEME_TUTARI,'
      'SUM(KALAN_BAKIYE)KALAN_BAKIYE FROM TAKSIT'
      'WHERE MUSTERI_KODU=:MUSTERI_NO'
      'GROUP BY VADE_TARIHI')
    Left = 672
    Top = 288
    ParamData = <
      item
        DataType = ftString
        Name = 'MUSTERI_NO'
        ParamType = ptUnknown
      end>
    object queryMUSTERITAKSITVADE_TARIHI: TDateField
      FieldName = 'VADE_TARIHI'
      Origin = 'BM."TAKSIT.DB".VADE_TARIHI'
    end
    object queryMUSTERITAKSITTAKSIT_TUTARI: TCurrencyField
      FieldName = 'TAKSIT_TUTARI'
      Origin = 'BM."TAKSIT.DB".TAKSIT_TUTARI'
    end
    object queryMUSTERITAKSITODEME_TUTARI: TCurrencyField
      FieldName = 'ODEME_TUTARI'
      Origin = 'BM."TAKSIT.DB".ODEME_TUTARI'
    end
    object queryMUSTERITAKSITKALAN_BAKIYE: TCurrencyField
      FieldName = 'KALAN_BAKIYE'
      Origin = 'BM."TAKSIT.DB".KALAN_BAKIYE'
    end
  end
  object querySATIS: TQuery
    Active = True
    DatabaseName = 'BM'
    SQL.Strings = (
      
        'SELECT SUM(PESINAT)PESINAT, SUM(MAL_BEDELI)MAL_BEDELI FROM STOKH' +
        'AR'
      'WHERE (MUSTERI_NO=:M_NO AND HAREKET_TURU = FALSE)')
    Left = 704
    Top = 320
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
  object dsrcMUSTERI: TDataSource
    DataSet = tblMUSTERI
    Left = 672
    Top = 384
  end
  object tblMUSTERI: TTable
    Active = True
    DatabaseName = 'BM'
    TableName = 'MUSTERI.db'
    Left = 672
    Top = 352
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
      Size = 25
    end
    object tblMUSTERIM_CEPTEL: TStringField
      FieldName = 'M_CEPTEL'
      Size = 25
    end
    object tblMUSTERIM_ISTEL1: TStringField
      FieldName = 'M_ISTEL1'
      Size = 25
    end
    object tblMUSTERIM_ISTEL2: TStringField
      FieldName = 'M_ISTEL2'
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
      Size = 25
    end
    object tblMUSTERIK_CEPTEL: TStringField
      FieldName = 'K_CEPTEL'
      Size = 25
    end
    object tblMUSTERIK_ISTEL1: TStringField
      FieldName = 'K_ISTEL1'
      Size = 25
    end
    object tblMUSTERIK_ISTEL2: TStringField
      FieldName = 'K_ISTEL2'
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
      FieldName = 'SON_TAKSIT_TARIHI'
    end
  end
  object queryTAKSITHAR: TQuery
    Active = True
    DatabaseName = 'BM'
    SQL.Strings = (
      'SELECT * FROM TAKSIT'
      'WHERE (AY_YIL=:AY_YIL AND MUSTERI_KODU=:M_NO)')
    Left = 704
    Top = 288
    ParamData = <
      item
        DataType = ftString
        Name = 'AY_YIL'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'M_NO'
        ParamType = ptUnknown
      end>
    object queryTAKSITHAROTOMATIK_SAYI: TIntegerField
      FieldName = 'OTOMATIK_SAYI'
      Origin = 'BM."TAKSIT.DB".OTOMATIK_SAYI'
    end
    object queryTAKSITHARVADE_TARIHI: TDateField
      FieldName = 'VADE_TARIHI'
      Origin = 'BM."TAKSIT.DB".VADE_TARIHI'
    end
    object queryTAKSITHARTAKSIT_TUTARI: TCurrencyField
      FieldName = 'TAKSIT_TUTARI'
      Origin = 'BM."TAKSIT.DB".TAKSIT_TUTARI'
    end
    object queryTAKSITHARODEME_TARIHI: TDateField
      FieldName = 'ODEME_TARIHI'
      Origin = 'BM."TAKSIT.DB".ODEME_TARIHI'
    end
    object queryTAKSITHARODEME_TUTARI: TCurrencyField
      FieldName = 'ODEME_TUTARI'
      Origin = 'BM."TAKSIT.DB".ODEME_TUTARI'
    end
    object queryTAKSITHARKALAN_BAKIYE: TCurrencyField
      FieldName = 'KALAN_BAKIYE'
      Origin = 'BM."TAKSIT.DB".KALAN_BAKIYE'
    end
    object queryTAKSITHARODEME_FISI: TFloatField
      FieldName = 'ODEME_FISI'
      Origin = 'BM."TAKSIT.DB".ODEME_FISI'
    end
    object queryTAKSITHARMUSTERI_KODU: TStringField
      FieldName = 'MUSTERI_KODU'
      Origin = 'BM."TAKSIT.DB".MUSTERI_KODU'
      Size = 15
    end
    object queryTAKSITHARAY_YIL: TStringField
      FieldName = 'AY_YIL'
      Origin = 'BM."TAKSIT.DB".AY_YIL'
      Size = 10
    end
    object queryTAKSITHARSATIS_FISI: TIntegerField
      FieldName = 'SATIS_FISI'
      Origin = 'BM."TAKSIT.DB".SATIS_FISI'
    end
    object queryTAKSITHARTAKSIT_TURU: TStringField
      FieldName = 'TAKSIT_TURU'
      Origin = 'BM."TAKSIT.DB".TAKSIT_TURU'
    end
  end
  object tblTAKSITDEGIS: TTable
    Active = True
    DatabaseName = 'BM'
    TableName = 'TAKSIT.db'
    Left = 640
    Top = 288
    object tblTAKSITDEGISOTOMATIK_SAYI: TAutoIncField
      FieldName = 'OTOMATIK_SAYI'
      ReadOnly = True
    end
    object tblTAKSITDEGISVADE_TARIHI: TDateField
      FieldName = 'VADE_TARIHI'
    end
    object tblTAKSITDEGISTAKSIT_TUTARI: TCurrencyField
      FieldName = 'TAKSIT_TUTARI'
    end
    object tblTAKSITDEGISODEME_TARIHI: TDateField
      FieldName = 'ODEME_TARIHI'
    end
    object tblTAKSITDEGISODEME_TUTARI: TCurrencyField
      FieldName = 'ODEME_TUTARI'
    end
    object tblTAKSITDEGISKALAN_BAKIYE: TCurrencyField
      FieldName = 'KALAN_BAKIYE'
    end
    object tblTAKSITDEGISTAKSIT_TURU: TStringField
      FieldName = 'TAKSIT_TURU'
    end
    object tblTAKSITDEGISODEME_FISI: TFloatField
      FieldName = 'ODEME_FISI'
    end
    object tblTAKSITDEGISMUSTERI_KODU: TStringField
      FieldName = 'MUSTERI_KODU'
      Size = 15
    end
    object tblTAKSITDEGISAY_YIL: TStringField
      FieldName = 'AY_YIL'
      Size = 10
    end
    object tblTAKSITDEGISSATIS_FISI: TIntegerField
      FieldName = 'SATIS_FISI'
    end
  end
  object queryODEMEFISI: TQuery
    Active = True
    DatabaseName = 'BM'
    SQL.Strings = (
      'SELECT * FROM ODEME'
      'WHERE MNO=:MNO')
    Left = 640
    Top = 320
    ParamData = <
      item
        DataType = ftString
        Name = 'MNO'
        ParamType = ptUnknown
      end>
    object queryODEMEFISIOTOMATIK_SAYI: TIntegerField
      FieldName = 'OTOMATIK_SAYI'
      Origin = 'BM."ODEME.DB".OTOMATIK_SAYI'
    end
    object queryODEMEFISIMNO: TStringField
      FieldName = 'MNO'
      Origin = 'BM."ODEME.DB".MNO'
      Size = 15
    end
    object queryODEMEFISISATICI: TStringField
      FieldName = 'SATICI'
      Origin = 'BM."ODEME.DB".SATICI'
      Size = 25
    end
    object queryODEMEFISIACIKLAMA: TMemoField
      FieldName = 'ACIKLAMA'
      Origin = 'BM."ODEME.DB".ACIKLAMA'
      BlobType = ftMemo
      Size = 100
    end
    object queryODEMEFISIODEME_TARIHI: TDateField
      FieldName = 'ODEME_TARIHI'
      Origin = 'BM."ODEME.DB".ODEME_TARIHI'
    end
    object queryODEMEFISIODEME_TUTARI: TCurrencyField
      FieldName = 'ODEME_TUTARI'
      Origin = 'BM."ODEME.DB".ODEME_TUTARI'
    end
    object queryODEMEFISIBAKIYE: TCurrencyField
      FieldName = 'BAKIYE'
      Origin = 'BM."ODEME.DB".BAKIYE'
    end
    object queryODEMEFISIMADI: TStringField
      FieldName = 'MADI'
      Origin = 'BM."ODEME.DB".MADI'
      Size = 25
    end
    object queryODEMEFISIMSOYADI: TStringField
      FieldName = 'MSOYADI'
      Origin = 'BM."ODEME.DB".MSOYADI'
      Size = 25
    end
    object queryODEMEFISIONAY: TBooleanField
      FieldName = 'ONAY'
      Origin = 'BM."ODEME.DB".ONAY'
    end
  end
  object queryTUTAR: TQuery
    Active = True
    DatabaseName = 'BM'
    SQL.Strings = (
      'select * from taksit')
    Left = 640
    Top = 256
    object queryTUTAROTOMATIK_SAYI: TIntegerField
      FieldName = 'OTOMATIK_SAYI'
      Origin = 'BM."TAKSIT.DB".OTOMATIK_SAYI'
    end
    object queryTUTARVADE_TARIHI: TDateField
      FieldName = 'VADE_TARIHI'
      Origin = 'BM."TAKSIT.DB".VADE_TARIHI'
    end
    object queryTUTARTAKSIT_TUTARI: TCurrencyField
      FieldName = 'TAKSIT_TUTARI'
      Origin = 'BM."TAKSIT.DB".TAKSIT_TUTARI'
    end
    object queryTUTARODEME_TARIHI: TDateField
      FieldName = 'ODEME_TARIHI'
      Origin = 'BM."TAKSIT.DB".ODEME_TARIHI'
    end
    object queryTUTARODEME_TUTARI: TCurrencyField
      FieldName = 'ODEME_TUTARI'
      Origin = 'BM."TAKSIT.DB".ODEME_TUTARI'
    end
    object queryTUTARKALAN_BAKIYE: TCurrencyField
      FieldName = 'KALAN_BAKIYE'
      Origin = 'BM."TAKSIT.DB".KALAN_BAKIYE'
    end
    object queryTUTARODEME_FISI: TFloatField
      FieldName = 'ODEME_FISI'
      Origin = 'BM."TAKSIT.DB".ODEME_FISI'
    end
    object queryTUTARSATIS_FISI: TIntegerField
      FieldName = 'SATIS_FISI'
      Origin = 'BM."TAKSIT.DB".SATIS_FISI'
    end
    object queryTUTARMUSTERI_KODU: TStringField
      FieldName = 'MUSTERI_KODU'
      Origin = 'BM."TAKSIT.DB".MUSTERI_KODU'
      Size = 15
    end
    object queryTUTARAY_YIL: TStringField
      FieldName = 'AY_YIL'
      Origin = 'BM."TAKSIT.DB".AY_YIL'
      Size = 10
    end
    object queryTUTARTAKSIT_TURU: TStringField
      FieldName = 'TAKSIT_TURU'
      Origin = 'BM."TAKSIT.DB".TAKSIT_TURU'
    end
  end
  object queryTAKSITLIST: TQuery
    Active = True
    DatabaseName = 'BM'
    SQL.Strings = (
      'SELECT * FROM TAKSIT'
      'WHERE MUSTERI_KODU=:M_NO')
    Left = 704
    Top = 255
    ParamData = <
      item
        DataType = ftString
        Name = 'M_NO'
        ParamType = ptUnknown
      end>
  end
  object queryDEVIRSIL: TQuery
    Active = True
    DatabaseName = 'BM'
    SQL.Strings = (
      'SELECT * FROM TAKSIT')
    Left = 640
    Top = 224
    object queryDEVIRSILOTOMATIK_SAYI: TIntegerField
      FieldName = 'OTOMATIK_SAYI'
      Origin = 'BM."TAKSIT.DB".OTOMATIK_SAYI'
    end
    object queryDEVIRSILVADE_TARIHI: TDateField
      FieldName = 'VADE_TARIHI'
      Origin = 'BM."TAKSIT.DB".VADE_TARIHI'
    end
    object queryDEVIRSILTAKSIT_TUTARI: TCurrencyField
      FieldName = 'TAKSIT_TUTARI'
      Origin = 'BM."TAKSIT.DB".TAKSIT_TUTARI'
    end
    object queryDEVIRSILODEME_TARIHI: TDateField
      FieldName = 'ODEME_TARIHI'
      Origin = 'BM."TAKSIT.DB".ODEME_TARIHI'
    end
    object queryDEVIRSILODEME_TUTARI: TCurrencyField
      FieldName = 'ODEME_TUTARI'
      Origin = 'BM."TAKSIT.DB".ODEME_TUTARI'
    end
    object queryDEVIRSILKALAN_BAKIYE: TCurrencyField
      FieldName = 'KALAN_BAKIYE'
      Origin = 'BM."TAKSIT.DB".KALAN_BAKIYE'
    end
    object queryDEVIRSILODEME_FISI: TFloatField
      FieldName = 'ODEME_FISI'
      Origin = 'BM."TAKSIT.DB".ODEME_FISI'
    end
    object queryDEVIRSILSATIS_FISI: TIntegerField
      FieldName = 'SATIS_FISI'
      Origin = 'BM."TAKSIT.DB".SATIS_FISI'
    end
    object queryDEVIRSILMUSTERI_KODU: TStringField
      FieldName = 'MUSTERI_KODU'
      Origin = 'BM."TAKSIT.DB".MUSTERI_KODU'
      Size = 15
    end
    object queryDEVIRSILAY_YIL: TStringField
      FieldName = 'AY_YIL'
      Origin = 'BM."TAKSIT.DB".AY_YIL'
      Size = 10
    end
    object queryDEVIRSILTAKSIT_TURU: TStringField
      FieldName = 'TAKSIT_TURU'
      Origin = 'BM."TAKSIT.DB".TAKSIT_TURU'
    end
  end
end
