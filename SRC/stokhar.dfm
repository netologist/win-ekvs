object frmStokHareketi: TfrmStokHareketi
  Left = 403
  Top = 318
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Stok Giri�i'
  ClientHeight = 241
  ClientWidth = 345
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
    Width = 345
    Height = 129
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 40
      Width = 66
      Height = 13
      Caption = 'M��terinin Ad�'
    end
    object Label4: TLabel
      Left = 32
      Top = 64
      Width = 43
      Height = 13
      Caption = 'A��klama'
    end
    object Label2: TLabel
      Left = 24
      Top = 16
      Width = 47
      Height = 13
      Caption = 'Fatura No'
    end
    object Label3: TLabel
      Left = 184
      Top = 16
      Width = 59
      Height = 13
      Caption = 'Fatura Tarihi'
    end
    object MADI_Edit: TDBEdit
      Left = 88
      Top = 40
      Width = 249
      Height = 21
      Color = clWhite
      DataField = 'MUSTERI_ADI'
      DataSource = dsrcGIRIS
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnChange = MADI_EditChange
      OnKeyPress = MADI_EditKeyPress
    end
    object ACIKLAMA_Memo: TDBMemo
      Left = 88
      Top = 64
      Width = 249
      Height = 57
      Color = clWhite
      DataField = 'ACIKLAMA'
      DataSource = dsrcGIRIS
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnChange = ACIKLAMA_MemoChange
    end
    object KAYITNO_Edit: TDBEdit
      Left = 88
      Top = 16
      Width = 89
      Height = 21
      Color = clWhite
      DataField = 'KAYIT_NO'
      DataSource = dsrcGIRIS
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = KAYITNO_EditChange
      OnKeyPress = KAYITNO_EditKeyPress
    end
    object TARIH_NO: TDBEdit
      Left = 256
      Top = 16
      Width = 81
      Height = 21
      Color = clWhite
      DataField = 'TARIH'
      DataSource = dsrcGIRIS
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      OnChange = TARIH_NOChange
      OnKeyPress = TARIH_NOKeyPress
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 345
    Height = 29
    Caption = 'ToolBar1'
    Flat = True
    HotImages = ImageList1
    Images = ImageList1
    TabOrder = 1
    object tbtnYENI: TToolButton
      Left = 0
      Top = 0
      Hint = 'Yeni'
      Caption = 'tbtnYENI'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnYENIClick
    end
    object tbtnKAYDET: TToolButton
      Left = 23
      Top = 0
      Hint = 'Kaydet'
      Caption = 'tbtnKAYDET'
      Enabled = False
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnKAYDETClick
    end
    object tbtnSIL: TToolButton
      Left = 46
      Top = 0
      Hint = 'Sil'
      Caption = 'tbtnSIL'
      Enabled = False
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnSILClick
    end
    object ToolButton4: TToolButton
      Left = 69
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object tbtnAC: TToolButton
      Left = 77
      Top = 0
      Hint = 'A�'
      Caption = 'tbtnAC'
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = tbtnACClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 152
    Width = 345
    Height = 89
    TabOrder = 2
    object Label5: TLabel
      Left = 32
      Top = 12
      Width = 40
      Height = 13
      Caption = '�r�n No'
    end
    object Label6: TLabel
      Left = 32
      Top = 36
      Width = 41
      Height = 13
      Caption = '�r�n Ad�'
    end
    object Label7: TLabel
      Left = 48
      Top = 60
      Width = 24
      Height = 13
      Caption = 'Adeti'
    end
    object SpeedButton1: TSpeedButton
      Left = 320
      Top = 11
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888800000888880000080F000888880F00080F000888880F
        0008000000080000000800F000000F00000800F000800F00000800F000800F00
        00088000000000000088880F00080F0008888800000800000888888000888000
        88888880F08880F0888888800088800088888888888888888888}
      OnClick = SpeedButton1Click
    end
    object URUNNO_Edit: TDBEdit
      Left = 88
      Top = 12
      Width = 233
      Height = 21
      Color = clWhite
      DataField = 'URUN_NO'
      DataSource = dsrcGIRIS
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = URUNNO_EditChange
      OnKeyPress = URUNNO_EditKeyPress
    end
    object URUNADI_Edit: TDBEdit
      Left = 88
      Top = 36
      Width = 249
      Height = 21
      Color = clWhite
      DataField = 'URUN_ADI'
      DataSource = dsrcGIRIS
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = URUNADI_EditChange
      OnKeyPress = URUNADI_EditKeyPress
    end
    object MALADEDI_Edit: TDBEdit
      Left = 88
      Top = 60
      Width = 121
      Height = 21
      Color = clWhite
      DataField = 'MAL_ADEDI'
      DataSource = dsrcGIRIS
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnChange = MALADEDI_EditChange
      OnKeyPress = MALADEDI_EditKeyPress
    end
  end
  object ImageList1: TImageList
    Left = 312
    Top = 208
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001001800000000000024
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8ECCDC6000058C140FD07C07400
      92C2643F2CC809182CC078EDCDC6C8ECCDC60000000090EDCDC6000058C140FD
      07C0740092C230ECCDC63FD42FC084ECCDC624ECCDC69CD15E81000000000800
      2CC810FE58C1C094FCBF10D566C12C002A0006000000589AF8BF870100004602
      000064FE840C8F0100008F0100008F010000CF4E000000000000FFFF000000F0
      00000230020040020000510F0000000000000000000000000000000000000000
      000000000000000000000000000000000000F82D4EC7C0D566C1D0D566C10000
      58C1000000000000000000000000000100000001000059C12FC0C0D566C10000
      0000000058C140FD07C0740092C210000000DC3E2CC8000058C101000000F7CA
      00C097020000155501C040FD07C0E06001C034A87CC2802B56C100000000F43E
      2CC800000000F40807C0000058C100010000000092C259C12FC0802B56C10000
      0000000058C140FD07C0740092C214030000283F2CC88E252FC0802B56C10000
      58C140FD07C0740092C2403F2CC87AFC2EC02FC07BF92FC050734EC1000058C1
      68244CC100000000E63D2CC8ABFB2FC0000058C168244CC10000000000000000
      10FE58C1581E67C1063E2CC8A1B82FC001000000681E67C1000058C168244CC1
      00000000681E67C1403E2CC867AB2FC002000000000058C168244CC1403E2CC8
      323E2CC80000000001000000000000000200000083020FAC2FC040FD07C07400
      92C2703E2CC8790C2FC068244CC100000000000058C1000058C101000000F7CA
      00C097020000155501C040FD07C0E06001C00000000000000000000000002828
      44C1B0E207C0000000000100000000000000B83C2CC871000000B0E207C070EF
      CDC6343D2CC8740092C2B0E207C06C71020001000000F86507C0402747C1789D
      42C1765207C071000000402747C170EFCDC6643D2CC8787D42C1A13A00C01538
      00C000000000347542C1F49452C1E13A00C0803B00C0283E2CC8983D2CC870EF
      CDC6943D2CC8740092C2043E2CC800000000470200003C2327C0E2F571003C35
      E003ECF7710090EFCDC6A039410CE7F65DF90200000070EFCDC6D93C00C0603C
      2CC8F83C2CC870EFCDC65C3C2CC8740092C20000000060040060FF0F00E0FDC0
      03C03F6D07C0506D07C0B36C07C028B94AC12BB94AC16A244CC15C4147C1276A
      07C028B94AC168244CC170EFCDC620000000E64907C080734EC110000000E649
      07C070F74AC100000000746A07C0B0E207C0453207C0000000002C0003010600
      02000000000028B94AC100000000000000000000000000000000000000009CD1
      5E8100000000000000000000000028B94AC1FCFFFFFF1C142BC06C6F9BC20100
      0000F7CA00C097020000155501C0A01564C1E06001C05C534EC720C95CC1A015
      64C146020000000000000000000082B90B0000010000F02967C1F02967C1F7CA
      00C097020000915401C0143C2CC8F02967C1603C2CC800000000E06001C03425
      4EC7F02967C1603C2CC8000000000000000024030000603C2CC8606F9BC2606F
      9BC2F7CA00C097020000915401C0543C2CC8603C2CC8603C2CC8740092C2500A
      40C114BF7CC2606F9BC2643C2CC8603C2CC80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7CA00C0F7CA00C097020000AA5301C0603C2CC85022
      67C1F7CA00C097020000AA5301C0870200000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000803F000000000000000000000000000000000000000000000000
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
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
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
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFF0000000000FFFFFF
      800000000000000000808000808000800000000000000000FFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFF0080800000000000
      80800080800080800000000000000000FFFFFF0000000000FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFF00000000000000008080008080000000
      00000000008080000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFFFFFFC001FFFFFFFF
      C0078031EFFD001FC0078031C7FF000FC0078031C3FB0007C0078001E3F70003
      C0078001F1E70001C0078001F8CF0000C0078FF1FC1F001FC0078FF1FE3F001F
      C0078FF1FC1F001FC0078FF1F8CF8FF1C00F8FF1E1E7FFF9C01F8FF5C3F3FF75
      C03F8001C7FDFF8FFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object dsrcGIRIS: TDataSource
    DataSet = tblGIRIS
    Left = 248
    Top = 208
  end
  object tblGIRIS: TTable
    Active = True
    DatabaseName = 'BM'
    TableName = 'STOKHAR.db'
    Left = 280
    Top = 208
    object tblGIRISOTOMATIK_SAYI: TAutoIncField
      FieldName = 'OTOMATIK_SAYI'
      ReadOnly = True
    end
    object tblGIRISHAREKET_TURU: TBooleanField
      FieldName = 'HAREKET_TURU'
    end
    object tblGIRISTARIH: TDateField
      FieldName = 'TARIH'
      EditMask = '##.##.####;1;_'
    end
    object tblGIRISMUSTERI_NO: TStringField
      FieldName = 'MUSTERI_NO'
      Size = 15
    end
    object tblGIRISMUSTERI_ADI: TStringField
      FieldName = 'MUSTERI_ADI'
      Size = 25
    end
    object tblGIRISKAYIT_NO: TStringField
      FieldName = 'KAYIT_NO'
      Size = 15
    end
    object tblGIRISSATICI: TStringField
      FieldName = 'SATICI'
      Size = 25
    end
    object tblGIRISBIRIM_FIYATI: TCurrencyField
      FieldName = 'BIRIM_FIYATI'
    end
    object tblGIRISMAL_ADEDI: TFloatField
      FieldName = 'MAL_ADEDI'
    end
    object tblGIRISILK_TAKSIT_TARIHI: TDateField
      FieldName = 'ILK_TAKSIT_TARIHI'
    end
    object tblGIRISMAL_BEDELI: TCurrencyField
      FieldName = 'MAL_BEDELI'
    end
    object tblGIRISPESINAT: TCurrencyField
      FieldName = 'PESINAT'
    end
    object tblGIRISTAKSIT_SAYISI: TFloatField
      FieldName = 'TAKSIT_SAYISI'
    end
    object tblGIRISTAKSIT_TUTARI: TCurrencyField
      FieldName = 'TAKSIT_TUTARI'
    end
    object tblGIRISKALAN_BORC: TCurrencyField
      FieldName = 'KALAN_BORC'
    end
    object tblGIRISACIKLAMA: TMemoField
      FieldName = 'ACIKLAMA'
      BlobType = ftMemo
      Size = 150
    end
    object tblGIRISURUN_NO: TStringField
      FieldName = 'URUN_NO'
      Size = 15
    end
    object tblGIRISURUN_ADI: TStringField
      FieldName = 'URUN_ADI'
      Size = 25
    end
  end
end