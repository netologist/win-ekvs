//---------------------------------------------------------------------------

#ifndef acilisH
#define acilisH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include <ComCtrls.hpp>
//---------------------------------------------------------------------------
class TfrmAcilis : public TForm
{
__published:	// IDE-managed Components
    TTimer *Timer1;
    TProgressBar *ProgressBar1;
    TImage *Image1;
    TLabel *Label2;
    TLabel *Label3;
    TBevel *Bevel1;
    void __fastcall Timer1Timer(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall TfrmAcilis(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmAcilis *frmAcilis;
//---------------------------------------------------------------------------
#endif
