//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "odeme.h"
#include "anamenu.h"
#include "mustlistesi.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmOdemeFisi *frmOdemeFisi;
float nToplamOdemeTutari;
//---------------------------------------------------------------------------
__fastcall TfrmOdemeFisi::TfrmOdemeFisi(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmOdemeFisi::Ekle1Click(TObject *Sender)
{
    tblODEME->Insert();
}
//---------------------------------------------------------------------------

void __fastcall TfrmOdemeFisi::Sil1Click(TObject *Sender)
{
    AnsiString AyYil, MusteriNo;
    unsigned short Gun, Ay, Yil;
    int nDeger;

    nDeger = Application->MessageBox("Kaydý silmek son kararýnýz mý?", "Silme onayý",
        MB_YESNO + MB_ICONQUESTION);

    if (nDeger == IDYES) {
        if (tblODEME->RecordCount != 0) {
            tblODEME->Edit();
            tblODEMEODEME_TUTARI->Value = 0;
            tblODEME->Post();
            OdemeGuncelle();
            tblODEMEODEME_TARIHI->Value.DecodeDate(&Yil, &Ay, &Gun);
            // Devir Fiþi Silme Ýþlemi Ýçin Parametreler Hazýrlanýyor //
            AyYil = IntToStr(Ay)+"/"+IntToStr(Yil);
            MusteriNo = tblODEMEMNO->Value;
            // ------------------------------------------------------//
            tblODEME->Delete();
            DevirFisiSil(AyYil, MusteriNo);
        }
        else
            tblODEME->Cancel();
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmOdemeFisi::DevirFisiSil(AnsiString AyYil,
        AnsiString MusteriNo)
{
    AnsiString Satir1;
    Satir1 = "WHERE (AY_YIL='"+AyYil+"' AND MUSTERI_KODU='"+MusteriNo+"' AND TAKSIT_TURU='DEVIR FISI' AND ODEME_TUTARI<= 0)";

    queryDEVIRSIL->SQL->Clear();
    queryDEVIRSIL->SQL->Add("DELETE FROM TAKSIT");
    queryDEVIRSIL->SQL->Add(Satir1);
    queryDEVIRSIL->ExecSQL();
}

void __fastcall TfrmOdemeFisi::FormShow(TObject *Sender)
{
    tblODEME->Open();
    tblODEME->Close();
    tblODEME->Open();
    tblMUSTERI->Open();
    querySATICI->Open();
    queryTAKSIT->Open();
    queryTAKSITHAR->Open();
    querySATIS->Open();
    queryMUSTERITAKSIT->Open();

    querySATICI->First();
    while (!querySATICI->Eof) {
        DBGrid1->Columns->Items[0]->PickList->Add(querySATICIISIM->Value);
        querySATICI->Next();
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmOdemeFisi::DBGrid1KeyDown(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
    switch (Key) {
        case VK_DELETE :
                if (DBGrid1->SelectedField->ReadOnly == false) {
                    Key = 0;
                    tblODEME->Edit();
                    DBGrid1->SelectedField->Clear();
                }
                break;
        case VK_UP:
        case VK_DOWN:
            if (tblODEME->Eof == false)
                IslemYap();
            else
                tblODEME->Filtered = false;
            break;
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmOdemeFisi::DBGrid1KeyPress(TObject *Sender, char &Key)
{
    switch (Key) {
        case VK_RETURN :
            Key = 0;
            if (DBGrid1->SelectedIndex != DBGrid1->FieldCount - 1)
                ++DBGrid1->SelectedIndex;
            else {
                DBGrid1->SelectedIndex = 0;
                tblODEME->Post();
                tblODEME->Edit();
                tblODEME->Post();
                IslemYap();
            }
            break;
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmOdemeFisi::tblODEMEAfterInsert(TDataSet *DataSet)
{
    tblODEME->Edit();
    tblODEMEODEME_TARIHI->Value = tblODEMEODEME_TARIHI->Value.CurrentDate();
}
//---------------------------------------------------------------------------

void __fastcall TfrmOdemeFisi::IslemYap(void)
{
    OdemeRaporu();
}

void __fastcall TfrmOdemeFisi::YeniDevirFisi(void)
{
    unsigned short int EskiYil, EskiAy, EskiGun,
        YeniGun, YeniYil, YeniAy;
    AnsiString Tarih;

    tblODEMEODEME_TARIHI->Value.DecodeDate(&EskiYil, &EskiAy, &EskiGun);
    queryTAKSITHARODEME_TARIHI->Value.DecodeDate(&YeniYil, &YeniAy, &YeniGun);

    Tarih = IntToStr(YeniGun)+"."+IntToStr(EskiAy)+"."+IntToStr(EskiYil);
    tblTAKSITDEGIS->Open();
    tblTAKSITDEGIS->Insert();
    tblTAKSITDEGIS->Edit();
    tblTAKSITDEGISMUSTERI_KODU->Value = tblODEMEMNO->Value;
    tblTAKSITDEGISTAKSIT_TURU->Value = "DEVIR FISI";
    tblTAKSITDEGISVADE_TARIHI->Value = StrToDate(Tarih);
    tblTAKSITDEGISAY_YIL->Value = IntToStr(EskiAy)+"/"+IntToStr(EskiYil);
    tblTAKSITDEGIS->Post();
}

void __fastcall TfrmOdemeFisi::OdemeRaporu(void)
{
    int nDeger;

    tblMUSTERI->Filtered = true;
    tblMUSTERI->Filter = "[M_NO] = '"+tblODEMEMNO->Value+"'";

    if (tblMUSTERIM_NO->Value.Length() != 0)
    {
        tblODEME->Edit();
        tblODEMEMADI->Value = tblMUSTERIM_ADI->Value;
        tblODEMEMSOYADI->Value = tblMUSTERIM_SOYADI->Value;

        tblMUSTERI->Edit();
        tblMUSTERIAYLIK_TAKSIT->Value = 0;
        tblMUSTERIODENEN_TUTAR->Value = 0;
        tblMUSTERIKALAN_BORC->Value = 0;
        tblMUSTERIMAL_BEDELI->Value = 0;
        tblMUSTERISON_TAKSIT_TARIHI->Value = StrToDate("01.01.2000");

        queryMUSTERITAKSIT->Close();
        queryMUSTERITAKSIT->ParamByName("MUSTERI_NO")->AsString = tblMUSTERIM_NO->Value;
        queryMUSTERITAKSIT->Open();

        queryMUSTERITAKSIT->First();
        tblMUSTERI->Edit();
        tblMUSTERIAYLIK_TAKSIT->Value = queryMUSTERITAKSITTAKSIT_TUTARI->Value;

        while (queryMUSTERITAKSIT->Eof == false) {
            tblMUSTERISON_TAKSIT_TARIHI->Value = queryMUSTERITAKSITVADE_TARIHI->Value;
            tblMUSTERIODENEN_TUTAR->Value += queryMUSTERITAKSITODEME_TUTARI->Value;
            queryMUSTERITAKSIT->Next();
        }

        querySATIS->Close();
        querySATIS->ParamByName("M_NO")->AsString = tblMUSTERIM_NO->Value;
        querySATIS->Open();
        tblMUSTERIMAL_BEDELI->Value = querySATISMAL_BEDELI->Value;
        tblMUSTERIODENEN_TUTAR->Value += querySATISPESINAT->Value;

        //----------------------------------------------------------------------
        TaksitBakiyeBul(tblODEMEODEME_TARIHI->Value);
        if (queryTAKSITTAKSIT_TUTARI->Value == 0
            && queryTAKSITHARTAKSIT_TURU->Value.Length() == 0) {
            queryTAKSITLIST->Close();
            queryTAKSITLIST->ParamByName("M_NO")->AsString = tblODEMEMNO->Value;
            queryTAKSITLIST->Open();

            if ((queryTAKSITLIST->RecordCount == 0)) {
                Application->MessageBoxA("Bu müþterinin taksidi yok !... ",
                    "Uyarý Mesajý", MB_OK + MB_ICONEXCLAMATION);
                tblODEME->Cancel();
            }
            else {
                nDeger = Application->MessageBox("Müþterinin bu tarihte bir taksidi yok.\n"
                    "Devir fiþi olmadan burada ödeme kaydý giriþi yapamazsýnýz.\n"
                    "Devir fiþi oluþturulsun mu?", "Silme onayý", MB_YESNO + MB_ICONQUESTION);
                if (nDeger == IDYES)
                    YeniDevirFisi();
                else
                    tblODEME->Cancel();
            }
        }
        else {
            tblMUSTERI->Edit();
            tblMUSTERIKALAN_BORC->Value
                = tblMUSTERIMAL_BEDELI->Value - tblMUSTERIODENEN_TUTAR->Value;
            tblMUSTERI->Post();

            tblODEME->Edit();
            tblODEMETAKSIT_NO->Value = TaksitNoBul();
            if (queryTAKSITHARTAKSIT_TURU->Value == "DEVIR FISI")
                tblODEMEBAKIYE->Value = tblMUSTERIKALAN_BORC->Value;
            else
                tblODEMEBAKIYE->Value =
                    queryTAKSITTAKSIT_TUTARI->Value - queryTAKSITODEME_TUTARI->Value;

            tblMUSTERI->Edit();
            tblMUSTERIKALAN_BORC->Value
                = tblMUSTERIMAL_BEDELI->Value - tblMUSTERIODENEN_TUTAR->Value;
            tblMUSTERI->Post();
        }
    }
    else if (tblODEMEMNO->Value.Length() != 0) {
        Application->MessageBoxA("Bu müþterinin kaydý yok !... ",
            "Uyarý Mesajý", MB_OK + MB_ICONEXCLAMATION);
        DBGrid1->SelectedIndex = 1;
        DBGrid1->SelectedField->Clear();
    }
}

void __fastcall TfrmOdemeFisi::TaksitBakiyeBul(TDateTime Tarih)
{
    unsigned short int Yil, Ay, Gun;

    queryTAKSIT->Close();
    Tarih.DecodeDate(&Yil, &Ay, &Gun);
    queryTAKSIT->ParamByName("M_NO")->AsString = tblMUSTERIM_NO->Value;
    queryTAKSIT->ParamByName("AY_YIL")->AsString
        = IntToStr(Ay)+"/"+IntToStr(Yil);
    queryTAKSIT->Open();

    Tarih.DecodeDate(&Yil, &Ay, &Gun);
    queryTAKSITHAR->Close();
    queryTAKSITHAR->ParamByName("AY_YIL")->AsString = IntToStr(Ay)+"/"+IntToStr(Yil);
    queryTAKSITHAR->ParamByName("M_NO")->AsString = tblMUSTERIM_NO->Value;
    queryTAKSITHAR->Open();
}

void __fastcall TfrmOdemeFisi::OdemeBakiyeBul(TDateTime Tarih)
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
}

void __fastcall TfrmOdemeFisi::FormClose(TObject *Sender,
      TCloseAction &Action)
{
    DBGrid1->Columns->Items[0]->PickList->Clear();
    tblODEME->Close();
    tblMUSTERI->Close();
    querySATICI->Close();
    queryTAKSIT->Close();
    queryTAKSITHAR->Close();
    querySATIS->Close();
    queryMUSTERITAKSIT->Close();
    frmAnaMenu->Show();    
}
//---------------------------------------------------------------------------

void __fastcall TfrmOdemeFisi::DBGrid1CellClick(TColumn *Column)
{
    IslemYap();
}
//---------------------------------------------------------------------------
int __fastcall TfrmOdemeFisi::TaksitNoBul(void)
{
    unsigned short int Yil, Ay, Gun;
    AnsiString AyYil, MusteriNo;

    // Ýlk taksite ait fiþ numarasý buluýnuyor //
    tblTAKSITDEGIS->Open();
    tblODEMEODEME_TARIHI->Value.DecodeDate(&Yil, &Ay, &Gun);
    MusteriNo = tblMUSTERIM_NO->Value;
    AyYil = IntToStr(Ay)+"/"+IntToStr(Yil);
    queryTAKSITHAR->Close();
    queryTAKSITHAR->ParamByName("AY_YIL")->AsString = AyYil;
    queryTAKSITHAR->ParamByName("M_NO")->AsString = MusteriNo;
    queryTAKSITHAR->Open();
    //*****************************************//

    return queryTAKSITHAROTOMATIK_SAYI->Value;
}
void __fastcall TfrmOdemeFisi::OdemeGuncelle(void)
{
    int TaksitNosu;
    unsigned short int Yil, Ay, Gun;
    AnsiString AyYil, MusteriNo;

    // Ýlk taksite ait fiþ numarasý buluýnuyor //
    tblTAKSITDEGIS->Open();
    tblODEMEODEME_TARIHI->Value.DecodeDate(&Yil, &Ay, &Gun);
    MusteriNo = tblMUSTERIM_NO->Value;
    AyYil = IntToStr(Ay)+"/"+IntToStr(Yil);

    TaksitNosu = TaksitNoBul();
    tblTAKSITDEGIS->Filtered = true;
    tblTAKSITDEGIS->Filter = "[OTOMATIK_SAYI] = '"+IntToStr(TaksitNosu)+"'";

    queryTUTAR->SQL->Clear();
    queryTUTAR->SQL->Add("UPDATE TAKSIT");
    queryTUTAR->SQL->Add("SET KALAN_BAKIYE = 0");
    queryTUTAR->SQL->Add("WHERE (AY_YIL='"+AyYil+"' AND MUSTERI_KODU='"
        +MusteriNo+"')");
    queryTUTAR->ExecSQL();

    TaksitBakiyeBul(tblODEMEODEME_TARIHI->Value);
    OdemeBakiyeBul(tblODEMEODEME_TARIHI->Value);

    tblTAKSITDEGIS->Edit();
    if (tblTAKSITDEGISTAKSIT_TURU->Value == "DEVIR FISI")
        tblTAKSITDEGISODEME_TUTARI->Value = nToplamOdemeTutari;
    else {
        tblTAKSITDEGISODEME_TUTARI->Value = nToplamOdemeTutari;
        tblTAKSITDEGISKALAN_BAKIYE->Value =
            queryTAKSITTAKSIT_TUTARI->Value - queryTAKSITODEME_TUTARI->Value;
    }
    tblTAKSITDEGIS->Post();
    tblTAKSITDEGIS->Close();
}

void __fastcall TfrmOdemeFisi::DBGrid1ColExit(TObject *Sender)
{
    IslemYap();
}
//---------------------------------------------------------------------------


void __fastcall TfrmOdemeFisi::MteriListesi1Click(TObject *Sender)
{
    frmMusteriListesi->AYAR_Edit->Text = "2";
    frmMusteriListesi->Show();
}
//---------------------------------------------------------------------------

void __fastcall TfrmOdemeFisi::tblODEMEAfterPost(TDataSet *DataSet)
{
    TObject *Sender;

    TaksitBakiyeBul(tblODEMEODEME_TARIHI->Value);
    if (queryTAKSITTAKSIT_TUTARI->Value != 0
        || queryTAKSITHARTAKSIT_TURU->Value == "DEVIR FISI")
        OdemeGuncelle();
}
//---------------------------------------------------------------------------

