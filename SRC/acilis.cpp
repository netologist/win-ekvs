//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

USEFORM("anamenu.cpp", frmAnaMenu);
USEFORM("mustlistesi.cpp", frmMusteriListesi);
USEFORM("bolgegiris.cpp", frmBolgeGirisi);
USEFORM("stok.cpp", frmStok);
USEFORM("satis.cpp", frmSatisFisi);
USEFORM("stokhar.cpp", frmStokHareketi);
USEFORM("stokliste.cpp", frmStokListesi);
USEFORM("hareketlist.cpp", frmHareketListesi);
USEFORM("satislist.cpp", frmSatisListesi);
USEFORM("odeme.cpp", frmOdemeFisi);
USEFORM("lisans.cpp", frmLisans);
USEFORM("satici.cpp", frmSatici);
USEFORM("musteritak.cpp", frmMusteriTaksitRaporu);
USEFORM("rapor.cpp", frmRaporMenu);
USEFORM("acilis.cpp", frmAcilis);
USEFORM("musteri.cpp", frmMusteri);
USEFORM("satisrap.cpp", frmSatisRaporu);
USEFORM("odemerap.cpp", frmOdemeRaporu);
USEFORM("taksitrap.cpp", frmTaksitRaporu);

#include "acilis.h"
#include "anamenu.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmAcilis *frmAcilis;
//---------------------------------------------------------------------------
__fastcall TfrmAcilis::TfrmAcilis(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------

int flag = 0;

void __fastcall TfrmAcilis::Timer1Timer(TObject *Sender)
{
    if (flag == 0) {
        ProgressBar1->StepIt();
        Application->CreateForm(__classid(TfrmMusteri), &frmMusteri);
        ProgressBar1->StepIt();
        Application->CreateForm(__classid(TfrmAnaMenu), &frmAnaMenu);
        ProgressBar1->StepIt();
        Application->CreateForm(__classid(TfrmStokHareketi), &frmStokHareketi);
        Application->CreateForm(__classid(TfrmStok), &frmStok);
        ProgressBar1->StepIt();
        Application->CreateForm(__classid(TfrmBolgeGirisi), &frmBolgeGirisi);
        ProgressBar1->StepIt();
        Application->CreateForm(__classid(TfrmMusteriListesi), &frmMusteriListesi);
        Application->CreateForm(__classid(TfrmSatisFisi), &frmSatisFisi);
        ProgressBar1->StepIt();
        Application->CreateForm(__classid(TfrmStokListesi), &frmStokListesi);
        Application->CreateForm(__classid(TfrmHareketListesi), &frmHareketListesi);
        ProgressBar1->StepIt();
        Application->CreateForm(__classid(TfrmSatisListesi), &frmSatisListesi);
        Application->CreateForm(__classid(TfrmOdemeFisi), &frmOdemeFisi);
        ProgressBar1->StepIt();
        Application->CreateForm(__classid(TfrmLisans), &frmLisans);
        ProgressBar1->StepIt();
        Application->CreateForm(__classid(TfrmSatici), &frmSatici);
        Application->CreateForm(__classid(TfrmMusteriTaksitRaporu), &frmMusteriTaksitRaporu);
        ProgressBar1->StepIt();
        Application->CreateForm(__classid(TfrmRaporMenu), &frmRaporMenu);
        Application->CreateForm(__classid(TfrmSatisRaporu), &frmSatisRaporu);
        Application->CreateForm(__classid(TfrmOdemeRaporu), &frmOdemeRaporu);
        Application->CreateForm(__classid(TfrmTaksitRaporu), &frmTaksitRaporu);

        frmAcilis->Hide();
        frmAnaMenu->Show();
        flag = 1;
    }
}
//---------------------------------------------------------------------------
