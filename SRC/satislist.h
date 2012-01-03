//---------------------------------------------------------------------------

#ifndef satislistH
#define satislistH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <Db.hpp>
#include <DBTables.hpp>
//---------------------------------------------------------------------------
class TfrmSatisListesi : public TForm
{
__published:	// IDE-managed Components
    TGroupBox *GroupBox1;
    TDBGrid *DBGrid1;
    TLabel *Label1;
    TEdit *Edit1;
    TDataSource *dsrcSATISLIST;
    TQuery *querySATISLIST;
    TIntegerField *querySATISLISTOTOMATIK_SAYI;
    TDateField *querySATISLISTTARIH;
    TStringField *querySATISLISTMUSTERI_NO;
    TStringField *querySATISLISTMUSTERI_ADI;
    TStringField *querySATISLISTMUSTERI_SOYADI;
    void __fastcall Edit1Change(TObject *Sender);
    void __fastcall DBGrid1CellClick(TColumn *Column);
    void __fastcall FormShow(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall TfrmSatisListesi(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmSatisListesi *frmSatisListesi;
//---------------------------------------------------------------------------
#endif
