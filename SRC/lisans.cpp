//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "anamenu.h"
#include "lisans.h"
#include "time.h"
#include "dos.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmLisans *frmLisans;
//---------------------------------------------------------------------------
__fastcall TfrmLisans::TfrmLisans(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TfrmLisans::FormClose(TObject *Sender,
      TCloseAction &Action)
{
    frmAnaMenu->Show();
}
//---------------------------------------------------------------------------

void __fastcall TfrmLisans::BitBtn2Click(TObject *Sender)
{
    frmLisans->Close();
}
//---------------------------------------------------------------------------

long __fastcall TfrmLisans::NumaraOlustur(long Carpim)
{
    int Sayac;
    time_t timer;
    struct dfree bos;
    char AdindakiEnSonHarf, SoyadindakiEnSonHarf;
    long BosAlan, ToplamAlan, AdindakiHarfSayisi, SoyadindakiHarfSayisi;

    SoyadindakiHarfSayisi = (long)Edit_Soyadi->Text.Length() + Carpim + 1;
    AdindakiHarfSayisi = (long)Edit_Adi->Text.Length() + Carpim + 1;

    for (Sayac = 0; Sayac < 3; Sayac++) {
		timer = time(NULL);
		timer = random(timer*random(timer)) + Carpim;
	}

    getdfree(3, &bos);
    BosAlan = ( (long) bos.df_avail * (long) bos.df_bsec * (long) bos.df_sclus) + Carpim + 1;
    ToplamAlan = ( (long) bos.df_total * (long) bos.df_bsec * (long) bos.df_sclus ) + Carpim + 1;

    return  (BosAlan * ToplamAlan * timer) *
            (SoyadindakiHarfSayisi * AdindakiHarfSayisi);
}

AnsiString __fastcall TfrmLisans::KilitOlustur(void)
{
    TObject *Sender;
    AnsiString KilitNo1, KilitNo2;
    long OzelKey;
    int Sayi1, Sayi2, Sayac = 0, Bayrak = 0;
    char *Gecici1, *Gecici2, *Format = "###-###",
        *DuzenliKilit1, *DuzenliKilit2;

// Bu iþaretçiler için alan ayrýlýyor....
    DuzenliKilit1 = (char *) malloc(20);
    DuzenliKilit2 = (char *) malloc(20);

// Alýnan alanlarýn içi NULL ile doluyor....
    memset(DuzenliKilit1, 0, 20);
    memset(DuzenliKilit2, 0, 20);

// Oluþturulan numaralar aktarýlýyor...
    Sayi1 = NumaraOlustur( random(1009) * random(69) );
    Sayi2 = NumaraOlustur( random(69) * random(1009) );

// Numaralar char olarak dönüþtürülüyor...
    KilitNo1 = IntToStr(Sayi1);
    KilitNo2 = IntToStr(Sayi2);

    Gecici1 = KilitNo1.c_str();
    Gecici2 = KilitNo2.c_str();

    if (Gecici1[0] == '-') {
        Sayac = 1;
        Bayrak = 1;
    }
    else {
        Sayac = 0;
        Bayrak = 0;
    }
    while (Gecici1[Sayac] != NULL) {
        if (Format[Sayac-Bayrak] == '#')
            DuzenliKilit1[(Sayac-Bayrak)] = Gecici1[Sayac];
        else
            DuzenliKilit1[(Sayac-Bayrak)] = Format[Sayac-Bayrak];
        Sayac++;
    }

    if (Gecici2[0] == '-') {
        Sayac = 1;
        Bayrak = 1;
    }
    else {
        Sayac = 0;
        Bayrak = 0;
    }
    while (Gecici2[Sayac] != NULL) {
        if (Format[Sayac-Bayrak] == '#')
            DuzenliKilit2[Sayac-Bayrak] = Gecici2[Sayac];
        else
            DuzenliKilit2[Sayac-Bayrak] = Format[Sayac-Bayrak];
        Sayac++;
    }

    OzelKey = random(65535);
    while (!(OzelKey > 99 && OzelKey < 1000))
        OzelKey = random(65535);

    KilitNo1 = AnsiString(DuzenliKilit1)+"-"+AnsiString(DuzenliKilit2)
        +"-"+ IntToStr(OzelKey);

    OzelKey = random(65535);
    while (!(OzelKey > 99 && OzelKey < 200))
        OzelKey = random(65535);

    KilitNo1 += "-"+IntToStr(OzelKey);

    free(DuzenliKilit1);
    free(DuzenliKilit2);
    return KilitNo1;
}

void __fastcall TfrmLisans::Edit_AdiChange(TObject *Sender)
{
    labelKilit->Caption = KilitOlustur();
}
//---------------------------------------------------------------------------

void __fastcall TfrmLisans::Edit_SoyadiChange(TObject *Sender)
{
    labelKilit->Caption = KilitOlustur();
}
//---------------------------------------------------------------------------

void __fastcall TfrmLisans::FormCreate(TObject *Sender)
{
    labelKilit->Caption = KilitOlustur();
}
//---------------------------------------------------------------------------

void __fastcall TfrmLisans::BitBtn3Click(TObject *Sender)
{
    if (Edit_Adi->Text.Length() == 0)
        Application->MessageBoxA("Lütfen Kullanýcý Adýný giriniz...",
            "Uyarý Mesajý", MB_OK + MB_ICONEXCLAMATION);

    else if (Edit_Soyadi->Text.Length() == 0)
        Application->MessageBoxA("Lütfen Kullanýcý Soyadýný giriniz...",
            "Uyarý Mesajý", MB_OK + MB_ICONEXCLAMATION);

    else {
        if (BitBtn3->Caption == "Kullanýcý Ýsmini Kilitle") {
            Edit_Adi->Enabled = false;
            Edit_Soyadi->Enabled = false;
            Edit_Adi->Color = cl3DLight;
            Edit_Soyadi->Color = cl3DLight;

            maskAnahtar->Enabled = true;
            maskAnahtar->Color = clWhite;

            BitBtn1->Enabled = true;
            BitBtn3->Caption = "Kullanýcý Ýsmini Aç";
        }
        else {
            Edit_Adi->Enabled = true;
            Edit_Soyadi->Enabled = true;
            Edit_Adi->Color = clWhite;
            Edit_Soyadi->Color = clWhite;
            maskAnahtar->Enabled = false;
            maskAnahtar->Color = cl3DLight;

            BitBtn1->Enabled = false;
            BitBtn3->Caption = "Kullanýcý Ýsmini Kilitle";
        }
    }
}
//---------------------------------------------------------------------------

