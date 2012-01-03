//---------------------------------------------------------------------------

#ifndef saticiH
#define saticiH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Db.hpp>
#include <DBCtrls.hpp>
#include <DBGrids.hpp>
#include <DBTables.hpp>
#include <ExtCtrls.hpp>
#include <Grids.hpp>
//---------------------------------------------------------------------------
class TfrmSatici : public TForm
{
__published:	// IDE-managed Components
    TDBNavigator *DBNavigator1;
    TGroupBox *GroupBox1;
    TDBGrid *DBGrid1;
    TDataSource *dsrcSATICI;
    TTable *tblSATICI;
    void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
    __fastcall TfrmSatici(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmSatici *frmSatici;
//---------------------------------------------------------------------------
#endif
