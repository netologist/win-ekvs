//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "rapor.h"
#include "mustlistesi.h"
#include "musteritak.h"
#include "odemerap.h"
#include "anamenu.h"
#include "satisrap.h"
#include "taksitrap.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmRaporMenu *frmRaporMenu;
int RaporBayragi;
//---------------------------------------------------------------------------
__fastcall TfrmRaporMenu::TfrmRaporMenu(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmRaporMenu::SpeedButton3Click(TObject *Sender)
{
    Edit_Tarih1->Clear();
    Edit_Tarih2->Clear();
    SpeedButton3->Flat = true;
    SpeedButton4->Flat = false;
    SpeedButton5->Flat = false;
    SpeedButton6->Flat = false;

    Kilit();
    SpeedButton1->Enabled = true;
    SpeedButton2->Enabled = true;

    Edit_MusteriNo1->Color = clWhite;
    Edit_MusteriNo2->Color = clWhite;
    Edit1->Color = clWhite;
    Edit3->Color = clWhite;
    Edit2->Color = clWhite;
    Edit4->Color = clWhite;

    RaporBayragi = 0;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRaporMenu::Kilit(void)
{
    Edit_Tarih1->Enabled = false;
    Edit_Tarih2->Enabled = false;
    Edit_MusteriNo1->Enabled = false;
    Edit_MusteriNo2->Enabled = false;
    SpeedButton1->Enabled = false;
    SpeedButton2->Enabled = false;
    Edit1->Enabled = false;
    Edit3->Enabled = false;
    Edit2->Enabled = false;
    Edit4->Enabled = false;
    combo_Satici1->Enabled = false;
    combo_Satici2->Enabled = false;

    Edit_Tarih1->Color = clGray;
    Edit_Tarih2->Color = clGray;
    Edit_MusteriNo1->Color = clGray;
    Edit_MusteriNo2->Color = clGray;
    Edit1->Color = clGray;
    Edit3->Color = clGray;
    Edit2->Color = clGray;
    Edit4->Color = clGray;
    combo_Satici1->Color = clGray;
    combo_Satici2->Color = clGray;
}

void __fastcall TfrmRaporMenu::TaksitRaporSorgusu(void)
{
    frmTaksitRaporu->queryTAKSIT->Close();
    frmTaksitRaporu->queryTAKSIT->ParamByName("TARIH1")->AsDateTime =
        StrToDate(Edit_Tarih1->Text);
    frmTaksitRaporu->queryTAKSIT->ParamByName("TARIH2")->AsDateTime =
        StrToDate(Edit_Tarih2->Text);
    frmTaksitRaporu->queryTAKSIT->ParamByName("MNO1")->AsString =
        Edit_MusteriNo1->Text;
    frmTaksitRaporu->queryTAKSIT->ParamByName("MNO2")->AsString =
        Edit_MusteriNo2->Text;
    frmTaksitRaporu->queryTAKSIT->Open();

    frmTaksitRaporu->queryMUSTERI->Close();
    frmTaksitRaporu->queryMUSTERI->Open();
    frmTaksitRaporu->queryTUTAR->Close();
    frmTaksitRaporu->queryTUTAR->Open();
}

void __fastcall TfrmRaporMenu::TahsilatRaporSorgusu(void)
{
    frmOdemeRaporu->queryODEME->Close();
    frmOdemeRaporu->queryODEME->ParamByName("TARIH1")->AsDateTime =
        StrToDate(Edit_Tarih1->Text);
    frmOdemeRaporu->queryODEME->ParamByName("TARIH2")->AsDateTime =
        StrToDate(Edit_Tarih2->Text);
    frmOdemeRaporu->queryODEME->ParamByName("MNO1")->AsString =
        Edit_MusteriNo1->Text;
    frmOdemeRaporu->queryODEME->ParamByName("MNO2")->AsString =
        Edit_MusteriNo2->Text;
    frmOdemeRaporu->queryODEME->ParamByName("SATICI1")->AsString =
        combo_Satici1->Text;
    frmOdemeRaporu->queryODEME->ParamByName("SATICI2")->AsString =
        combo_Satici2->Text;
    frmOdemeRaporu->queryODEME->Open();
}
void __fastcall TfrmRaporMenu::SatisRaporSorgusu(void)
{
    frmSatisRaporu->querySATIS->Close();
    frmSatisRaporu->querySATIS->ParamByName("TARIH1")->AsDateTime =
        StrToDate(Edit_Tarih1->Text);
    frmSatisRaporu->querySATIS->ParamByName("TARIH2")->AsDateTime =
        StrToDate(Edit_Tarih2->Text);
    frmSatisRaporu->querySATIS->ParamByName("MNO1")->AsString =
        Edit_MusteriNo1->Text;
    frmSatisRaporu->querySATIS->ParamByName("MNO2")->AsString =
        Edit_MusteriNo2->Text;
    frmSatisRaporu->querySATIS->ParamByName("SATICI1")->AsString =
        combo_Satici1->Text;
    frmSatisRaporu->querySATIS->ParamByName("SATICI2")->AsString =
        combo_Satici2->Text;
    frmSatisRaporu->querySATIS->Open();
}

void __fastcall TfrmRaporMenu::MusteriRaporSorgusu(void)
{
    frmMusteriTaksitRaporu->queryMUSTERI->Close();
    frmMusteriTaksitRaporu->queryMUSTERI->ParamByName("M_NO1")->AsString =
        Edit_MusteriNo1->Text;
    frmMusteriTaksitRaporu->queryMUSTERI->ParamByName("M_NO2")->AsString =
        Edit_MusteriNo2->Text;
    frmMusteriTaksitRaporu->queryMUSTERI->Open();
}

void __fastcall TfrmRaporMenu::SpeedButton1Click(TObject *Sender)
{
    frmMusteriListesi->AYAR_Edit->Text = "5";
    frmMusteriListesi->Show();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRaporMenu::SpeedButton2Click(TObject *Sender)
{
    frmMusteriListesi->AYAR_Edit->Text = "6";
    frmMusteriListesi->Show();
}
//---------------------------------------------------------------------------
                           
void __fastcall TfrmRaporMenu::BitBtn3Click(TObject *Sender)
{
    frmMusteriTaksitRaporu->QuickRep1->PrinterSetup();
}
//---------------------------------------------------------------------------

void __fastcall TfrmRaporMenu::BitBtn4Click(TObject *Sender)
{
    switch (RaporBayragi) {
        case 0:
            MusteriRaporSorgusu();
            frmMusteriTaksitRaporu->QuickRep1->Preview(); break;
        case 1:
            SatisRaporSorgusu();
            frmSatisRaporu->QuickRep1->Preview(); break;
        case 2:
            TahsilatRaporSorgusu();
            frmOdemeRaporu->QuickRep1->Preview(); break;
        case 3:
            TaksitRaporSorgusu();
            frmTaksitRaporu->QuickRep1->Preview(); break;
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmRaporMenu::BitBtn1Click(TObject *Sender)
{
    switch (RaporBayragi) {
        case 0:
            MusteriRaporSorgusu();
            frmMusteriTaksitRaporu->QuickRep1->Print(); break;
        case 1:
            SatisRaporSorgusu();
            frmSatisRaporu->QuickRep1->Print(); break;
        case 2:
            TahsilatRaporSorgusu();
            frmOdemeRaporu->QuickRep1->Print(); break;
        case 3:
            TaksitRaporSorgusu();
            frmTaksitRaporu->QuickRep1->Print(); break;
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmRaporMenu::SpeedButton4Click(TObject *Sender)
{
    TDateTime Tarih;
    unsigned short nGun, nAy, nYil;

    SpeedButton3->Flat = false;
    SpeedButton4->Flat = true;
    SpeedButton5->Flat = false;
    SpeedButton6->Flat = false;

    Kilit();
    Edit_Tarih1->Enabled = true;
    Edit_Tarih2->Enabled = true;
    SpeedButton1->Enabled = true;
    SpeedButton2->Enabled = true;
    combo_Satici1->Enabled = true;
    combo_Satici2->Enabled = true;

    Edit_Tarih1->Color = clWhite;
    Edit_Tarih2->Color = clWhite;
    Edit_MusteriNo1->Color = clWhite;
    Edit_MusteriNo2->Color = clWhite;
    Edit1->Color = clWhite;
    Edit3->Color = clWhite;
    Edit2->Color = clWhite;
    Edit4->Color = clWhite;
    combo_Satici1->Color = clWhite;
    combo_Satici2->Color = clWhite;

    Tarih = Tarih.CurrentDate();
    Tarih.DecodeDate(&nYil, &nAy, &nGun);
    Edit_Tarih1->Text = "01.01."+IntToStr(nYil);
    Edit_Tarih2->Text = "31.12."+IntToStr(nYil);

    RaporBayragi = 1;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRaporMenu::SpeedButton5Click(TObject *Sender)
{
    TDateTime Tarih;
    unsigned short nGun, nAy, nYil;

    SpeedButton3->Flat = false;
    SpeedButton4->Flat = false;
    SpeedButton5->Flat = true;
    SpeedButton6->Flat = false;

    Kilit();
    Edit_Tarih1->Enabled = true;
    Edit_Tarih2->Enabled = true;
    SpeedButton1->Enabled = true;
    SpeedButton2->Enabled = true;
    combo_Satici1->Enabled = true;
    combo_Satici2->Enabled = true;

    Edit_Tarih1->Color = clWhite;
    Edit_Tarih2->Color = clWhite;
    Edit_MusteriNo1->Color = clWhite;
    Edit_MusteriNo2->Color = clWhite;
    Edit1->Color = clWhite;
    Edit3->Color = clWhite;
    Edit2->Color = clWhite;
    Edit4->Color = clWhite;
    combo_Satici1->Color = clWhite;
    combo_Satici2->Color = clWhite;

    Tarih = Tarih.CurrentDate();
    Tarih.DecodeDate(&nYil, &nAy, &nGun);
    Edit_Tarih1->Text = "01.01."+IntToStr(nYil);
    Edit_Tarih2->Text = "31.12."+IntToStr(nYil);

    RaporBayragi = 2;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRaporMenu::SpeedButton6Click(TObject *Sender)
{
    TDateTime Tarih;
    unsigned short nGun, nAy, nYil;

    SpeedButton3->Flat = false;
    SpeedButton4->Flat = false;
    SpeedButton5->Flat = false;
    SpeedButton6->Flat = true;

    Kilit();
    Edit_Tarih1->Enabled = true;
    Edit_Tarih2->Enabled = true;
    SpeedButton1->Enabled = true;
    SpeedButton2->Enabled = true;

    Edit_Tarih1->Color = clWhite;
    Edit_Tarih2->Color = clWhite;
    Edit_MusteriNo1->Color = clWhite;
    Edit_MusteriNo2->Color = clWhite;
    Edit1->Color = clWhite;
    Edit3->Color = clWhite;
    Edit2->Color = clWhite;
    Edit4->Color = clWhite;

    Tarih = Tarih.CurrentDate();
    Tarih.DecodeDate(&nYil, &nAy, &nGun);
    Edit_Tarih1->Text = "01.01."+IntToStr(nYil);
    Edit_Tarih2->Text = "31.12."+IntToStr(nYil);

    RaporBayragi = 3;
}
//---------------------------------------------------------------------------

void __fastcall TfrmRaporMenu::FormCreate(TObject *Sender)
{
    SpeedButton3Click(Sender);    
}
//---------------------------------------------------------------------------

void __fastcall TfrmRaporMenu::FormClose(TObject *Sender,
      TCloseAction &Action)
{
    if (Edit5->Text == "0") {
        frmAnaMenu->Show();
        Edit5->Text = "1";
    }
}
//---------------------------------------------------------------------------

