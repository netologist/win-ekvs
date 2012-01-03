//---------------------------------------------------------------------------

#ifndef lisansH
#define lisansH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Buttons.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include <Mask.hpp>
//---------------------------------------------------------------------------
class TfrmLisans : public TForm
{
__published:	// IDE-managed Components
    TGroupBox *GroupBox1;
    TBevel *Bevel1;
    TLabel *Label4;
    TLabel *labelKilit;
    TLabel *Label3;
    TEdit *Edit_Adi;
    TLabel *Label5;
    TLabel *Label2;
    TEdit *Edit_Soyadi;
    TBevel *Bevel2;
    TGroupBox *GroupBox2;
    TImage *Image1;
    TBitBtn *BitBtn1;
    TBitBtn *BitBtn2;
    TLabel *Label7;
    TLabel *Label8;
    TLabel *Label1;
    TBitBtn *BitBtn3;
    TLabel *Label6;
    TMaskEdit *maskAnahtar;
    void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
    void __fastcall BitBtn2Click(TObject *Sender);
    long __fastcall NumaraOlustur(long Carpim);
    AnsiString __fastcall KilitOlustur(void);
    void __fastcall Edit_AdiChange(TObject *Sender);
    void __fastcall Edit_SoyadiChange(TObject *Sender);
    void __fastcall FormCreate(TObject *Sender);
    void __fastcall BitBtn3Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall TfrmLisans(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmLisans *frmLisans;
//---------------------------------------------------------------------------
#endif
