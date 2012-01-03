//---------------------------------------------------------------------------

#ifndef musteriH
#define musteriH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
#include <DBCtrls.hpp>
#include <DBGrids.hpp>
#include <ExtCtrls.hpp>
#include <Grids.hpp>
#include <Mask.hpp>
#include <Buttons.hpp>
#include <ToolWin.hpp>
#include <ImgList.hpp>
#include <Menus.hpp>
#include <Db.hpp>
#include <DBTables.hpp>
//---------------------------------------------------------------------------
class TfrmMusteri : public TForm
{
__published:	// IDE-managed Components
    TGroupBox *GroupBox1;
    TImageList *ImageList1;
    TPageControl *PageControl1;
    TTabSheet *TabSheet1;
    TGroupBox *GroupBox3;
    TLabel *Label1;
    TLabel *Label2;
    TLabel *Label4;
    TLabel *Label5;
    TLabel *Label6;
    TLabel *Label7;
    TLabel *Label8;
    TLabel *Label9;
    TLabel *Label10;
    TLabel *Label28;
    TLabel *Label3;
    TLabel *Label11;
    TDBEdit *MADI_Edit;
    TDBEdit *MSOYADI_Edit;
    TDBEdit *MCADDE_Edit;
    TDBEdit *MSOKAK_Edit;
    TDBEdit *MKAPINO_Edit;
    TDBEdit *MEVTEL_Edit;
    TDBEdit *MISTEL1_Edit;
    TDBEdit *MISTEL2_Edit;
    TDBEdit *MNO_Edit;
    TDBEdit *MCEPTEL_Edit;
    TTabSheet *TabSheet2;
    TGroupBox *GroupBox4;
    TLabel *Label12;
    TLabel *Label13;
    TLabel *Label14;
    TLabel *Label15;
    TLabel *Label19;
    TLabel *Label20;
    TLabel *Label21;
    TLabel *Label16;
    TLabel *Label30;
    TLabel *Label31;
    TDBEdit *KADI_Edit;
    TDBEdit *KSOYADI_Edit;
    TDBEdit *KCADDE_Edit;
    TDBEdit *KSOKAK_Edit;
    TDBEdit *KKAPINO_Edit;
    TDBEdit *KEVTEL_Edit;
    TDBEdit *KISTEL1_Edit;
    TDBEdit *KISTEL2_Edit;
    TLabel *Label22;
    TDBLookupComboBox *MBOLGE_Combo;
    TDBLookupComboBox *MMAHALLE_Combo;
    TDBLookupComboBox *KBOLGE_Combo;
    TDBLookupComboBox *KMAHALLE_Combo;
    TDBEdit *KCEPTEL_Edit;
    TDataSource *dsrcMAHALLE;
    TQuery *queryMAHALLE;
    TDataSource *dsrcBOLGE;
    TQuery *queryBOLGE;
    TTable *tblMUSTERI;
    TDataSource *dsrcMUSTERI;
    TDataSource *dsrcMAHALLE2;
    TToolBar *ToolBar2;
    TToolButton *tbtnYENI;
    TToolButton *tbtnKAYDET;
    TToolButton *tbtnSIL;
    TToolButton *ToolButton7;
    TToolButton *tbtnAC;
    TToolButton *ToolButton8;
    TToolButton *tbtnYAZDIR;
    TToolButton *ToolButton13;
    TToolButton *tbtnKLEKLE;
    TToolButton *tbtnKLCIKAR;
    TToolButton *ToolButton11;
    TToolButton *tbtnPASIF;
    TToolButton *tbtnAKTIF;
    TToolButton *ToolButton1;
    TGroupBox *GroupBox2;
    TStaticText *StaticText1;
    TStaticText *StaticText2;
    TStaticText *StaticText3;
    TStaticText *StaticText4;
    TStaticText *StaticText5;
    TStatusBar *StatusBar;
    TQuery *queryMAHALLE2;
    TTabSheet *TabSheet3;
    TDBMemo *KLACIKLAMASI_Memo;
    TStringField *tblMUSTERIM_NO;
    TStringField *tblMUSTERIM_ADI;
    TStringField *tblMUSTERIM_SOYADI;
    TStringField *tblMUSTERIM_CADDE;
    TStringField *tblMUSTERIM_SOKAK;
    TStringField *tblMUSTERIM_KAPINO;
    TStringField *tblMUSTERIM_BOLGE;
    TStringField *tblMUSTERIM_MAHALLE;
    TStringField *tblMUSTERIM_EVTEL;
    TStringField *tblMUSTERIM_CEPTEL;
    TStringField *tblMUSTERIM_ISTEL1;
    TStringField *tblMUSTERIM_ISTEL2;
    TStringField *tblMUSTERIK_ADI;
    TStringField *tblMUSTERIK_SOYADI;
    TStringField *tblMUSTERIK_CADDE;
    TStringField *tblMUSTERIK_SOKAK;
    TStringField *tblMUSTERIK_KAPINO;
    TStringField *tblMUSTERIK_BOLGE;
    TStringField *tblMUSTERIK_MAHALLE;
    TStringField *tblMUSTERIK_EVTEL;
    TStringField *tblMUSTERIK_CEPTEL;
    TStringField *tblMUSTERIK_ISTEL1;
    TStringField *tblMUSTERIK_ISTEL2;
    TStringField *tblMUSTERIDURUM;
    TMemoField *tblMUSTERIKARALISTE_ACIKLAMASI;
    TStringField *tblMUSTERIKARA_LISTE;
    TCurrencyField *tblMUSTERIAYLIK_TAKSIT;
    TCurrencyField *tblMUSTERIMAL_BEDELI;
    TCurrencyField *tblMUSTERIODENEN_TUTAR;
    TCurrencyField *tblMUSTERIKALAN_BORC;
    TDateField *tblMUSTERISON_TAKSIT_TARIHI;
    TDBEdit *TOPMALBED_Edit;
    TDBEdit *TAKTUT_Edit;
    TDBEdit *TAKBITTAR_Edit;
    TDBEdit *ODENENTUTAR_Edit;
    TDBEdit *KALANBORC_Edit;
    TDataSource *dsrcTAKSIT;
    TQuery *queryTAKSIT;
    TDateField *queryTAKSITVADE_TARIHI;
    TCurrencyField *queryTAKSITTAKSIT_TUTARI;
    TCurrencyField *queryTAKSITODEME_TUTARI;
    TCurrencyField *queryTAKSITKALAN_BAKIYE;
    TDataSource *dsrcSATIS;
    TQuery *querySATIS;
    TCurrencyField *querySATISPESINAT;
    TCurrencyField *querySATISMAL_BEDELI;
    TDataSource *dsrcAKTIF;
    TDataSource *dsrcPASIF;
    TQuery *queryAKTIF;
    TQuery *queryPASIF;
    TQuery *queryODEME;
    TDataSource *dsrcODEME;
    TIntegerField *queryODEMEOTOMATIK_SAYI;
    TStringField *queryODEMEMNO;
    TStringField *queryODEMESATICI;
    TMemoField *queryODEMEACIKLAMA;
    TDateField *queryODEMEODEME_TARIHI;
    TCurrencyField *queryODEMEODEME_TUTARI;
    TCurrencyField *queryODEMEBAKIYE;
    TStringField *queryODEMEMADI;
    TStringField *queryODEMEMSOYADI;
    TBooleanField *queryODEMEONAY;
    TDataSource *dsrcSATISFISI;
    TQuery *querySATISFISI;
    TIntegerField *querySATISFISIOTOMATIK_SAYI;
    TBooleanField *querySATISFISIHAREKET_TURU;
    TDateField *querySATISFISITARIH;
    TStringField *querySATISFISIMUSTERI_NO;
    TStringField *querySATISFISIMUSTERI_ADI;
    TStringField *querySATISFISIMUSTERI_SOYADI;
    TStringField *querySATISFISIKAYIT_NO;
    TStringField *querySATISFISISATICI;
    TCurrencyField *querySATISFISIBIRIM_FIYATI;
    TFloatField *querySATISFISIMAL_ADEDI;
    TDateField *querySATISFISIILK_TAKSIT_TARIHI;
    TCurrencyField *querySATISFISIMAL_BEDELI;
    TCurrencyField *querySATISFISIPESINAT;
    TFloatField *querySATISFISITAKSIT_SAYISI;
    TCurrencyField *querySATISFISITAKSIT_TUTARI;
    TCurrencyField *querySATISFISIKALAN_BORC;
    TMemoField *querySATISFISIACIKLAMA;
    TStringField *querySATISFISIURUN_NO;
    TStringField *querySATISFISIURUN_ADI;
    TQuery *queryDEVIR;
    TDateField *DateField1;
    TCurrencyField *CurrencyField1;
    TCurrencyField *CurrencyField3;
    TDataSource *dsrcDEVIR;
    TCurrencyField *queryDEVIRODEME_TUTARI;
    TGroupBox *GroupBox5;
    TPageControl *PageControl2;
    TTabSheet *TabSheet4;
    TTabSheet *TabSheet5;
    TTabSheet *TabSheet6;
    TTabSheet *TabSheet7;
    TDBGrid *DBGrid1;
    TDBGrid *DBGrid2;
    TDBGrid *DBGrid3;
    TDBGrid *DBGrid4;
    void __fastcall tbtnACClick(TObject *Sender);
    void __fastcall MBOLGE_ComboClick(TObject *Sender);
    void __fastcall DurumEtiketi(void);
    void __fastcall KBOLGE_ComboClick(TObject *Sender);
    void __fastcall tbtnYENIClick(TObject *Sender);
    void __fastcall tbtnSILClick(TObject *Sender);
    void __fastcall tbtnKLEKLEClick(TObject *Sender);
    void __fastcall tbtnKLCIKARClick(TObject *Sender);
    void __fastcall tbtnPASIFClick(TObject *Sender);
    void __fastcall tbtnAKTIFClick(TObject *Sender);
    void __fastcall tbtnKAYDETClick(TObject *Sender);
    void __fastcall MNO_EditChange(TObject *Sender);
    void __fastcall MADI_EditChange(TObject *Sender);
    void __fastcall MSOYADI_EditChange(TObject *Sender);
    void __fastcall MCADDE_EditChange(TObject *Sender);
    void __fastcall MSOKAK_EditChange(TObject *Sender);
    void __fastcall MKAPINO_EditChange(TObject *Sender);
    void __fastcall MEVTEL_EditChange(TObject *Sender);
    void __fastcall MCEPTEL_EditChange(TObject *Sender);
    void __fastcall AktifPasifDurumu(void);
    void __fastcall MISTEL1_EditChange(TObject *Sender);
    void __fastcall MISTEL2_EditChange(TObject *Sender);
    void __fastcall KADI_EditChange(TObject *Sender);
    void __fastcall KSOYADI_EditChange(TObject *Sender);
    void __fastcall KCADDE_EditChange(TObject *Sender);
    void __fastcall KSOKAK_EditChange(TObject *Sender);
    void __fastcall KKAPINO_EditChange(TObject *Sender);
    void __fastcall KEVTEL_EditChange(TObject *Sender);
    void __fastcall KCEPTEL_EditChange(TObject *Sender);
    void __fastcall KISTEL1_EditChange(TObject *Sender);
    void __fastcall KISTEL2_EditChange(TObject *Sender);
    void __fastcall KMAHALLE_ComboClick(TObject *Sender);
    void __fastcall MMAHALLE_ComboClick(TObject *Sender);
    void __fastcall MNO_EditKeyPress(TObject *Sender, char &Key);
    void __fastcall MADI_EditKeyPress(TObject *Sender, char &Key);
    void __fastcall MSOYADI_EditKeyPress(TObject *Sender, char &Key);
    void __fastcall MCADDE_EditKeyPress(TObject *Sender, char &Key);
    void __fastcall MSOKAK_EditKeyPress(TObject *Sender, char &Key);
    void __fastcall MKAPINO_EditKeyPress(TObject *Sender, char &Key);
    void __fastcall MBOLGE_ComboKeyPress(TObject *Sender, char &Key);
    void __fastcall MMAHALLE_ComboKeyPress(TObject *Sender, char &Key);
    void __fastcall MEVTEL_EditKeyPress(TObject *Sender, char &Key);
    void __fastcall MCEPTEL_EditKeyPress(TObject *Sender, char &Key);
    void __fastcall MISTEL1_EditKeyPress(TObject *Sender, char &Key);
    void __fastcall MISTEL2_EditKeyPress(TObject *Sender, char &Key);
    void __fastcall KADI_EditKeyPress(TObject *Sender, char &Key);
    void __fastcall KSOYADI_EditKeyPress(TObject *Sender, char &Key);
    void __fastcall KCADDE_EditKeyPress(TObject *Sender, char &Key);
    void __fastcall KSOKAK_EditKeyPress(TObject *Sender, char &Key);
    void __fastcall KKAPINO_EditKeyPress(TObject *Sender, char &Key);
    void __fastcall KBOLGE_ComboKeyPress(TObject *Sender, char &Key);
    void __fastcall KMAHALLE_ComboKeyPress(TObject *Sender, char &Key);
    void __fastcall Kilit(void);
    void __fastcall Anahtar(void);
    void __fastcall OdemeRaporu(void);
    void __fastcall KEVTEL_EditKeyPress(TObject *Sender, char &Key);
    void __fastcall KCEPTEL_EditKeyPress(TObject *Sender, char &Key);
    void __fastcall KISTEL1_EditKeyPress(TObject *Sender, char &Key);
    void __fastcall KISTEL2_EditKeyPress(TObject *Sender, char &Key);
    void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
    void __fastcall FormShow(TObject *Sender);
    void __fastcall tbtnYAZDIRClick(TObject *Sender);
    void __fastcall DBGrid1DrawDataCell(TObject *Sender, const TRect &Rect,
          TField *Field, TGridDrawState State);
private:	// User declarations
public:		// User declarations
    __fastcall TfrmMusteri(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmMusteri *frmMusteri;
extern int SayfaKontrol;
//---------------------------------------------------------------------------
#endif
