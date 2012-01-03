//---------------------------------------------------------------------------

#ifndef musteritakH
#define musteritakH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Db.hpp>
#include <DBTables.hpp>
#include <ExtCtrls.hpp>
#include <Qrctrls.hpp>
#include <QuickRpt.hpp>
//---------------------------------------------------------------------------
class TfrmMusteriTaksitRaporu : public TForm
{
__published:	// IDE-managed Components
    TQuickRep *QuickRep1;
    TQRSubDetail *QRSubDetail1;
    TQRDBText *QRDBText22;
    TQRDBText *QRDBText23;
    TQRDBText *QRDBText24;
    TQRDBText *QRDBText25;
    TQuery *queryMUSTERI;
    TQuery *queryTAKSIT;
    TStringField *queryMUSTERIM_NO;
    TStringField *queryMUSTERIM_ADI;
    TStringField *queryMUSTERIM_SOYADI;
    TStringField *queryMUSTERIM_CADDE;
    TStringField *queryMUSTERIM_SOKAK;
    TStringField *queryMUSTERIM_KAPINO;
    TStringField *queryMUSTERIM_BOLGE;
    TStringField *queryMUSTERIM_MAHALLE;
    TStringField *queryMUSTERIM_EVTEL;
    TStringField *queryMUSTERIM_CEPTEL;
    TStringField *queryMUSTERIM_ISTEL1;
    TStringField *queryMUSTERIM_ISTEL2;
    TStringField *queryMUSTERIK_ADI;
    TStringField *queryMUSTERIK_SOYADI;
    TStringField *queryMUSTERIK_CADDE;
    TStringField *queryMUSTERIK_SOKAK;
    TStringField *queryMUSTERIK_KAPINO;
    TStringField *queryMUSTERIK_BOLGE;
    TStringField *queryMUSTERIK_MAHALLE;
    TStringField *queryMUSTERIK_EVTEL;
    TStringField *queryMUSTERIK_CEPTEL;
    TStringField *queryMUSTERIK_ISTEL1;
    TStringField *queryMUSTERIK_ISTEL2;
    TStringField *queryMUSTERIDURUM;
    TMemoField *queryMUSTERIKARALISTE_ACIKLAMASI;
    TStringField *queryMUSTERIKARA_LISTE;
    TCurrencyField *queryMUSTERIAYLIK_TAKSIT;
    TCurrencyField *queryMUSTERIMAL_BEDELI;
    TCurrencyField *queryMUSTERIODENEN_TUTAR;
    TCurrencyField *queryMUSTERIKALAN_BORC;
    TDateField *queryMUSTERISON_TAKSIT_TARIHI;
    TQRBand *DetailBand1;
    TQRShape *QRShape1;
    TQRLabel *QRLabel2;
    TQRLabel *QRLabel3;
    TQRLabel *QRLabel4;
    TQRLabel *QRLabel5;
    TQRLabel *QRLabel6;
    TQRLabel *QRLabel7;
    TQRLabel *QRLabel8;
    TQRLabel *QRLabel9;
    TQRLabel *QRLabel10;
    TQRLabel *QRLabel11;
    TQRLabel *QRLabel12;
    TQRDBText *QRDBText1;
    TQRDBText *QRDBText2;
    TQRDBText *QRDBText3;
    TQRDBText *QRDBText4;
    TQRDBText *QRDBText5;
    TQRDBText *QRDBText6;
    TQRDBText *QRDBText7;
    TQRDBText *QRDBText8;
    TQRDBText *QRDBText9;
    TQRDBText *QRDBText10;
    TQRDBText *QRDBText11;
    TQRLabel *QRLabel13;
    TQRLabel *QRLabel23;
    TQRLabel *QRLabel14;
    TQRLabel *QRLabel15;
    TQRLabel *QRLabel16;
    TQRLabel *QRLabel17;
    TQRLabel *QRLabel18;
    TQRLabel *QRLabel19;
    TQRLabel *QRLabel20;
    TQRLabel *QRLabel21;
    TQRDBText *QRDBText12;
    TQRDBText *QRDBText13;
    TQRDBText *QRDBText14;
    TQRDBText *QRDBText15;
    TQRDBText *QRDBText16;
    TQRDBText *QRDBText17;
    TQRDBText *QRDBText18;
    TQRDBText *QRDBText19;
    TQRDBText *QRDBText20;
    TQRDBText *QRDBText21;
    TQRBand *GroupHeaderBand1;
    TQRLabel *QRLabel24;
    TQRLabel *QRLabel25;
    TQRLabel *QRLabel26;
    TQRLabel *QRLabel27;
    TQRLabel *QRLabel1;
    TQRShape *QRShape2;
    TQRShape *QRShape3;
    TQRShape *QRShape4;
    TQRShape *QRShape5;
    TQRShape *QRShape6;
    TQRShape *QRShape7;
    TDataSource *dsrcMUSTERI;
    TDateField *queryTAKSITVADE_TARIHI;
    TCurrencyField *queryTAKSITTAKSIT_TUTARI;
    TCurrencyField *queryTAKSITODEME_TUTARI;
    TCurrencyField *queryTAKSITKALAN_BAKIYE;
    TQRShape *QRShape8;
    TQRShape *QRShape9;
    TQRShape *QRShape14;
    TQRLabel *QRLabel22;
    TQRLabel *QRLabel29;
    TQRLabel *QRLabel30;
    TQRLabel *QRLabel31;
    TQRShape *QRShape10;
    TQRDBText *QRDBText26;
    TQRShape *QRShape11;
    TQRDBText *QRDBText27;
    TQRShape *QRShape12;
    TQRDBText *QRDBText28;
    TQRShape *QRShape13;
    TQRDBText *QRDBText29;
    void __fastcall QRSubDetail1NeedData(TObject *Sender, bool &MoreData);
private:	// User declarations
public:		// User declarations
    __fastcall TfrmMusteriTaksitRaporu(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmMusteriTaksitRaporu *frmMusteriTaksitRaporu;
//---------------------------------------------------------------------------
#endif
