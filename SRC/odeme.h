//---------------------------------------------------------------------------

#ifndef odemeH
#define odemeH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Db.hpp>
#include <DBCtrls.hpp>
#include <DBGrids.hpp>
#include <DBTables.hpp>
#include <Grids.hpp>
#include <Mask.hpp>
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
#include <Menus.hpp>
//---------------------------------------------------------------------------
class TfrmOdemeFisi : public TForm
{
__published:	// IDE-managed Components
    TDataSource *dsrcODEME;
    TTable *tblODEME;
    TQuery *querySATICI;
    TDataSource *dsrcSATICI;
    TStringField *querySATICIISIMKISALTMASI;
    TStringField *querySATICIISIM;
    TAutoIncField *tblODEMEOTOMATIK_SAYI;
    TStringField *tblODEMEMNO;
    TStringField *tblODEMESATICI;
    TMemoField *tblODEMEACIKLAMA;
    TDateField *tblODEMEODEME_TARIHI;
    TCurrencyField *tblODEMEODEME_TUTARI;
    TCurrencyField *tblODEMEBAKIYE;
    TStringField *tblODEMEMADI;
    TStringField *tblODEMEMSOYADI;
    TPopupMenu *PopupMenu1;
    TMenuItem *Ekle1;
    TMenuItem *Sil1;
    TMenuItem *MteriListesi1;
    TQuery *queryTAKSIT;
    TQuery *queryMUSTERITAKSIT;
    TDateField *queryMUSTERITAKSITVADE_TARIHI;
    TCurrencyField *queryMUSTERITAKSITTAKSIT_TUTARI;
    TCurrencyField *queryMUSTERITAKSITODEME_TUTARI;
    TCurrencyField *queryMUSTERITAKSITKALAN_BAKIYE;
    TQuery *querySATIS;
    TCurrencyField *querySATISPESINAT;
    TCurrencyField *querySATISMAL_BEDELI;
    TMenuItem *N1;
    TGroupBox *GroupBox1;
    TGroupBox *GroupBox2;
    TLabel *Label1;
    TLabel *Label3;
    TLabel *Label4;
    TLabel *Label5;
    TLabel *Label2;
    TLabel *Label6;
    TLabel *Label7;
    TLabel *Label8;
    TLabel *Label9;
    TLabel *Label10;
    TLabel *Label13;
    TLabel *Label14;
    TLabel *Label15;
    TLabel *Label16;
    TDBEdit *MNO_Edit;
    TDBEdit *MADI_Edit;
    TDBEdit *MSOYADI_Edit;
    TDBEdit *MBOLGE_Edit;
    TDBEdit *MCADDE_Edit;
    TDBEdit *MSOKAK_Edit;
    TDBEdit *MKAPINO_Edit;
    TDBEdit *M_EVTEL_Edit;
    TDBEdit *MCEPTEL_Edit;
    TDBEdit *MMAHALLE_Edit;
    TDBEdit *MALBED_Edit;
    TDBEdit *TAKSIT_Edit;
    TDBEdit *ODENEN_Edit;
    TDBEdit *KALAN_Edit;
    TDBGrid *DBGrid1;
    TDataSource *dsrcMUSTERI;
    TTable *tblMUSTERI;
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
    TQuery *queryTAKSITHAR;
    TCurrencyField *queryTAKSITODEME_TUTARI;
    TCurrencyField *queryTAKSITKALAN_BAKIYE;
    TTable *tblTAKSITDEGIS;
    TIntegerField *queryTAKSITHAROTOMATIK_SAYI;
    TDateField *queryTAKSITHARVADE_TARIHI;
    TCurrencyField *queryTAKSITHARTAKSIT_TUTARI;
    TDateField *queryTAKSITHARODEME_TARIHI;
    TCurrencyField *queryTAKSITHARODEME_TUTARI;
    TCurrencyField *queryTAKSITHARKALAN_BAKIYE;
    TFloatField *queryTAKSITHARODEME_FISI;
    TStringField *queryTAKSITHARMUSTERI_KODU;
    TStringField *queryTAKSITHARAY_YIL;
    TAutoIncField *tblTAKSITDEGISOTOMATIK_SAYI;
    TDateField *tblTAKSITDEGISVADE_TARIHI;
    TCurrencyField *tblTAKSITDEGISTAKSIT_TUTARI;
    TDateField *tblTAKSITDEGISODEME_TARIHI;
    TCurrencyField *tblTAKSITDEGISODEME_TUTARI;
    TCurrencyField *tblTAKSITDEGISKALAN_BAKIYE;
    TFloatField *tblTAKSITDEGISODEME_FISI;
    TStringField *tblTAKSITDEGISMUSTERI_KODU;
    TStringField *tblTAKSITDEGISAY_YIL;
    TIntegerField *tblTAKSITDEGISSATIS_FISI;
    TIntegerField *queryTAKSITHARSATIS_FISI;
    TQuery *queryODEMEFISI;
    TIntegerField *queryODEMEFISIOTOMATIK_SAYI;
    TStringField *queryODEMEFISIMNO;
    TStringField *queryODEMEFISISATICI;
    TMemoField *queryODEMEFISIACIKLAMA;
    TDateField *queryODEMEFISIODEME_TARIHI;
    TCurrencyField *queryODEMEFISIODEME_TUTARI;
    TCurrencyField *queryODEMEFISIBAKIYE;
    TStringField *queryODEMEFISIMADI;
    TStringField *queryODEMEFISIMSOYADI;
    TBooleanField *queryODEMEFISIONAY;
    TCurrencyField *queryTAKSITTAKSIT_TUTARI;
    TQuery *queryTUTAR;
    TStringField *tblTAKSITDEGISTAKSIT_TURU;
    TIntegerField *queryTUTAROTOMATIK_SAYI;
    TDateField *queryTUTARVADE_TARIHI;
    TCurrencyField *queryTUTARTAKSIT_TUTARI;
    TDateField *queryTUTARODEME_TARIHI;
    TCurrencyField *queryTUTARODEME_TUTARI;
    TCurrencyField *queryTUTARKALAN_BAKIYE;
    TFloatField *queryTUTARODEME_FISI;
    TIntegerField *queryTUTARSATIS_FISI;
    TStringField *queryTUTARMUSTERI_KODU;
    TStringField *queryTUTARAY_YIL;
    TStringField *queryTUTARTAKSIT_TURU;
    TStringField *queryTAKSITHARTAKSIT_TURU;
    TQuery *queryTAKSITLIST;
    TBooleanField *tblODEMEONAY;
    TIntegerField *tblODEMETAKSIT_NO;
    TQuery *queryDEVIRSIL;
    TIntegerField *queryDEVIRSILOTOMATIK_SAYI;
    TDateField *queryDEVIRSILVADE_TARIHI;
    TCurrencyField *queryDEVIRSILTAKSIT_TUTARI;
    TDateField *queryDEVIRSILODEME_TARIHI;
    TCurrencyField *queryDEVIRSILODEME_TUTARI;
    TCurrencyField *queryDEVIRSILKALAN_BAKIYE;
    TFloatField *queryDEVIRSILODEME_FISI;
    TIntegerField *queryDEVIRSILSATIS_FISI;
    TStringField *queryDEVIRSILMUSTERI_KODU;
    TStringField *queryDEVIRSILAY_YIL;
    TStringField *queryDEVIRSILTAKSIT_TURU;
    void __fastcall Ekle1Click(TObject *Sender);
    void __fastcall IslemYap(void);
    void __fastcall DevirFisiSil(AnsiString AyYil, AnsiString MusteriNo);
    void __fastcall Sil1Click(TObject *Sender);
    void __fastcall TaksitBakiyeBul(TDateTime Tarih);
    void __fastcall OdemeRaporu(void);
    void __fastcall FormShow(TObject *Sender);
    void __fastcall DBGrid1KeyDown(TObject *Sender, WORD &Key,
          TShiftState Shift);
    void __fastcall DBGrid1KeyPress(TObject *Sender, char &Key);
    void __fastcall YeniDevirFisi(void);
    void __fastcall tblODEMEAfterInsert(TDataSet *DataSet);
    void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
    void __fastcall DBGrid1CellClick(TColumn *Column);
    void __fastcall DBGrid1ColExit(TObject *Sender);
    void __fastcall OdemeBakiyeBul(TDateTime Tarih);
    void __fastcall MteriListesi1Click(TObject *Sender);
    void __fastcall OdemeGuncelle(void);
    int __fastcall TaksitNoBul(void);
    void __fastcall tblODEMEAfterPost(TDataSet *DataSet);
private:	// User declarations
public:		// User declarations
    __fastcall TfrmOdemeFisi(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmOdemeFisi *frmOdemeFisi;
extern float nToplamOdemeTutari;
//---------------------------------------------------------------------------
#endif
