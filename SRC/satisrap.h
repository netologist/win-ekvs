//---------------------------------------------------------------------------

#ifndef satisrapH
#define satisrapH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <Qrctrls.hpp>
#include <QuickRpt.hpp>
#include <Db.hpp>
#include <DBTables.hpp>
//---------------------------------------------------------------------------
class TfrmSatisRaporu : public TForm
{
__published:	// IDE-managed Components
    TQuickRep *QuickRep1;
    TQRBand *DetailBand1;
    TQRBand *PageHeaderBand1;
    TQRLabel *QRLabel1;
    TQRBand *ColumnHeaderBand1;
    TQRLabel *QRLabel2;
    TQRLabel *QRLabel3;
    TQRLabel *QRLabel4;
    TQRLabel *QRLabel5;
    TQRLabel *QRLabel7;
    TQRLabel *QRLabel8;
    TQRLabel *QRLabel9;
    TQRLabel *QRLabel10;
    TQRLabel *QRLabel11;
    TQRLabel *QRLabel12;
    TQRLabel *QRLabel13;
    TDataSource *dsrcSATIS;
    TQuery *querySATIS;
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
    TQRLabel *QRLabel6;
    TQRSysData *QRSysData1;
    TQRLabel *QRLabel15;
    TQRDBText *QRDBText12;
    TIntegerField *querySATISOTOMATIK_SAYI;
    TBooleanField *querySATISHAREKET_TURU;
    TDateField *querySATISTARIH;
    TStringField *querySATISMUSTERI_NO;
    TStringField *querySATISMUSTERI_ADI;
    TStringField *querySATISMUSTERI_SOYADI;
    TStringField *querySATISKAYIT_NO;
    TStringField *querySATISSATICI;
    TCurrencyField *querySATISBIRIM_FIYATI;
    TFloatField *querySATISMAL_ADEDI;
    TDateField *querySATISILK_TAKSIT_TARIHI;
    TCurrencyField *querySATISMAL_BEDELI;
    TCurrencyField *querySATISPESINAT;
    TFloatField *querySATISTAKSIT_SAYISI;
    TCurrencyField *querySATISTAKSIT_TUTARI;
    TCurrencyField *querySATISKALAN_BORC;
    TMemoField *querySATISACIKLAMA;
    TStringField *querySATISURUN_NO;
    TStringField *querySATISURUN_ADI;
private:	// User declarations
public:		// User declarations
    __fastcall TfrmSatisRaporu(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmSatisRaporu *frmSatisRaporu;
//---------------------------------------------------------------------------
#endif
