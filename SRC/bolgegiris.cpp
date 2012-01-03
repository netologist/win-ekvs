//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "bolgegiris.h"
#include "anamenu.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmBolgeGirisi *frmBolgeGirisi;
//---------------------------------------------------------------------------
__fastcall TfrmBolgeGirisi::TfrmBolgeGirisi(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TfrmBolgeGirisi::FormClose(TObject *Sender,
      TCloseAction &Action)
{
    frmAnaMenu->Show();    
}
//---------------------------------------------------------------------------

