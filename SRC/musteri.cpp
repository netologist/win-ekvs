//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "musteri.h"
#include "rapor.h"
#include "mustlistesi.h"
#include "musteritak.h"
#include "anamenu.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmMusteri *frmMusteri;
int SayfaKontrol;
//---------------------------------------------------------------------------
__fastcall TfrmMusteri::TfrmMusteri(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmMusteri::tbtnACClick(TObject *Sender)
{
    frmMusteriListesi->AYAR_Edit->Text = "0";
    frmMusteriListesi->Show();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::OdemeRaporu(void)
{
    tblMUSTERIAYLIK_TAKSIT->Value = 0;
    tblMUSTERIODENEN_TUTAR->Value = 0;
    tblMUSTERIKALAN_BORC->Value = 0;
    tblMUSTERIMAL_BEDELI->Value = 0;
    tblMUSTERISON_TAKSIT_TARIHI->Value = StrToDate("01.01.1980");

    querySATISFISI->Close();
    querySATISFISI->ParamByName("M_NO")->AsString = tblMUSTERIM_NO->Value;
    querySATISFISI->Open();

    queryODEME->Close();
    queryODEME->ParamByName("M_NO")->AsString = tblMUSTERIM_NO->Value;
    queryODEME->Open();

    queryDEVIR->Close();
    queryDEVIR->ParamByName("MUSTERI_NO")->AsString = tblMUSTERIM_NO->Value;
    queryDEVIR->Open();
    queryDEVIR->First();
    while (queryDEVIR->Eof == false) {
        tblMUSTERIODENEN_TUTAR->Value += queryDEVIRODEME_TUTARI->Value;
        queryDEVIR->Next();
    }

    queryTAKSIT->Close();
    queryTAKSIT->ParamByName("MUSTERI_NO")->AsString = tblMUSTERIM_NO->Value;
    queryTAKSIT->Open();
    queryTAKSIT->First();
    tblMUSTERIAYLIK_TAKSIT->Value = queryTAKSITTAKSIT_TUTARI->Value;
    while (queryTAKSIT->Eof == false) {
        tblMUSTERISON_TAKSIT_TARIHI->Value = queryTAKSITVADE_TARIHI->Value;
        tblMUSTERIODENEN_TUTAR->Value += queryTAKSITODEME_TUTARI->Value;
        queryTAKSIT->Next();
    }

    querySATIS->Close();
    querySATIS->ParamByName("M_NO")->AsString = tblMUSTERIM_NO->Value;
    querySATIS->Open();

    tblMUSTERIMAL_BEDELI->Value = querySATISMAL_BEDELI->Value;
    tblMUSTERIODENEN_TUTAR->Value += querySATISPESINAT->Value;
    tblMUSTERIKALAN_BORC->Value
        = tblMUSTERIMAL_BEDELI->Value - tblMUSTERIODENEN_TUTAR->Value;
}

void __fastcall TfrmMusteri::MBOLGE_ComboClick(TObject *Sender)
{
    queryMAHALLE->Close();
    queryMAHALLE->ParamByName("SEMT")->AsString = MBOLGE_Combo->Text;
    queryMAHALLE->Open();
    tbtnKAYDET->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::KBOLGE_ComboClick(TObject *Sender)
{
    queryMAHALLE2->Close();
    queryMAHALLE2->ParamByName("SEMT")->AsString = KBOLGE_Combo->Text;
    queryMAHALLE2->Open();
    tbtnKAYDET->Enabled = true;
}
//---------------------------------------------------------------------------
void __fastcall TfrmMusteri::Kilit(void)
{
    //----------- Tablolar kapanýyor -----------//
    tblMUSTERI->Close();
    querySATIS->Close();
    queryMAHALLE2->Close();
    queryMAHALLE->Close();
    queryBOLGE->Close();
    queryTAKSIT->Close();
    querySATISFISI->Close();
    queryODEME->Close();
    queryDEVIR->Close();
    //----------- Tablolar kapanýyor -----------//
    DBGrid2->Enabled = false;
    DBGrid3->Enabled = false;
    DBGrid4->Enabled = false;
    MNO_Edit->Enabled = false;
    MADI_Edit->Enabled = false;
    MSOYADI_Edit->Enabled = false;
    MCADDE_Edit->Enabled = false;
    MSOKAK_Edit->Enabled = false;
    MKAPINO_Edit->Enabled = false;
    MBOLGE_Combo->Enabled = false;
    MBOLGE_Combo->Enabled = false;
    MEVTEL_Edit->Enabled = false;
    MCEPTEL_Edit->Enabled = false;
    MISTEL1_Edit->Enabled = false;
    MISTEL2_Edit->Enabled = false;
    KADI_Edit->Enabled = false;
    KSOYADI_Edit->Enabled = false;
    KCADDE_Edit->Enabled = false;
    KSOKAK_Edit->Enabled = false;
    KKAPINO_Edit->Enabled = false;
    KBOLGE_Combo->Enabled = false;
    KMAHALLE_Combo->Enabled = false;
    KEVTEL_Edit->Enabled = false;
    KCEPTEL_Edit->Enabled = false;
    KISTEL1_Edit->Enabled = false;
    KISTEL2_Edit->Enabled = false;
    MMAHALLE_Combo->Enabled = false;
    KLACIKLAMASI_Memo->Enabled = false;
    tbtnKLEKLE->Enabled = false;
    tbtnPASIF->Enabled = false;
    tbtnKAYDET->Enabled = false;
    tbtnSIL->Enabled = false;
    AktifPasifDurumu();
//--------------------------------------------
    DBGrid2->Color = clGray;
    DBGrid3->Color = clGray;
    DBGrid4->Color = clGray;
    MNO_Edit->Color = clGray;
    MADI_Edit->Color = clGray;
    MSOYADI_Edit->Color = clGray;
    MCADDE_Edit->Color = clGray;
    MSOKAK_Edit->Color = clGray;
    MKAPINO_Edit->Color = clGray;
    MBOLGE_Combo->Color = clGray;
    MBOLGE_Combo->Color = clGray;
    MMAHALLE_Combo->Color = clGray;
    MEVTEL_Edit->Color = clGray;
    MCEPTEL_Edit->Color = clGray;
    MISTEL1_Edit->Color = clGray;
    MISTEL2_Edit->Color = clGray;
    KADI_Edit->Color = clGray;
    KSOYADI_Edit->Color = clGray;
    KCADDE_Edit->Color = clGray;
    KSOKAK_Edit->Color = clGray;
    KKAPINO_Edit->Color = clGray;
    KBOLGE_Combo->Color = clGray;
    KMAHALLE_Combo->Color = clGray;
    KEVTEL_Edit->Color = clGray;
    KCEPTEL_Edit->Color = clGray;
    KISTEL1_Edit->Color = clGray;
    KISTEL2_Edit->Color = clGray;
    TOPMALBED_Edit->Color = clGray;
    TAKTUT_Edit->Color = clGray;
    TAKBITTAR_Edit->Color = clGray;
    ODENENTUTAR_Edit->Color = clGray;
    KALANBORC_Edit->Color = clGray;
    DBGrid1->Color = clGray;
    KLACIKLAMASI_Memo->Color = clGray;
}

void __fastcall TfrmMusteri::Anahtar(void)
{
    //----------- Tablolar kapanýyor -----------//
    tblMUSTERI->Open();
    queryMAHALLE2->Open();
    queryMAHALLE->Open();
    queryBOLGE->Open();
    queryTAKSIT->Close();
    queryODEME->Close();
    queryDEVIR->Close();
    querySATISFISI->Close();
    AktifPasifDurumu();
    //----------- Tablolar kapanýyor -----------//
    DBGrid2->Enabled = true;
    DBGrid3->Enabled = true;
    DBGrid4->Enabled = true;
    MNO_Edit->Enabled = true;
    MADI_Edit->Enabled = true;
    MSOYADI_Edit->Enabled = true;
    MCADDE_Edit->Enabled = true;
    MSOKAK_Edit->Enabled = true;
    MKAPINO_Edit->Enabled = true;
    MMAHALLE_Combo->Enabled = true;
    MBOLGE_Combo->Enabled = true;
    MBOLGE_Combo->Enabled = true;
    MEVTEL_Edit->Enabled = true;
    MCEPTEL_Edit->Enabled = true;
    MISTEL1_Edit->Enabled = true;
    MISTEL2_Edit->Enabled = true;
    KADI_Edit->Enabled = true;
    KSOYADI_Edit->Enabled = true;
    KCADDE_Edit->Enabled = true;
    KSOKAK_Edit->Enabled = true;
    KKAPINO_Edit->Enabled = true;
    KBOLGE_Combo->Enabled = true;
    KMAHALLE_Combo->Enabled = true;
    KEVTEL_Edit->Enabled = true;
    KCEPTEL_Edit->Enabled = true;
    KISTEL1_Edit->Enabled = true;
    KISTEL2_Edit->Enabled = true;
    tbtnSIL->Enabled = true;
//--------------------------------------------
    DBGrid2->Color = clWhite;
    DBGrid3->Color = clWhite;
    DBGrid4->Color = clWhite;
    MNO_Edit->Color = clWhite;
    MADI_Edit->Color = clWhite;
    MSOYADI_Edit->Color = clWhite;
    MCADDE_Edit->Color = clWhite;
    MSOKAK_Edit->Color = clWhite;
    MMAHALLE_Combo->Color = clWhite;
    MKAPINO_Edit->Color = clWhite;
    MBOLGE_Combo->Color = clWhite;
    MBOLGE_Combo->Color = clWhite;
    MEVTEL_Edit->Color = clWhite;
    MCEPTEL_Edit->Color = clWhite;
    MISTEL1_Edit->Color = clWhite;
    MISTEL2_Edit->Color = clWhite;
    KADI_Edit->Color = clWhite;
    KSOYADI_Edit->Color = clWhite;
    KCADDE_Edit->Color = clWhite;
    KSOKAK_Edit->Color = clWhite;
    KKAPINO_Edit->Color = clWhite;
    KBOLGE_Combo->Color = clWhite;
    KMAHALLE_Combo->Color = clWhite;
    KEVTEL_Edit->Color = clWhite;
    KCEPTEL_Edit->Color = clWhite;
    KISTEL1_Edit->Color = clWhite;
    KISTEL2_Edit->Color = clWhite;
    TOPMALBED_Edit->Color = clWhite;
    TAKTUT_Edit->Color = clWhite;
    TAKBITTAR_Edit->Color = clWhite;
    ODENENTUTAR_Edit->Color = clWhite;
    KALANBORC_Edit->Color = clWhite;
    KLACIKLAMASI_Memo->Color = clWhite;
    DBGrid1->Color = clWhite;
}

void __fastcall TfrmMusteri::tbtnYENIClick(TObject *Sender)
{
    Anahtar();
//------------------ FILTREYI IPTAL ET --------------------
    tblMUSTERI->Filtered = false;
//------------------- EKLEME ÝÞLERMLERÝ -------------------
    tblMUSTERI->Insert();
//-------------------- Icon Ayarlarý ----------------------
    KLACIKLAMASI_Memo->Enabled = false;
    tbtnKLEKLE->Enabled = true;
    tbtnKLCIKAR->Enabled = false;
    tbtnPASIF->Enabled = true;
    tbtnAKTIF->Enabled = false;
    tbtnKAYDET->Enabled = false;
    DurumEtiketi();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::tbtnSILClick(TObject *Sender)
{
    int nDeger;

    if (tblMUSTERI->RecordCount <= 0)
        Application->MessageBoxA("Silecek bir kayýt kalmadý",
            "Uyarý Mesajý", MB_OK + MB_ICONEXCLAMATION);
    else if (tblMUSTERIKALAN_BORC->Value != 0)
        Application->MessageBoxA("Bu müþteri borç bakiyesi veriyor!!!\n"
            "Bu kaydý silemezsiniz.", "Uyarý Mesajý", MB_OK + MB_ICONEXCLAMATION);
    else {
        nDeger = Application->MessageBox("Kaydý silmek son kararýnýz mý?", "Silme onayý",
            MB_YESNO + MB_ICONQUESTION);

        if (nDeger == IDYES) {
            tblMUSTERI->Delete();
            Kilit();
        }
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::DurumEtiketi(void)
{
    if (tbtnAKTIF->Enabled == false)
        StatusBar->Panels->Items[0]->Text = "AKTIF";
    else
        StatusBar->Panels->Items[0]->Text = "PASÝF";

    if (tbtnKLCIKAR->Enabled != false)
        StatusBar->Panels->Items[1]->Text = "KARA LÝSTEDE";
    else
        StatusBar->Panels->Items[1]->Text = " ";
}

void __fastcall TfrmMusteri::AktifPasifDurumu(void)
{
    queryAKTIF->Close();
    queryAKTIF->Open();
    StatusBar->Panels->Items[3]->Text = IntToStr(queryAKTIF->RecordCount);
    queryPASIF->Close();
    queryPASIF->Open();
    StatusBar->Panels->Items[5]->Text = IntToStr(queryPASIF->RecordCount);
}

void __fastcall TfrmMusteri::tbtnKLEKLEClick(TObject *Sender)
{
    KLACIKLAMASI_Memo->Enabled = true;
    tbtnKLEKLE->Enabled = false;
    tbtnKLCIKAR->Enabled = true;
    tbtnKAYDET->Enabled = true;
    DurumEtiketi();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::tbtnKLCIKARClick(TObject *Sender)
{
    KLACIKLAMASI_Memo->Enabled = false;
    tbtnKLEKLE->Enabled = true;
    tbtnKLCIKAR->Enabled = false;
    tbtnKAYDET->Enabled = true;
    DurumEtiketi();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::tbtnPASIFClick(TObject *Sender)
{
    tbtnPASIF->Enabled = false;
    tbtnAKTIF->Enabled = true;
    tbtnKAYDET->Enabled = true;
    DurumEtiketi();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::tbtnAKTIFClick(TObject *Sender)
{
    tbtnPASIF->Enabled = true;
    tbtnAKTIF->Enabled = false;
    tbtnKAYDET->Enabled = true;
    DurumEtiketi();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::tbtnKAYDETClick(TObject *Sender)
{
    int nKayitKontrol = MNO_Edit->Text.Length();

    if (nKayitKontrol == 0) {
        Application->MessageBoxA("Müþteri numarasýný girmelisiniz!",
            "Uyarý Mesajý", MB_OK + MB_ICONEXCLAMATION);
    }
    else {
        //******** Kayýt Esnasý ayarlamalarý *********//
        tblMUSTERI->Edit();

        if (tbtnKLEKLE->Enabled == true)
            tblMUSTERIKARA_LISTE->Text = "FALSE";
        else
            tblMUSTERIKARA_LISTE->Text = "TRUE";

        if (tbtnPASIF->Enabled == true)
            tblMUSTERIDURUM->Text = "FALSE";
        else
            tblMUSTERIDURUM->Text = "TRUE";
        //********************************************//
        tblMUSTERI->Post();
        AktifPasifDurumu();
        MNO_Edit->Enabled = false;
        MNO_Edit->Color = cl3DLight;
        tbtnKAYDET->Enabled = false;
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::MNO_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::MADI_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::MSOYADI_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::MCADDE_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::MSOKAK_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;    
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::MKAPINO_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::MEVTEL_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::MCEPTEL_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;    
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::MISTEL1_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;    
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::MISTEL2_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;    
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::KADI_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;    
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::KSOYADI_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::KCADDE_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;    
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::KSOKAK_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::KKAPINO_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;    
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::KEVTEL_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::KCEPTEL_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;    
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::KISTEL1_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::KISTEL2_EditChange(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;    
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::KMAHALLE_ComboClick(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::MMAHALLE_ComboClick(TObject *Sender)
{
    tbtnKAYDET->Enabled = true;
}
//---------------------------------------------------------------------------


void __fastcall TfrmMusteri::MNO_EditKeyPress(TObject *Sender, char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::MADI_EditKeyPress(TObject *Sender, char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::MSOYADI_EditKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::MCADDE_EditKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::MSOKAK_EditKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }    
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::MKAPINO_EditKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }    
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::MBOLGE_ComboKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::MMAHALLE_ComboKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::MEVTEL_EditKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }    
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::MCEPTEL_EditKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::MISTEL1_EditKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }    
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::MISTEL2_EditKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }    
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::KADI_EditKeyPress(TObject *Sender, char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }    
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::KSOYADI_EditKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }    
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::KCADDE_EditKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }    
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::KSOKAK_EditKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }    
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::KKAPINO_EditKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }    
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::KBOLGE_ComboKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }    
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::KMAHALLE_ComboKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::KEVTEL_EditKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }    
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::KCEPTEL_EditKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }    
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::KISTEL1_EditKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::KISTEL2_EditKeyPress(TObject *Sender,
      char &Key)
{
    if (Key == Char(VK_RETURN)) {
        Key = 0;
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::FormClose(TObject *Sender,
      TCloseAction &Action)
{
//-------------------- Icon Ayarlarý ----------------------
    Kilit();

    KLACIKLAMASI_Memo->Enabled = false;
    tbtnKLEKLE->Enabled = true;
    tbtnKLCIKAR->Enabled = false;
    tbtnPASIF->Enabled = true;
    tbtnAKTIF->Enabled = false;
    tbtnKAYDET->Enabled = false;
    DurumEtiketi();
    frmAnaMenu->Show();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::FormShow(TObject *Sender)
{
    Kilit();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::tbtnYAZDIRClick(TObject *Sender)
{
    frmRaporMenu->Show();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMusteri::DBGrid1DrawDataCell(TObject *Sender,
      const TRect &Rect, TField *Field, TGridDrawState State)
{
    if (Field->DisplayName == "KALAN_BAKIYE")
        DBGrid1->Canvas->Brush->Color = clGreen;
}
//---------------------------------------------------------------------------


