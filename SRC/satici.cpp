//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "satici.h"
#include "anamenu.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmSatici *frmSatici;
//---------------------------------------------------------------------------
__fastcall TfrmSatici::TfrmSatici(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmSatici::FormClose(TObject *Sender,
      TCloseAction &Action)
{
    frmAnaMenu->Show();    
}
//---------------------------------------------------------------------------

