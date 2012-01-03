//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "satis.h"
#include "mustlistesi.h"
#include "odeme.h"
#include "rapor.h"
#include "anamenu.h"
#include "stokliste.h"
#include "satislist.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmSatisFisi *frmSatisFisi;
//---------------------------------------------------------------------------
__fastcall TfrmSatisFisi::TfrmSatisFisi(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::tbtnYENIClick(TObject *Sender)
{
    KayitKontrol();
    Anahtar();
    tblSTOKSATIS->Filtered = false;
    tblSTOKSATIS->Insert();
    tblSTOKSATIS->Edit();
    tblSTOKSATISTARIH->Value = tblSTOKSATISTARIH->Value.CurrentDate();
    tblSTOKSATISILK_TAKSIT_TARIHI->Value = tblSTOKSATISILK_TAKSIT_TARIHI->Value.CurrentDate();
    tbtnKAYDET->Enabled = false;
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::TARIH_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;    
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::SATICI_ComboClick(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;    
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::MNO_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::URUNKODU_EditChange(TObject *Sender)
{
    Hesapla();
    tbtnKAYDET->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::BIRIMFIYATI_EditChange(TObject *Sender)
{
    Hesapla();
    tbtnKAYDET->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::MALADETI_EditChange(TObject *Sender)
{
    Hesapla();
    tbtnKAYDET->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::ILKTAKSITTARIHI_EditChange(TObject *Sender)
{
    Hesapla();
    tbtnKAYDET->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::TOPMALBED_EditChange(TObject *Sender)
{
    Hesapla();
    tbtnKAYDET->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::PESINAT_EditChange(TObject *Sender)
{
    Hesapla();
    tbtnKAYDET->Enabled = true;    
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::TAKSITSAY_EditChange(TObject *Sender)
{
    Hesapla();
    tbtnKAYDET->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::TAKSITTUT_EditChange(TObject *Sender)
{
    Hesapla();
    tbtnKAYDET->Enabled = true;    
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::TOPLAMBORC_EditChange(TObject *Sender)
{
    Hesapla();
    tbtnKAYDET->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::ACIKLAMA_MemoChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;
}
//---------------------------------------------------------------------------


void __fastcall TfrmSatisFisi::TARIH_EditKeyPress(TObject *Sender,
      char &Key)
{
    Hesapla();
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::SATICI_ComboKeyPress(TObject *Sender,
      char &Key)
{
    Hesapla();
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::BIRIMFIYATI_EditKeyPress(TObject *Sender,
      char &Key)
{
    Hesapla();
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::MALADETI_EditKeyPress(TObject *Sender,
      char &Key)
{
    Hesapla();
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::ILKTAKSITTARIHI_EditKeyPress(
      TObject *Sender, char &Key)
{
    Hesapla();
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::PESINAT_EditKeyPress(TObject *Sender,
      char &Key)
{
    Hesapla();
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::TAKSITSAY_EditKeyPress(TObject *Sender,
      char &Key)
{
    Hesapla();
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::SpeedButton2Click(TObject *Sender)
{
    frmMusteriListesi->AYAR_Edit->Text = "1";
    frmMusteriListesi->Show();
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::SpeedButton1Click(TObject *Sender)
{
    frmStokListesi->AYAR_Edit->Text = "1";
    frmStokListesi->Show();
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::Hesapla(void)
{
//------------------ HESAPLAMALAR YAPILIYOR ------------------
    double nPesinat = 0, nToplamBorc = 0,
        nBirimFiyati = 0, nMalBedeli = 0, nAdet = 0;

    if (tblSTOKSATIS->Active == true) {
        nBirimFiyati = tblSTOKSATISBIRIM_FIYATI->Value;
        nPesinat = tblSTOKSATISPESINAT->Value;

        tblSTOKSATIS->Edit();
        if (MALADETI_Edit->Text.Length() != 0) {
            nAdet = StrToFloat(MALADETI_Edit->Text);
            tblSTOKSATISMAL_BEDELI->Value = (nBirimFiyati * nAdet);
            nMalBedeli = tblSTOKSATISMAL_BEDELI->Value;
        }
        tblSTOKSATISKALAN_BORC->Value = (nMalBedeli - nPesinat);
        nToplamBorc = tblSTOKSATISKALAN_BORC->Value;

        if (nToplamBorc != 0 && TAKSITSAY_Edit->Text.Length() != 0) {
            tblSTOKSATISTAKSIT_TUTARI->Value =
                (nToplamBorc / StrToFloat(TAKSITSAY_Edit->Text));
        }
        tblSTOKSATISKAYIT_NO->Value = IntToStr(tblSTOKSATISOTOMATIK_SAYI->Value);
    }
}

void __fastcall TfrmSatisFisi::tbtnKAYDETClick(TObject *Sender)
{
    int nDeger;

    if (SATICI_Combo->Text.Length() == 0) {
        Application->MessageBoxA("Satýcý kýsmýndan satýcý seçiniz ...",
                "Uyarý Mesajý", MB_OK + MB_ICONEXCLAMATION);
    }
    else if (MNO_Edit->Text.Length() == 0) {
        Application->MessageBoxA("Müþteri seçmelisiniz ...",
                "Uyarý Mesajý", MB_OK + MB_ICONEXCLAMATION);
    }
    else if (URUNKODU_Edit->Text.Length() == 0) {
        Application->MessageBoxA("Ürün seçmelisiniz ...",
                "Uyarý Mesajý", MB_OK + MB_ICONEXCLAMATION);
    }
    else if (BIRIMFIYATI_Edit->Text.Length() == 0) {
        Application->MessageBoxA("Birim fiyatý girmelisizin ...",
                "Uyarý Mesajý", MB_OK + MB_ICONEXCLAMATION);
    }
    else if (MALADETI_Edit->Text.Length() == 0) {
        Application->MessageBoxA("Birim fiyatý girmelisizin ...",
                "Uyarý Mesajý", MB_OK + MB_ICONEXCLAMATION);
    }
    else if (TAKSITSAY_Edit->Text.Length() == 0) {
        Application->MessageBoxA("Taksit sayýsýný giriniz ...",
                "Uyarý Mesajý", MB_OK + MB_ICONEXCLAMATION);
    }
    else {
        if (queryKONTROL->RecordCount != 0) {
            Application->MessageBoxA("Taksit baþlangýç tarihi eskilerine göre ayarlanýyor...",
                "Uyarý Mesajý", MB_OK + MB_ICONEXCLAMATION);

            tblSTOKSATIS->Edit();
            tblTAKSIT->Filtered = true;
            tblTAKSIT->Filter = "[MUSTERI_KODU] = '"+tblMUSTERIM_NO->Value+"'";
            tblSTOKSATISILK_TAKSIT_TARIHI->Value =
                TarihiDegistir(tblSTOKSATISILK_TAKSIT_TARIHI->Value,
                    tblTAKSITVADE_TARIHI->Value);
            tblTAKSIT->Filtered = false;
        }
        nDeger = Application->MessageBox("Not: Kaydettikten sonra geri dönemezsiniz.\n"
            "        Taksitler oluþturulacak emin misiniz?", "Uyarý Mesajý",
            MB_YESNO + MB_ICONQUESTION);

        if (nDeger == IDYES) {
            tblSTOKSATIS->Edit();
            tblSTOKSATISHAREKET_TURU->Value = false;
            tblSTOKSATIS->Post();
           // Kayýt numarasýný oluþtur... //
            tblSTOKSATIS->Edit();
            tblSTOKSATISKAYIT_NO->Value = IntToStr(tblSTOKSATISOTOMATIK_SAYI->Value);
            tblSTOKSATIS->Post();
            // Taksit oluþturuluyor //
            TaksitOlustur();
            KaydiKapa();
            PageControl2->ActivePageIndex = 1;
            tbtnKAYDET->Enabled = false;
        }
    }
}
//---------------------------------------------------------------------------
TDateTime __fastcall TfrmSatisFisi::TarihiBul(TDateTime Tarih, int TaksitSayisi)
{
    unsigned short int Yil, Ay, Gun;
    AnsiString TarihYazisi;

    Tarih.DecodeDate(&Yil, &Ay, &Gun);

    Ay += TaksitSayisi;
    if ((Ay % 12) != 0) {
        Yil += (Ay / 12);
        Ay = (Ay % 12);
    }
    else {
        Yil += (Ay / 12) - 1;
        Ay = 12;
    }
    if (Ay == 2 && Gun > 28)
        Gun = 28;
    
    TarihYazisi = IntToStr(Gun) + "." + IntToStr(Ay) + "." + IntToStr(Yil);

    return StrToDate(TarihYazisi);
}

void __fastcall TfrmSatisFisi::TaksitOlustur(void)
{
    unsigned short int Yil, Ay, Gun;
    TDateTime IlkTaksit;

    IlkTaksit = tblSTOKSATISILK_TAKSIT_TARIHI->Value;
    for (int sayac = 0; sayac < tblSTOKSATISTAKSIT_SAYISI->Value; sayac++) {
        tblTAKSIT->Insert();
        tblTAKSIT->Edit();
        tblTAKSITVADE_TARIHI->Value = TarihiBul(IlkTaksit, sayac);
        TarihiBul(IlkTaksit, sayac).DecodeDate(&Yil, &Ay, &Gun);
        tblTAKSITAY_YIL->Value = IntToStr(Ay) + "/" + IntToStr(Yil);
        tblTAKSITTAKSIT_TUTARI->Value = tblSTOKSATISTAKSIT_TUTARI->Value;
        tblTAKSITSATIS_FISI->Value = tblSTOKSATISOTOMATIK_SAYI->Value;
        tblTAKSITMUSTERI_KODU->Value = tblSTOKSATISMUSTERI_NO->Value;
        tblTAKSITKALAN_BAKIYE->Value = tblTAKSITTAKSIT_TUTARI->Value;
        tblTAKSITTAKSIT_TURU->Value = "TAKSIT FISI";
        queryDEVIRKONTROL->Close();
        queryDEVIRKONTROL->ParamByName("MNO")->AsString = tblTAKSITMUSTERI_KODU->Value;
        queryDEVIRKONTROL->ParamByName("AY_YIL")->AsString = tblTAKSITAY_YIL->Value;
        queryDEVIRKONTROL->Open();

        if (queryDEVIRKONTROLTAKSIT_TURU->Value == "DEVIR FISI") {
            tblTAKSITODEME_TUTARI->Value = queryDEVIRKONTROLODEME_TUTARI->Value;
            tblTAKSITKALAN_BAKIYE->Value -= queryDEVIRKONTROLODEME_TUTARI->Value;
            queryDEVIRSIL->SQL->Clear();
            queryDEVIRSIL->SQL->Add("DELETE FROM TAKSIT");
            queryDEVIRSIL->SQL->Add("WHERE (MUSTERI_KODU='"+
                tblTAKSITMUSTERI_KODU->Value+"' AND AY_YIL='"+
                tblTAKSITAY_YIL->Value+"' AND TAKSIT_TURU='DEVIR FISI')");
            queryDEVIRSIL->ExecSQL();
        }
        tblTAKSIT->Post();
        TaksitSifirla(tblTAKSITVADE_TARIHI->Value);
        TaksitDuzenle(tblTAKSITVADE_TARIHI->Value);
    }

    queryTAKSITLISTE->Close();
    queryTAKSITLISTE->ParamByName("ODEME_NO")->AsInteger
        = tblSTOKSATISOTOMATIK_SAYI->Value;
    queryTAKSITLISTE->Open();
}
//---------------------------------------------------------------------------

TDateTime __fastcall TfrmSatisFisi::TarihiDegistir(TDateTime IlkTarih, TDateTime TaksitTarihi)
{
    unsigned short int nYil, nAy, nYeniTarihGunu, nGun;
    AnsiString Tarih;

    TaksitTarihi.DecodeDate(&nYil, &nAy, &nGun);
    nYeniTarihGunu = nGun;
    IlkTarih.DecodeDate(&nYil, &nAy, &nGun);
    Tarih = IntToStr(nYeniTarihGunu)+"."+IntToStr(nAy)+"."+IntToStr(nYil);

    return StrToDate(Tarih);
}
void __fastcall TfrmSatisFisi::KaydiKapa(void)
{
    SpeedButton2->Enabled = false;
    SpeedButton1->Enabled = false;
    TARIH_Edit->Enabled = false;
    SATICI_Combo->Enabled = false;
    BIRIMFIYATI_Edit->Enabled = false;
    MALADETI_Edit->Enabled = false;
    ILKTAKSITTARIHI_Edit->Enabled = false;
    PESINAT_Edit->Enabled = false;
    TAKSITSAY_Edit->Enabled = false;
    ACIKLAMA_Memo->Enabled = false;
    KUTU_Check->Enabled = false;
    PageControl2->ActivePageIndex = 0;
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::Kilit(void)
{
//--------- Tablo Ayarlarý ---------//
    tblSTOKSATIS->Active = false;
    tblMUSTERI->Filtered = false;
    querySATICI->Close();
    queryTAKSITLISTE->Close();
    tblMUSTERI->Close();
    tblTAKSIT->Close();
//---------------------------------//

    SpeedButton2->Enabled = false;
    SpeedButton1->Enabled = false;
    TARIH_Edit->Enabled = false;
    SATICI_Combo->Enabled = false;
    BIRIMFIYATI_Edit->Enabled = false;
    MALADETI_Edit->Enabled = false;
    ILKTAKSITTARIHI_Edit->Enabled = false;
    PESINAT_Edit->Enabled = false;
    TAKSITSAY_Edit->Enabled = false;
    KUTU_Check->Enabled = false;
    ACIKLAMA_Memo->Enabled = false;
    tbtnSIL->Enabled = false;
    tbtnKAYDET->Enabled = false;
    PageControl2->ActivePageIndex = 0;


    KAYITNO_Edit->Color = clGray;
    TARIH_Edit->Color = clGray;
    SATICI_Combo->Color = clGray;
    MNO_Edit->Color = clGray;
    MADI_Edit->Color = clGray;
    MSOYADI_Edit->Color = clGray;
    MBOLGE_Edit->Color = clGray;
    MMAHALLE_Edit->Color = clGray;
    MCADDE_Edit->Color = clGray;
    MSOKAK_Edit->Color = clGray;
    MKAPINO_Edit->Color = clGray;
    M_EVTEL_Edit->Color = clGray;
    MCEPTEL_Edit->Color = clGray;
    URUNKODU_Edit->Color = clGray;
    URUNADI_Edit->Color = clGray;
    BIRIMFIYATI_Edit->Color = clGray;
    MALADETI_Edit->Color = clGray;
    ILKTAKSITTARIHI_Edit->Color = clGray;
    TOPMALBED_Edit->Color = clGray;
    PESINAT_Edit->Color = clGray;
    TAKSITSAY_Edit->Color = clGray;
    TAKSITTUT_Edit->Color = clGray;
    TOPLAMBORC_Edit->Color = clGray;
    DBGrid2->Color = clGray;
    ACIKLAMA_Memo->Color = clGray;
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::Anahtar(void)
{
//--------- Tablo Ayarlarý ---------//
    querySATICI->Open();
    tblTAKSIT->Open();
    queryTAKSITLISTE->Close();
    tblMUSTERI->Close();
    tblSTOKSATIS->Active = true;
    tblMUSTERI->Filtered = false;
//---------------------------------//

    SpeedButton2->Enabled = true;
    SpeedButton1->Enabled = true;
    TARIH_Edit->Enabled = true;
    KUTU_Check->Enabled = true;
    SATICI_Combo->Enabled = true;
    BIRIMFIYATI_Edit->Enabled = true;
    MALADETI_Edit->Enabled = true;
    ILKTAKSITTARIHI_Edit->Enabled = true;
    PESINAT_Edit->Enabled = true;
    TAKSITSAY_Edit->Enabled = true;
    ACIKLAMA_Memo->Enabled = true;
    tbtnSIL->Enabled = true;

    KAYITNO_Edit->Color = clWhite;
    TARIH_Edit->Color = clWhite;
    SATICI_Combo->Color = clWhite;
    MNO_Edit->Color = clWhite;
    MADI_Edit->Color = clWhite;
    MSOYADI_Edit->Color = clWhite;
    MBOLGE_Edit->Color = clWhite;
    MMAHALLE_Edit->Color = clWhite;
    MCADDE_Edit->Color = clWhite;
    MSOKAK_Edit->Color = clWhite;
    MKAPINO_Edit->Color = clWhite;
    M_EVTEL_Edit->Color = clWhite;
    MCEPTEL_Edit->Color = clWhite;
    URUNKODU_Edit->Color = clWhite;
    URUNADI_Edit->Color = clWhite;
    BIRIMFIYATI_Edit->Color = clWhite;
    MALADETI_Edit->Color = clWhite;
    ILKTAKSITTARIHI_Edit->Color = clWhite;
    TOPMALBED_Edit->Color = clWhite;
    PESINAT_Edit->Color = clWhite;
    TAKSITSAY_Edit->Color = clWhite;
    TAKSITTUT_Edit->Color = clWhite;
    TOPLAMBORC_Edit->Color = clWhite;
    DBGrid2->Color = clWhite;
    ACIKLAMA_Memo->Color = clWhite;
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::tbtnACClick(TObject *Sender)
{
    frmSatisListesi->Show();
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::FormClose(TObject *Sender,
      TCloseAction &Action)
{
    KayitKontrol();
    Kilit();
    frmAnaMenu->Show();
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::FormShow(TObject *Sender)
{
    Kilit();
}
//---------------------------------------------------------------------------
void __fastcall TfrmSatisFisi::KayitKontrol(void)
{
    int nDeger;
    TObject *Sender;

    if (tbtnKAYDET->Enabled == true) {
        nDeger = Application->MessageBox("Deðiþiklikler kaydedilsin mi?", "Uyarý mesajý",
            MB_YESNO + MB_ICONQUESTION);

        if (nDeger == IDYES)
            tbtnKAYDETClick(Sender);
        else
            tblSTOKSATIS->Cancel();
    }
}


void __fastcall TfrmSatisFisi::TaksitBakiyeBul(TDateTime Tarih)
{
    unsigned short int Yil, Ay, Gun;

    queryTAKSIT->Close();
    Tarih.DecodeDate(&Yil, &Ay, &Gun);
    queryTAKSIT->ParamByName("M_NO")->AsString = tblMUSTERIM_NO->Value;
    queryTAKSIT->ParamByName("AY_YIL")->AsString
        = IntToStr(Ay)+"/"+IntToStr(Yil);
    queryTAKSIT->Open();
}

bool __fastcall TfrmSatisFisi::OdemeBakiyeBul(TDateTime Tarih)
{
    unsigned short int Yil, Ay, Gun;
    AnsiString Metin1, Metin2;

    nToplamOdemeTutari = 0;
    queryODEMEFISI->Close();
    queryODEMEFISI->ParamByName("MNO")->AsString = tblMUSTERIM_NO->Value;
    queryODEMEFISI->Open();

    queryODEMEFISI->First();
    while (!queryODEMEFISI->Eof) {
        Tarih.DecodeDate(&Yil, &Ay, &Gun);
        Metin1 = IntToStr(Ay)+"/"+IntToStr(Yil);
        queryODEMEFISIODEME_TARIHI->Value.DecodeDate(&Yil, &Ay, &Gun);
        Metin2 = IntToStr(Ay)+"/"+IntToStr(Yil);

        if (Metin1 == Metin2)
            nToplamOdemeTutari += queryODEMEFISIODEME_TUTARI->Value;

        queryODEMEFISI->Next();
    }

    if (nToplamOdemeTutari == 0)
        return false;

    return true;
}

bool __fastcall TfrmSatisFisi::SatisFisiSayisi(void)
{
    querySATIS->Close();
    querySATIS->ParamByName("M_NO")->AsString =
        tblSTOKSATISMUSTERI_NO->Value;
    querySATIS->Open();

    if (querySATIS->RecordCount > 1)
        return true;
    else
        return false;
}
void __fastcall TfrmSatisFisi::TaksitDuzenle(TDateTime Tarih)
{
    int TaksitNosu;
    unsigned short int Yil, Ay, Gun;
    AnsiString AyYil, MusteriNo;

    // Ýlk taksite ait fiþ numarasý buluýnuyor //
    tblTAKSITDEGIS->Open();
    Tarih.DecodeDate(&Yil, &Ay, &Gun);
    MusteriNo = tblMUSTERIM_NO->Value;
    AyYil = IntToStr(Ay)+"/"+IntToStr(Yil);
    queryTAKSITHAR->Close();
    queryTAKSITHAR->ParamByName("AY_YIL")->AsString = AyYil;
    queryTAKSITHAR->ParamByName("M_NO")->AsString = MusteriNo;
    queryTAKSITHAR->Open();
    TaksitNosu = queryTAKSITHAROTOMATIK_SAYI->Value;
    //*****************************************//
    tblTAKSITDEGIS->Filtered = true;
    tblTAKSITDEGIS->Filter = "[OTOMATIK_SAYI] = '"+IntToStr(TaksitNosu)+"'";

    queryTUTAR->SQL->Clear();
    queryTUTAR->SQL->Add("UPDATE TAKSIT");
    queryTUTAR->SQL->Add("SET KALAN_BAKIYE = 0");
    queryTUTAR->SQL->Add("WHERE (AY_YIL='"+AyYil+"' AND MUSTERI_KODU='"
        +MusteriNo+"')");
    queryTUTAR->ExecSQL();

    TaksitBakiyeBul(Tarih);
    OdemeBakiyeBul(Tarih);
    tblTAKSITDEGIS->Edit();
    tblTAKSITDEGISODEME_TUTARI->Value = nToplamOdemeTutari;
    tblTAKSITDEGISKALAN_BAKIYE->Value =
        queryTAKSITTAKSIT_TUTARI->Value - tblTAKSITDEGISODEME_TUTARI->Value;
    tblTAKSITDEGIS->Post();
    tblTAKSITDEGIS->Close();
}

void __fastcall TfrmSatisFisi::TaksitSifirla(TDateTime Tarih)
{
    unsigned short int Yil, Ay, Gun;
    AnsiString Satir1, Satir2, Satir3;
    AnsiString AyYil;

    tblTAKSITDEGIS->Open();
    Tarih.DecodeDate(&Yil, &Ay, &Gun);
    AyYil = IntToStr(Ay)+"/"+IntToStr(Yil);

    Satir1 = "UPDATE TAKSIT";
    Satir2 = "SET ODEME_TUTARI = 0";
    Satir3 = "WHERE (MUSTERI_KODU = '"+tblSTOKSATISMUSTERI_NO->Value+
        "' AND AY_YIL='"+AyYil+"')";
    queryTAKSITDUZEN->SQL->Clear();
    queryTAKSITDUZEN->SQL->Add(Satir1);
    queryTAKSITDUZEN->SQL->Add(Satir2);
    queryTAKSITDUZEN->SQL->Add(Satir3);
    queryTAKSITDUZEN->ExecSQL();

    Satir1 = "UPDATE TAKSIT";
    Satir2 = "SET KALAN_BAKIYE = TAKSIT_TUTARI";
    Satir3 = "WHERE (MUSTERI_KODU = '"+tblSTOKSATISMUSTERI_NO->Value+
        "' AND AY_YIL='"+AyYil+"')";
    queryTAKSITDUZEN->SQL->Clear();
    queryTAKSITDUZEN->SQL->Add(Satir1);
    queryTAKSITDUZEN->SQL->Add(Satir2);
    queryTAKSITDUZEN->SQL->Add(Satir3);
    queryTAKSITDUZEN->ExecSQL();
}

void __fastcall TfrmSatisFisi::tbtnSILClick(TObject *Sender)
{
    int nDeger;

    nDeger = Application->MessageBox("Kaydý silmek son kararýnýz mý?", "Silme onayý",
        MB_YESNO + MB_ICONQUESTION);

    if (nDeger == IDYES) {
        querySATISNOTAKSIT->Close();
        querySATISNOTAKSIT->ParamByName("SATIS_FISI")->AsInteger = tblSTOKSATISOTOMATIK_SAYI->Value;
        querySATISNOTAKSIT->Open();

        querySATISNOTAKSIT->First();
        while (!querySATISNOTAKSIT->Eof) {

            if (OdemeBakiyeBul(querySATISNOTAKSITVADE_TARIHI->Value) == false) {
TAKSITSIL: // Taksit silme iþlemleri için bir döngü oluþturuludu.
                queryTAKSITSIL->SQL->Clear();
                queryTAKSITSIL->SQL->Add("DELETE FROM TAKSIT");
                queryTAKSITSIL->SQL->Add("WHERE OTOMATIK_SAYI="+IntToStr(querySATISNOTAKSITOTOMATIK_SAYI->Value));
                queryTAKSITSIL->ExecSQL();
                TaksitSifirla(querySATISNOTAKSITVADE_TARIHI->Value);
                TaksitDuzenle(querySATISNOTAKSITVADE_TARIHI->Value);
            }
            else {
                queryTAKSITHAR->Close();
                queryTAKSITHAR->ParamByName("M_NO")->AsString = querySATISNOTAKSITMUSTERI_KODU->Value;
                queryTAKSITHAR->ParamByName("AY_YIL")->AsString = querySATISNOTAKSITAY_YIL->Value;
                queryTAKSITHAR->Open();

                if (queryTAKSITHAR->RecordCount > 1)
                    goto TAKSITSIL; // Taksidi  sil.
                else {
                    tblTAKSIT->Insert();
                    tblTAKSIT->Edit();
                    tblTAKSITAY_YIL->Value = querySATISNOTAKSITAY_YIL->Value;
                    tblTAKSITSATIS_FISI->Value = -1;
                    tblTAKSITMUSTERI_KODU->Value = tblSTOKSATISMUSTERI_NO->Value;
                    tblTAKSITVADE_TARIHI->Value = querySATISNOTAKSITVADE_TARIHI->Value;
                    tblTAKSITTAKSIT_TURU->Value = "DEVIR FISI";
                    tblTAKSITODEME_TUTARI->Value = querySATISNOTAKSITODEME_TUTARI->Value;
                    tblTAKSIT->Post();
                    goto TAKSITSIL; // Taksidi  sil.
                }
            }
            //------------------------------------------------------------------
            querySATISNOTAKSIT->Next();
        }
        tblSTOKSATIS->Delete();
        Kilit();
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisFisi::tbtnYAZDIRClick(TObject *Sender)
{
    frmRaporMenu->Show();
}
//---------------------------------------------------------------------------

