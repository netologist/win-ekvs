//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "stokliste.h"
#include "stokhar.h"
#include "satis.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmStokListesi *frmStokListesi;
//---------------------------------------------------------------------------
__fastcall TfrmStokListesi::TfrmStokListesi(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TfrmStokListesi::ARAMA_EditChange(TObject *Sender)
{
    querySTOKLISTE->Close();
    querySTOKLISTE->ParamByName("URUNKODU")->AsString = ARAMA_Edit->Text + "%";
    querySTOKLISTE->ParamByName("URUNADI")->AsString = ARAMA_Edit->Text + "%";
    querySTOKLISTE->Open();
}
//---------------------------------------------------------------------------

void __fastcall TfrmStokListesi::StokHareketiSecimi(void)
{
    frmStokHareketi->tblGIRIS->Edit();
    frmStokHareketi->tblGIRISURUN_NO->Value = querySTOKLISTEURUNKODU->Value;
    frmStokHareketi->tblGIRISURUN_ADI->Value = querySTOKLISTEURUNADI->Value;
    frmStokHareketi->Enabled = true;
}

//---------------------------------------------------------------------------
void __fastcall TfrmStokListesi::SatisStokSecimi(void)
{
    frmSatisFisi->tblSTOKSATISURUN_NO->Value = querySTOKLISTEURUNKODU->Value;
    frmSatisFisi->tblSTOKSATISURUN_ADI->Value = querySTOKLISTEURUNADI->Value;
    frmSatisFisi->tblSTOKSATISBIRIM_FIYATI->Value = querySTOKLISTEFIYATI->Value;
}

//---------------------------------------------------------------------------
void __fastcall TfrmStokListesi::DBGrid3CellClick(TColumn *Column)
{
    if (AYAR_Edit->Text == "0")
        StokHareketiSecimi();
    else if (AYAR_Edit->Text == "1")
        SatisStokSecimi();

    frmStokListesi->Close();
}
//---------------------------------------------------------------------------
void __fastcall TfrmStokListesi::FormClose(TObject *Sender,
      TCloseAction &Action)
{
    frmStokHareketi->Enabled = true;
}
//---------------------------------------------------------------------------


void __fastcall TfrmStokListesi::FormShow(TObject *Sender)
{
    querySTOKLISTE->Close();
    querySTOKLISTE->ParamByName("URUNKODU")->AsString = ARAMA_Edit->Text + "%";
    querySTOKLISTE->ParamByName("URUNADI")->AsString = ARAMA_Edit->Text + "%";
    querySTOKLISTE->Open();
}
//---------------------------------------------------------------------------

