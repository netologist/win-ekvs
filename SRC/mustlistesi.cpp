//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "musteri.h"
#include "mustlistesi.h"
#include "satis.h"
#include "rapor.h"
#include "odeme.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmMusteriListesi *frmMusteriListesi;
AnsiString Akpas, KaraListe;
//---------------------------------------------------------------------------
__fastcall TfrmMusteriListesi::TfrmMusteriListesi(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteriListesi::BitBtn2Click(TObject *Sender)
{
    frmMusteriListesi->Close();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteriListesi::Sorgula(void) {
    if (AYAR_Edit->Text == "0") {
        Query1->Close();
        // Burada Ýsim yada Numara sekmesi ayarlanýr.
        Query1->ParamByName("ISIM")->AsString = AnsiUpperCase(Edit1->Text+"%");
        Query1->ParamByName("NO")->AsString = AnsiUpperCase(Edit1->Text+"%");
        // Burada ise AKTÝFLER yada PASÝFLER görülür.
        Query1->ParamByName("AKPAS")->AsString = Akpas;
        // Burada ise KARA LÝSTE AYARLANIR.
        Query1->ParamByName("KARA_LISTE")->AsString = KaraListe;
        Query1->Open();
    }
    else {
        Query1->Close();
        // Burada Ýsim yada Numara sekmesi ayarlanýr.
        Query1->ParamByName("ISIM")->AsString = AnsiUpperCase(Edit1->Text+"%");
        Query1->ParamByName("NO")->AsString = AnsiUpperCase(Edit1->Text+"%");
        // Burada ise AKTÝFLER yada PASÝFLER görülür.
        Query1->ParamByName("AKPAS")->AsString = Akpas;
        // Burada ise KARA LÝSTE AYARLANIR.
        Query1->ParamByName("KARA_LISTE")->AsString = "%";
        Query1->Open();
    }
}
void __fastcall TfrmMusteriListesi::Edit1Change(TObject *Sender)
{
    Sorgula();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteriListesi::CheckBox1Click(TObject *Sender)
{
    Sorgula();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteriListesi::ComboBox1Click(TObject *Sender)
{
    Sorgula();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteriListesi::RadioButton2Click(TObject *Sender)
{
    Sorgula();    
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteriListesi::RadioButton1Click(TObject *Sender)
{
    Sorgula();
}
//---------------------------------------------------------------------------


void __fastcall TfrmMusteriListesi::MusteriSecimi(void)
{
    AnsiString AKTARMA;
    AKTARMA = DBGrid1->Columns->Grid->SelectedField->AsString;

    frmMusteri->tblMUSTERI->Filtered = true;
    frmMusteri->tblMUSTERI->Filter = "[M_NO] ='"+AKTARMA+"'";
    frmMusteri->tblMUSTERI->Edit();
//------------ MÜÞTERÝNÝN BÖLGE ve MAHALLE AYARLARI -----------
    frmMusteri->queryMAHALLE->Close();
    frmMusteri->queryMAHALLE->ParamByName("SEMT")->AsString
        = frmMusteri->MBOLGE_Combo->Text;
    frmMusteri->queryMAHALLE->Open();
//------------- KEFÝLÝN BÖLGE ve MAHALLE AYARLARI -------------
    frmMusteri->queryMAHALLE2->Close();
    frmMusteri->queryMAHALLE2->ParamByName("SEMT")->AsString
        = frmMusteri->KBOLGE_Combo->Text;
    frmMusteri->queryMAHALLE2->Open();
//------------- TAKSIT AYARLARI ILE ILGILI AYARLARI ------------
    frmMusteri->OdemeRaporu();
//----------------------ICON Ayarlarý -------------------------
    frmMusteri->tbtnKLEKLE->Enabled = tbtnKLEKLE->Enabled;
    frmMusteri->tbtnKLCIKAR->Enabled = tbtnKLCIKAR->Enabled;
    frmMusteri->tbtnPASIF->Enabled = tbtnPASIF->Enabled;
    frmMusteri->tbtnAKTIF->Enabled = tbtnAKTIF->Enabled;
    frmMusteri->tbtnKAYDET->Enabled = false;
    frmMusteri->DurumEtiketi();
    if (tbtnKLEKLE->Enabled == true)
        frmMusteri->KLACIKLAMASI_Memo->Enabled = false;
    else
        frmMusteri->KLACIKLAMASI_Memo->Enabled = true;
    frmMusteri->MNO_Edit->Enabled = false;
    frmMusteri->MNO_Edit->Color = cl3DLight;
}

void __fastcall TfrmMusteriListesi::RaporSecimi(void)
{
    AnsiString AKTARMA;
    AKTARMA = DBGrid1->Columns->Grid->SelectedField->AsString;

    if (AYAR_Edit->Text == "5") {
        frmRaporMenu->queryMUSTERI1->Close();
        frmRaporMenu->queryMUSTERI1->ParamByName("M_NO")->AsString = AKTARMA;
        frmRaporMenu->queryMUSTERI1->Open();
        frmRaporMenu->Edit_MusteriNo1->Text = frmRaporMenu->queryMUSTERI1M_NO->Value;
        frmRaporMenu->Edit1->Text = frmRaporMenu->queryMUSTERI1M_ADI->Value;
        frmRaporMenu->Edit2->Text = frmRaporMenu->queryMUSTERI1M_SOYADI->Value;
    }
    else if (AYAR_Edit->Text == "6") {
        frmRaporMenu->queryMUSTERI2->Close();
        frmRaporMenu->queryMUSTERI2->ParamByName("M_NO")->AsString = AKTARMA;
        frmRaporMenu->queryMUSTERI2->Open();
        frmRaporMenu->Edit_MusteriNo2->Text = frmRaporMenu->queryMUSTERI2M_NO->Value;
        frmRaporMenu->Edit3->Text = frmRaporMenu->queryMUSTERI2M_ADI->Value;
        frmRaporMenu->Edit4->Text = frmRaporMenu->queryMUSTERI2M_SOYADI->Value;
    }
}

void __fastcall TfrmMusteriListesi::SatisSecimi(void)
{
    AnsiString AKTARMA;
    AKTARMA = DBGrid1->Columns->Grid->SelectedField->AsString;

    frmSatisFisi->tblMUSTERI->Open();
    frmSatisFisi->tblMUSTERI->Filtered = true;
    frmSatisFisi->tblMUSTERI->Filter = "[M_NO] ='"+AKTARMA+"'";

    frmSatisFisi->tblSTOKSATISMUSTERI_NO->Value = frmSatisFisi->tblMUSTERIM_NO->Value;
    frmSatisFisi->tblSTOKSATISMUSTERI_ADI->Value = frmSatisFisi->tblMUSTERIM_ADI->Value;
    frmSatisFisi->tblSTOKSATISMUSTERI_SOYADI->Value = frmSatisFisi->tblMUSTERIM_SOYADI->Value;

    frmSatisFisi->queryKONTROL->Close();
    frmSatisFisi->queryKONTROL->ParamByName("MUSTERI_NO")->AsString
        = frmSatisFisi->tblSTOKSATISMUSTERI_NO->Value;
    frmSatisFisi->queryKONTROL->Open();

    if (frmSatisFisi->tblMUSTERIKARA_LISTE->Value == "TRUE") {
        Application->MessageBoxA("Bu müþteri kara listede bulunuyor !..",
            "Uyarý Mesajý", MB_OK + MB_ICONEXCLAMATION);
    }
}

void __fastcall TfrmMusteriListesi::OdemeSecimi(void)
{
    AnsiString AKTARMA;
    AKTARMA = DBGrid1->Columns->Grid->SelectedField->AsString;

    frmOdemeFisi->tblODEMEMNO->Value = AKTARMA;
    frmOdemeFisi->IslemYap();
}

void __fastcall TfrmMusteriListesi::DBGrid1CellClick(TColumn *Column)
{
    frmMusteri->Anahtar();
    if (AYAR_Edit->Text == "0")
        MusteriSecimi();
    else if (AYAR_Edit->Text == "1")
        SatisSecimi();
    else if (AYAR_Edit->Text == "2")
        OdemeSecimi();
    else if (AYAR_Edit->Text == "5" || AYAR_Edit->Text == "6")
        RaporSecimi();

    frmMusteriListesi->Close();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteriListesi::FormClose(TObject *Sender,
      TCloseAction &Action)
{
    Sorgula();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteriListesi::tbtnPASIFClick(TObject *Sender)
{
    Akpas = "TRUE";
    tbtnPASIF->Enabled = false;
    tbtnAKTIF->Enabled = true;
    if (AYAR_Edit->Text == "0")
        lblDurumEtiketi->Caption = Durum_Etiketi();
    else
        lblDurumEtiketi->Caption = " ";
    Sorgula();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteriListesi::tbtnAKTIFClick(TObject *Sender)
{
    Akpas = "FALSE";
    tbtnPASIF->Enabled = true;
    tbtnAKTIF->Enabled = false;
    if (AYAR_Edit->Text == "0")
        lblDurumEtiketi->Caption = Durum_Etiketi();
    else
        lblDurumEtiketi->Caption = " ";
    Sorgula();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteriListesi::tbtnKLEKLEClick(TObject *Sender)
{
    KaraListe = "TRUE";
    tbtnKLEKLE->Enabled = false;
    tbtnKLCIKAR->Enabled = true;
    lblDurumEtiketi->Caption = Durum_Etiketi();
    Sorgula();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteriListesi::tbtnKLCIKARClick(TObject *Sender)
{
    KaraListe = "FALSE";
    tbtnKLEKLE->Enabled = true;
    tbtnKLCIKAR->Enabled = false;
    lblDurumEtiketi->Caption = Durum_Etiketi();
    Sorgula();
}
//---------------------------------------------------------------------------

AnsiString __fastcall TfrmMusteriListesi::Durum_Etiketi(void)
{
    AnsiString Durum;

    if (tbtnAKTIF->Enabled == false)
        Durum = "AKTÝF ve ";
    else
        Durum = "PASÝF ve ";

    if (tbtnKLCIKAR->Enabled == false)
        Durum = Durum + "KARA LÝSTEDE OLMAYANLARI LISTELE";
    else
        Durum = Durum + "KARA LÝSTEDE OLANLARI LISTELE";

    return Durum;
}
void __fastcall TfrmMusteriListesi::FormActivate(TObject *Sender)
{
    if (AYAR_Edit->Text == "0") {
        tbtnKLEKLE->Visible = true;
        tbtnKLCIKAR->Visible = true;
        ToolButton1->Visible = true;
        lblDurumEtiketi->Visible = true;
        ToolButton2->Visible = true;
        ToolButton3->Visible = true;
        lblDurumEtiketi->Width = 277;
    }
    else {
        tbtnKLEKLE->Visible = false;
        tbtnKLCIKAR->Visible = false;
        lblDurumEtiketi->Caption = " ";
        lblDurumEtiketi->Width = 322;
    }
    Edit1->Clear();
    Sorgula();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteriListesi::FormShow(TObject *Sender)
{
    tbtnPASIF->Enabled = true;
    tbtnAKTIF->Enabled = false;
    tbtnKLEKLE->Enabled = true;
    tbtnKLCIKAR->Enabled = false;
    Akpas = "FALSE";
    KaraListe = "FALSE";
    lblDurumEtiketi->Caption = Durum_Etiketi();
    Sorgula();
}
//---------------------------------------------------------------------------

