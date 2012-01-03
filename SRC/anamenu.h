//---------------------------------------------------------------------------

#ifndef anamenuH
#define anamenuH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Buttons.hpp>
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include <Menus.hpp>
#include <ToolWin.hpp>
//---------------------------------------------------------------------------
class TfrmAnaMenu : public TForm
{
__published:	// IDE-managed Components
    TGroupBox *GroupBox1;
    TMainMenu *MainMenu1;
    TMenuItem *MteriKart1;
    TMenuItem *Hareket1;
    TMenuItem *RAporlar1;
    TMenuItem *Ayarlar1;
    TMenuItem *Yardm1;
    TMenuItem *erik1;
    TMenuItem *Hakknda1;
    TMenuItem *BlgeGirii1;
    TMenuItem *SatcTahsilatGirii1;
    TMenuItem *Stok1;
    TMenuItem *StokKart1;
    TMenuItem *TaksitOluturma1;
    TMenuItem *Taksitdemesi1;
    TMenuItem *KartGirii1;
    TStatusBar *StatusBar1;
    TMenuItem *StokHareketi1;
    TPopupMenu *PopupMenu1;
    TMenuItem *StokGirii1;
    TMenuItem *StokHareketi2;
    TSpeedButton *SpeedButton2;
    TSpeedButton *SpeedButton4;
    TSpeedButton *SpeedButton3;
    TSpeedButton *SpeedButton1;
    TImage *Image1;
    TBevel *Bevel1;
    TLabel *Label1;
    TLabel *Label2;
    void __fastcall KartGirii1Click(TObject *Sender);
    void __fastcall BlgeGirii1Click(TObject *Sender);
    void __fastcall StokKart1Click(TObject *Sender);
    void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
    void __fastcall StokHareketi1Click(TObject *Sender);
    void __fastcall StokGirii1Click(TObject *Sender);
    void __fastcall StokHareketi2Click(TObject *Sender);
    void __fastcall SatcTahsilatGirii1Click(TObject *Sender);
    void __fastcall SpeedButton1Click(TObject *Sender);
    void __fastcall SpeedButton2Click(TObject *Sender);
    void __fastcall SpeedButton4Click(TObject *Sender);
    void __fastcall SpeedButton3Click(TObject *Sender);
    void __fastcall Hakknda1Click(TObject *Sender);
    void __fastcall TaksitOluturma1Click(TObject *Sender);
    void __fastcall Taksitdemesi1Click(TObject *Sender);
    void __fastcall RAporlar1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall TfrmAnaMenu(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmAnaMenu *frmAnaMenu;
//---------------------------------------------------------------------------
#endif
