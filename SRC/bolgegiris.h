//---------------------------------------------------------------------------

#ifndef bolgegirisH
#define bolgegirisH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Buttons.hpp>
#include <ComCtrls.hpp>
#include <DBCtrls.hpp>
#include <Mask.hpp>
#include <Db.hpp>
#include <DBTables.hpp>
#include <DBGrids.hpp>
#include <ExtCtrls.hpp>
#include <Grids.hpp>
//---------------------------------------------------------------------------
class TfrmBolgeGirisi : public TForm
{
__published:	// IDE-managed Components
    TDataSource *DataSource3;
    TTable *Table2;
    TGroupBox *GroupBox4;
    TDBGrid *DBGrid2;
    TDBNavigator *DBNavigator2;
    void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
    __fastcall TfrmBolgeGirisi(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmBolgeGirisi *frmBolgeGirisi;
//---------------------------------------------------------------------------
#endif
