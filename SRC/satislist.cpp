//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "satislist.h"
#include "satis.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmSatisListesi *frmSatisListesi;
//---------------------------------------------------------------------------
__fastcall TfrmSatisListesi::TfrmSatisListesi(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisListesi::Edit1Change(TObject *Sender)
{
    querySATISLIST->Close();
    querySATISLIST->ParamByName("OTOSAYI")->AsString = Edit1->Text + "%";
    querySATISLIST->ParamByName("MNO")->AsString = Edit1->Text + "%";
    querySATISLIST->Open();
}
//---------------------------------------------------------------------------


void __fastcall TfrmSatisListesi::DBGrid1CellClick(TColumn *Column)
{
    frmSatisFisi->Anahtar();
    frmSatisFisi->tblSTOKSATIS->Filtered = true;
    frmSatisFisi->tblSTOKSATIS->Filter = "[OTOMATIK_SAYI] = '" +
        IntToStr(querySATISLISTOTOMATIK_SAYI->Value) + "'";

    frmSatisFisi->tblMUSTERI->Open();
    frmSatisFisi->tblMUSTERI->Filtered = true;
    frmSatisFisi->tblMUSTERI->Filter = "[M_NO] ='"+querySATISLISTMUSTERI_NO->Value+"'";

    frmSatisFisi->queryKONTROL->Close();
    frmSatisFisi->queryKONTROL->ParamByName("MUSTERI_NO")->AsString
        = frmSatisFisi->tblSTOKSATISMUSTERI_NO->Value;
    frmSatisFisi->queryKONTROL->Open();

    frmSatisFisi->queryTAKSITLISTE->Close();
    frmSatisFisi->queryTAKSITLISTE->ParamByName("ODEME_NO")->AsInteger
        = frmSatisFisi->tblSTOKSATISOTOMATIK_SAYI->Value;
    frmSatisFisi->queryTAKSITLISTE->Open();

    frmSatisFisi->KaydiKapa();
    frmSatisFisi->tbtnKAYDET->Enabled = false;                    
    frmSatisListesi->Close();
}
//---------------------------------------------------------------------------

void __fastcall TfrmSatisListesi::FormShow(TObject *Sender)
{
    querySATISLIST->Close();
    querySATISLIST->ParamByName("OTOSAYI")->AsString = Edit1->Text + "%";
    querySATISLIST->ParamByName("MNO")->AsString = Edit1->Text + "%";
    querySATISLIST->Open();
}
//---------------------------------------------------------------------------

