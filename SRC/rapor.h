//---------------------------------------------------------------------------

#ifndef raporH
#define raporH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Buttons.hpp>
#include <ExtCtrls.hpp>
#include <Db.hpp>
#include <DBCtrls.hpp>
#include <DBTables.hpp>
#include <Mask.hpp>
#include <Menus.hpp>
#include <ComCtrls.hpp>
//---------------------------------------------------------------------------
class TfrmRaporMenu : public TForm
{
__published:	// IDE-managed Components
    TGroupBox *GroupBox1;
    TStaticText *StaticText1;
    TBevel *Bevel1;
    TLabel *Label7;
    TBevel *Bevel2;
    TLabel *Label9;
    TLabel *Label10;
    TLabel *Label11;
    TLabel *Label12;
    TStaticText *StaticText2;
    TBevel *Bevel3;
    TSpeedButton *SpeedButton1;
    TSpeedButton *SpeedButton2;
    TSpeedButton *SpeedButton3;
    TSpeedButton *SpeedButton4;
    TSpeedButton *SpeedButton5;
    TSpeedButton *SpeedButton6;
    TQuery *querySATICI;
    TDataSource *dsrcSATICI;
    TQuery *querySATICI2;
    TDataSource *dsrcSATICI2;
    TDBLookupComboBox *combo_Satici1;
    TDBLookupComboBox *combo_Satici2;
    TQuery *queryMUSTERI1;
    TDataSource *dsrcMUSTERI;
    TQuery *queryMUSTERI2;
    TDataSource *dsrcMUSTERI2;
    TEdit *Edit_MusteriNo1;
    TEdit *Edit_MusteriNo2;
    TEdit *Edit1;
    TEdit *Edit2;
    TEdit *Edit3;
    TEdit *Edit4;
    TStringField *queryMUSTERI1M_NO;
    TStringField *queryMUSTERI1M_ADI;
    TStringField *queryMUSTERI1M_SOYADI;
    TStringField *queryMUSTERI1M_CADDE;
    TStringField *queryMUSTERI1M_SOKAK;
    TStringField *queryMUSTERI1M_KAPINO;
    TStringField *queryMUSTERI1M_BOLGE;
    TStringField *queryMUSTERI1M_MAHALLE;
    TStringField *queryMUSTERI1M_EVTEL;
    TStringField *queryMUSTERI1M_CEPTEL;
    TStringField *queryMUSTERI1M_ISTEL1;
    TStringField *queryMUSTERI1M_ISTEL2;
    TStringField *queryMUSTERI1K_ADI;
    TStringField *queryMUSTERI1K_SOYADI;
    TStringField *queryMUSTERI1K_CADDE;
    TStringField *queryMUSTERI1K_SOKAK;
    TStringField *queryMUSTERI1K_KAPINO;
    TStringField *queryMUSTERI1K_BOLGE;
    TStringField *queryMUSTERI1K_MAHALLE;
    TStringField *queryMUSTERI1K_EVTEL;
    TStringField *queryMUSTERI1K_CEPTEL;
    TStringField *queryMUSTERI1K_ISTEL1;
    TStringField *queryMUSTERI1K_ISTEL2;
    TStringField *queryMUSTERI1DURUM;
    TMemoField *queryMUSTERI1KARALISTE_ACIKLAMASI;
    TStringField *queryMUSTERI1KARA_LISTE;
    TCurrencyField *queryMUSTERI1AYLIK_TAKSIT;
    TCurrencyField *queryMUSTERI1MAL_BEDELI;
    TCurrencyField *queryMUSTERI1ODENEN_TUTAR;
    TCurrencyField *queryMUSTERI1KALAN_BORC;
    TDateField *queryMUSTERI1SON_TAKSIT_TARIHI;
    TStringField *queryMUSTERI2M_NO;
    TStringField *queryMUSTERI2M_ADI;
    TStringField *queryMUSTERI2M_SOYADI;
    TStringField *queryMUSTERI2M_CADDE;
    TStringField *queryMUSTERI2M_SOKAK;
    TStringField *queryMUSTERI2M_KAPINO;
    TStringField *queryMUSTERI2M_BOLGE;
    TStringField *queryMUSTERI2M_MAHALLE;
    TStringField *queryMUSTERI2M_EVTEL;
    TStringField *queryMUSTERI2M_CEPTEL;
    TStringField *queryMUSTERI2M_ISTEL1;
    TStringField *queryMUSTERI2M_ISTEL2;
    TStringField *queryMUSTERI2K_ADI;
    TStringField *queryMUSTERI2K_SOYADI;
    TStringField *queryMUSTERI2K_CADDE;
    TStringField *queryMUSTERI2K_SOKAK;
    TStringField *queryMUSTERI2K_KAPINO;
    TStringField *queryMUSTERI2K_BOLGE;
    TStringField *queryMUSTERI2K_MAHALLE;
    TStringField *queryMUSTERI2K_EVTEL;
    TStringField *queryMUSTERI2K_CEPTEL;
    TStringField *queryMUSTERI2K_ISTEL1;
    TStringField *queryMUSTERI2K_ISTEL2;
    TStringField *queryMUSTERI2DURUM;
    TMemoField *queryMUSTERI2KARALISTE_ACIKLAMASI;
    TStringField *queryMUSTERI2KARA_LISTE;
    TCurrencyField *queryMUSTERI2AYLIK_TAKSIT;
    TCurrencyField *queryMUSTERI2MAL_BEDELI;
    TCurrencyField *queryMUSTERI2ODENEN_TUTAR;
    TCurrencyField *queryMUSTERI2KALAN_BORC;
    TDateField *queryMUSTERI2SON_TAKSIT_TARIHI;
    TLabel *Label1;
    TLabel *Label2;
    TLabel *Label3;
    TLabel *Label4;
    TLabel *Label8;
    TBitBtn *BitBtn3;
    TBitBtn *BitBtn4;
    TBitBtn *BitBtn1;
    TMaskEdit *Edit_Tarih1;
    TMaskEdit *Edit_Tarih2;
    TEdit *Edit5;
    void __fastcall SpeedButton3Click(TObject *Sender);
    void __fastcall SpeedButton1Click(TObject *Sender);
    void __fastcall SpeedButton2Click(TObject *Sender);
    void __fastcall Kilit(void);
    void __fastcall MusteriRaporSorgusu(void);
    void __fastcall TaksitRaporSorgusu(void);
    void __fastcall SatisRaporSorgusu(void);
    void __fastcall TahsilatRaporSorgusu(void);
    void __fastcall BitBtn3Click(TObject *Sender);
    void __fastcall BitBtn4Click(TObject *Sender);
    void __fastcall BitBtn1Click(TObject *Sender);
    void __fastcall SpeedButton4Click(TObject *Sender);
        void __fastcall SpeedButton5Click(TObject *Sender);
        void __fastcall SpeedButton6Click(TObject *Sender);
    void __fastcall FormCreate(TObject *Sender);
    void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
    __fastcall TfrmRaporMenu(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmRaporMenu *frmRaporMenu;
//---------------------------------------------------------------------------
#endif
