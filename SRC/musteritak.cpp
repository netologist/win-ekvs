//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "musteritak.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmMusteriTaksitRaporu *frmMusteriTaksitRaporu;
//---------------------------------------------------------------------------
__fastcall TfrmMusteriTaksitRaporu::TfrmMusteriTaksitRaporu(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmMusteriTaksitRaporu::QRSubDetail1NeedData(
      TObject *Sender, bool &MoreData)
{
    QuickRep1->PrinterSetup();
}
//---------------------------------------------------------------------------


