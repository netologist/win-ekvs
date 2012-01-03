//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "anamenu.h"
#include "musteri.h"
#include "bolgegiris.h"
#include "stok.h"
#include "satis.h"
#include "odeme.h"
#include "rapor.h"
#include "acilis.h"
#include "lisans.h"
#include "stokhar.h"
#include "satici.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmAnaMenu *frmAnaMenu;
//---------------------------------------------------------------------------
__fastcall TfrmAnaMenu::TfrmAnaMenu(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmAnaMenu::KartGirii1Click(TObject *Sender)
{
    frmAnaMenu->Hide();
    frmMusteri->Show();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAnaMenu::BlgeGirii1Click(TObject *Sender)
{
    frmAnaMenu->Hide();
    frmBolgeGirisi->Show();
}
//---------------------------------------------------------------------------


void __fastcall TfrmAnaMenu::StokKart1Click(TObject *Sender)
{
    frmAnaMenu->Hide();
    frmStok->Show();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAnaMenu::FormClose(TObject *Sender,
      TCloseAction &Action)
{
    frmMusteri->queryBOLGE->Close();
    frmMusteri->queryMAHALLE->Close();
    frmMusteri->tblMUSTERI->Close();
    frmSatisFisi->tblMUSTERI->Close();
    frmSatisFisi->querySATICI->Close();
    frmBolgeGirisi->Table2->Close();
    frmStok->queryCIKIS->Close();
    frmStok->queryGIRIS->Close();
    frmStok->querySTOKLISTE->Close();
    frmStok->tblSTOKANA->Close();
    frmStokHareketi->tblGIRIS->Close();
    frmAcilis->Close();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAnaMenu::StokHareketi1Click(TObject *Sender)
{
    frmAnaMenu->Hide();
    frmStokHareketi->Show();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAnaMenu::StokGirii1Click(TObject *Sender)
{
    frmAnaMenu->Hide();
    frmStok->Show();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAnaMenu::StokHareketi2Click(TObject *Sender)
{
    frmAnaMenu->Hide();
    frmStokHareketi->Show();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAnaMenu::SatcTahsilatGirii1Click(TObject *Sender)
{
    frmAnaMenu->Hide();
    frmSatici->Show();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAnaMenu::SpeedButton1Click(TObject *Sender)
{
    frmAnaMenu->Hide();
    frmMusteri->Show();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAnaMenu::SpeedButton2Click(TObject *Sender)
{
    frmAnaMenu->Hide();
    frmSatisFisi->Show();
}
//---------------------------------------------------------------------------


void __fastcall TfrmAnaMenu::SpeedButton4Click(TObject *Sender)
{
    frmAnaMenu->Hide();
    frmStok->Show();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAnaMenu::SpeedButton3Click(TObject *Sender)
{
    frmAnaMenu->Hide();
    frmOdemeFisi->Show();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAnaMenu::Hakknda1Click(TObject *Sender)
{
    frmAnaMenu->Hide();
    frmLisans->Show();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAnaMenu::TaksitOluturma1Click(TObject *Sender)
{
    frmAnaMenu->Hide();
    frmSatisFisi->Show();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAnaMenu::Taksitdemesi1Click(TObject *Sender)
{
    frmAnaMenu->Hide();
    frmOdemeFisi->Show();
}
//---------------------------------------------------------------------------

void __fastcall TfrmAnaMenu::RAporlar1Click(TObject *Sender)
{
    frmRaporMenu->Edit5->Text = "0";
    frmAnaMenu->Hide();
    frmRaporMenu->Show();
}
//---------------------------------------------------------------------------

