//---------------------------------------------------------------------------

#ifndef taksitrapH
#define taksitrapH
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
class TfrmTaksitRaporu : public TForm
{
__published:	// IDE-managed Components
        TQuickRep *QuickRep1;
        TQRBand *ColumnHeaderBand1;
        TQRBand *DetailBand1;
        TQRBand *PageFooterBand1;
        TQRBand *PageHeaderBand1;
        TQRLabel *QRLabel1;
        TQRLabel *QRLabel2;
        TQRSysData *QRSysData1;
        TQRLabel *QRLabel3;
        TQRLabel *QRLabel4;
        TQRLabel *QRLabel5;
        TQRLabel *QRLabel6;
        TQRLabel *QRLabel8;
        TDataSource *dsrcTAKSIT;
        TQuery *queryTAKSIT;
        TQuery *queryMUSTERI;
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
        TQRDBText *QRDBText1;
        TQRDBText *QRDBText2;
        TQRDBText *QRDBText3;
        TQRDBText *QRDBText4;
        TQRDBText *QRDBText6;
        TQRLabel *QRLabel7;
        TQRLabel *QRLabel9;
        TQRDBText *QRDBText5;
        TQRDBText *QRDBText7;
        TQuery *queryTUTAR;
        TQRLabel *QRLabel10;
        TQRExpr *QRExpr1;
        TQRExpr *QRExpr2;
        TQRExpr *QRExpr3;
private:	// User declarations
public:		// User declarations
        __fastcall TfrmTaksitRaporu(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmTaksitRaporu *frmTaksitRaporu;
//---------------------------------------------------------------------------
#endif
