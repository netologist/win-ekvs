//---------------------------------------------------------------------------

#ifndef odemerapH
#define odemerapH
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
class TfrmOdemeRaporu : public TForm
{
__published:	// IDE-managed Components
        TQuickRep *QuickRep1;
        TQRBand *DetailBand1;
        TQRBand *ColumnHeaderBand1;
        TQRBand *PageFooterBand1;
        TQRBand *PageHeaderBand1;
        TQRLabel *QRLabel1;
        TQRLabel *QRLabel2;
        TQRSysData *QRSysData1;
        TQRLabel *QRLabel3;
        TQRLabel *QRLabel4;
        TQRLabel *QRLabel5;
        TQRLabel *QRLabel6;
        TQRLabel *QRLabel7;
        TDataSource *dsrcODEME;
        TQuery *queryODEME;
        TQRDBText *QRDBText1;
        TQRDBText *QRDBText2;
        TQRDBText *QRDBText3;
        TQRDBText *QRDBText4;
        TQRDBText *QRDBText5;
        TQRLabel *QRLabel8;
        TQRDBText *QRDBText6;
        TQRLabel *QRLabel9;
        TQRExpr *QRExpr1;
        TQRLabel *QRLabel10;
        TQRSysData *QRSysData2;
        TQRShape *QRShape1;
private:	// User declarations
public:		// User declarations
        __fastcall TfrmOdemeRaporu(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmOdemeRaporu *frmOdemeRaporu;
//---------------------------------------------------------------------------
#endif
