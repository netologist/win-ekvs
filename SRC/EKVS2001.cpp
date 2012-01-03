//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
USERES("EKVS2001.res");
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
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
    try
    {
         Application->Initialize();
         Application->Title = "Vadeli Satýþ v.1.01a";

         Application->CreateForm(__classid(TfrmAcilis), &frmAcilis);
         Application->Run();
    }
    catch (Exception &exception)
    {
         Application->ShowException(&exception);
    }
    return 0;
}
//---------------------------------------------------------------------------
