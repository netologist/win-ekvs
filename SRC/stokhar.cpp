//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "stokhar.h"
#include "anamenu.h"
#include "stokliste.h"
#include "hareketlist.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmStokHareketi *frmStokHareketi;
//---------------------------------------------------------------------------
__fastcall TfrmStokHareketi::TfrmStokHareketi(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TfrmStokHareketi::SpeedButton1Click(TObject *Sender)
{
    frmStokListesi->AYAR_Edit->Text = "0";
    frmStokListesi->Show();
    frmStokHareketi->Enabled = false;
}
//---------------------------------------------------------------------------


void __fastcall TfrmStokHareketi::tbtnYENIClick(TObject *Sender)
{
    KayitKontrol(); // kaydedilip edilmeyecei ile ilgili ayarlamalar
    Anahtar(); // sistemi aktif et.

    tblGIRIS->Filtered = false;
    tblGIRIS->Insert();
    tblGIRISTARIH->Value = tblGIRISTARIH->Value.CurrentDate();
    tbtnKAYDET->Enabled = false;
}
//---------------------------------------------------------------------------

void __fastcall TfrmStokHareketi::tbtnKAYDETClick(TObject *Sender)
{
    if (KAYITNO_Edit->Text.Length() == 0)
        Application->MessageBoxA("Fatura numarasýný giriniz.",
            "Uyarý Mesajý", MB_OK + MB_ICONEXCLAMATION);
    else if (TARIH_NO->Text.Length() == 0)
        Application->MessageBoxA("Tarihi giriniz.",
            "Uyarý Mesajý", MB_OK + MB_ICONEXCLAMATION);
    else if (MADI_Edit->Text.Length() == 0)
        Application->MessageBoxA("Firma ismini giriniz.",
            "Uyarý Mesajý", MB_OK + MB_ICONEXCLAMATION);
    else if (URUNNO_Edit->Text.Length() == 0)
        Application->MessageBoxA("Yandaki dürbün simgesinden URUN KODU seçin.",
            "Uyarý Mesajý", MB_OK + MB_ICONEXCLAMATION);
    else if (MALADEDI_Edit->Text.Length() == 0)
        Application->MessageBoxA("Ürün ADETÝNÝ girmek zorundasýnýz.",
            "Uyarý Mesajý", MB_OK + MB_ICONEXCLAMATION);
    else {
        tblGIRIS->Edit();
        tblGIRISHAREKET_TURU->Value = true;
        tblGIRIS->Post();
        tbtnKAYDET->Enabled = false;
    }
}
//---------------------------------------------------------------------------
void __fastcall TfrmStokHareketi::tbtnSILClick(TObject *Sender)
{
    int nDeger;

    if (tblGIRIS->RecordCount <= 0)
        Application->MessageBoxA("Silecek bir kayýt kalmadý",
            "Uyarý Mesajý", MB_OK + MB_ICONEXCLAMATION);
    else {
        nDeger = Application->MessageBox("Kaydý silmek son kararýnýz mý?", "Silme onayý",
            MB_YESNO + MB_ICONQUESTION);

        if (nDeger == IDYES) {
            tblGIRIS->Edit();
            tblGIRIS->Delete();
            Kilit();
        }
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmStokHareketi::KAYITNO_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmStokHareketi::TARIH_NOChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;    
}
//---------------------------------------------------------------------------

void __fastcall TfrmStokHareketi::MADI_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;    
}
//---------------------------------------------------------------------------

void __fastcall TfrmStokHareketi::ACIKLAMA_MemoChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;    
}
//---------------------------------------------------------------------------

void __fastcall TfrmStokHareketi::URUNNO_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;    
}
//---------------------------------------------------------------------------

void __fastcall TfrmStokHareketi::URUNADI_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;    
}
//---------------------------------------------------------------------------

void __fastcall TfrmStokHareketi::MALADEDI_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;    
}
//---------------------------------------------------------------------------

void __fastcall TfrmStokHareketi::KAYITNO_EditKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }    
}
//---------------------------------------------------------------------------

void __fastcall TfrmStokHareketi::TARIH_NOKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }    
}
//---------------------------------------------------------------------------

void __fastcall TfrmStokHareketi::MADI_EditKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }    
}
//---------------------------------------------------------------------------


void __fastcall TfrmStokHareketi::URUNNO_EditKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }    
}
//---------------------------------------------------------------------------

void __fastcall TfrmStokHareketi::URUNADI_EditKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }    
}
//---------------------------------------------------------------------------

void __fastcall TfrmStokHareketi::MALADEDI_EditKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }    
}
//---------------------------------------------------------------------------

void __fastcall TfrmStokHareketi::tbtnACClick(TObject *Sender)
{
    frmHareketListesi->Show();
}
//---------------------------------------------------------------------------

void __fastcall TfrmStokHareketi::Kilit(void)
{
    tblGIRIS->Close();

    KAYITNO_Edit->Color = clGray;
    TARIH_NO->Color = clGray;
    MADI_Edit->Color = clGray;
    ACIKLAMA_Memo->Color = clGray;
    URUNNO_Edit->Color = clGray;
    URUNADI_Edit->Color = clGray;
    MALADEDI_Edit->Color = clGray;

    KAYITNO_Edit->Enabled = false;
    TARIH_NO->Enabled = false;
    MADI_Edit->Enabled = false;
    ACIKLAMA_Memo->Enabled = false;
    URUNNO_Edit->Enabled = false;
    URUNADI_Edit->Enabled = false;
    MALADEDI_Edit->Enabled = false;
    SpeedButton1->Enabled = false;
    tbtnKAYDET->Enabled = false;
    tbtnSIL->Enabled = false;
}

void __fastcall TfrmStokHareketi::Anahtar(void)
{
    tblGIRIS->Open();

    KAYITNO_Edit->Color = clWhite;
    TARIH_NO->Color = clWhite;
    MADI_Edit->Color = clWhite;
    ACIKLAMA_Memo->Color = clWhite;
    URUNNO_Edit->Color = clWhite;
    URUNADI_Edit->Color = clWhite;
    MALADEDI_Edit->Color = clWhite;

    KAYITNO_Edit->Enabled = true;
    TARIH_NO->Enabled = true;
    MADI_Edit->Enabled = true;
    ACIKLAMA_Memo->Enabled = true;
    MALADEDI_Edit->Enabled = true;
    SpeedButton1->Enabled = true;
    tbtnSIL->Enabled = true;
}
void __fastcall TfrmStokHareketi::FormClose(TObject *Sender,
      TCloseAction &Action)
{
    KayitKontrol(); // kaydedilip edilmeyecei ile ilgili ayarlamalar
    Kilit();
    frmAnaMenu->Show();    
}
//---------------------------------------------------------------------------
void __fastcall TfrmStokHareketi::KayitKontrol(void)
{
    int nDeger;
    TObject *Sender;

    if (tbtnKAYDET->Enabled == true) {
        nDeger = Application->MessageBox("Deðiþiklikler kaydedilsin mi?", "Uyarý mesajý",
            MB_YESNO + MB_ICONQUESTION);

        if (nDeger == IDYES)
            tbtnKAYDETClick(Sender);
        else
            tblGIRIS->Cancel();
    }
}

void __fastcall TfrmStokHareketi::FormShow(TObject *Sender)
{
    Kilit();    
}
//---------------------------------------------------------------------------

