//---------------------------------------------------------------------------

#ifndef stokharH
#define stokharH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <ImgList.hpp>
#include <Menus.hpp>
#include <ToolWin.hpp>
#include <Db.hpp>
#include <DBCtrls.hpp>
#include <DBTables.hpp>
#include <Mask.hpp>
#include <Buttons.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TfrmStokHareketi : public TForm
{
__published:	// IDE-managed Components
    TGroupBox *GroupBox1;
    TToolBar *ToolBar1;
    TToolButton *tbtnYENI;
    TToolButton *tbtnKAYDET;
    TToolButton *tbtnSIL;
    TToolButton *ToolButton4;
    TToolButton *tbtnAC;
    TLabel *Label1;
    TLabel *Label4;
    TImageList *ImageList1;
    TDataSource *dsrcGIRIS;
    TTable *tblGIRIS;
    TDBEdit *MADI_Edit;
    TDBMemo *ACIKLAMA_Memo;
    TLabel *Label2;
    TDBEdit *KAYITNO_Edit;
    TLabel *Label3;
    TDBEdit *TARIH_NO;
    TGroupBox *GroupBox2;
    TLabel *Label5;
    TLabel *Label6;
    TLabel *Label7;
    TDBEdit *URUNNO_Edit;
    TDBEdit *URUNADI_Edit;
    TDBEdit *MALADEDI_Edit;
    TSpeedButton *SpeedButton1;
    TAutoIncField *tblGIRISOTOMATIK_SAYI;
    TBooleanField *tblGIRISHAREKET_TURU;
    TDateField *tblGIRISTARIH;
    TStringField *tblGIRISMUSTERI_NO;
    TStringField *tblGIRISMUSTERI_ADI;
    TStringField *tblGIRISKAYIT_NO;
    TStringField *tblGIRISSATICI;
    TCurrencyField *tblGIRISBIRIM_FIYATI;
    TFloatField *tblGIRISMAL_ADEDI;
    TDateField *tblGIRISILK_TAKSIT_TARIHI;
    TCurrencyField *tblGIRISMAL_BEDELI;
    TCurrencyField *tblGIRISPESINAT;
    TFloatField *tblGIRISTAKSIT_SAYISI;
    TCurrencyField *tblGIRISTAKSIT_TUTARI;
    TCurrencyField *tblGIRISKALAN_BORC;
    TMemoField *tblGIRISACIKLAMA;
    TStringField *tblGIRISURUN_NO;
    TStringField *tblGIRISURUN_ADI;
    void __fastcall SpeedButton1Click(TObject *Sender);
    void __fastcall tbtnYENIClick(TObject *Sender);
    void __fastcall tbtnKAYDETClick(TObject *Sender);
    void __fastcall tbtnSILClick(TObject *Sender);
    void __fastcall KAYITNO_EditChange(TObject *Sender);
    void __fastcall TARIH_NOChange(TObject *Sender);
    void __fastcall Anahtar(void);
    void __fastcall Kilit(void);
    void __fastcall KayitKontrol(void);
    void __fastcall MADI_EditChange(TObject *Sender);
    void __fastcall ACIKLAMA_MemoChange(TObject *Sender);
    void __fastcall URUNNO_EditChange(TObject *Sender);
    void __fastcall URUNADI_EditChange(TObject *Sender);
    void __fastcall MALADEDI_EditChange(TObject *Sender);
    void __fastcall KAYITNO_EditKeyPress(TObject *Sender, char &Key);
    void __fastcall TARIH_NOKeyPress(TObject *Sender, char &Key);
    void __fastcall MADI_EditKeyPress(TObject *Sender, char &Key);
    void __fastcall URUNNO_EditKeyPress(TObject *Sender, char &Key);
    void __fastcall URUNADI_EditKeyPress(TObject *Sender, char &Key);
    void __fastcall MALADEDI_EditKeyPress(TObject *Sender, char &Key);
    void __fastcall tbtnACClick(TObject *Sender);
    void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
    void __fastcall FormShow(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall TfrmStokHareketi(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmStokHareketi *frmStokHareketi;
//---------------------------------------------------------------------------
#endif
