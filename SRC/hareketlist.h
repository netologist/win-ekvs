//---------------------------------------------------------------------------

#ifndef hareketlistH
#define hareketlistH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <Mask.hpp>
#include <Db.hpp>
#include <DBTables.hpp>
//---------------------------------------------------------------------------
class TfrmHareketListesi : public TForm
{
__published:	// IDE-managed Components
    TGroupBox *GroupBox1;
    TDBGrid *DBGrid1;
    TGroupBox *GroupBox2;
    TLabel *Label2;
    TLabel *Label3;
    TEdit *FaturaNo_Edit;
    TEdit *Firma_Edit;
    TDataSource *dsrcHAREKET;
    TQuery *queryHAREKET;
    TDateField *queryHAREKETTARIH;
    TStringField *queryHAREKETMUSTERI_ADI;
    TStringField *queryHAREKETKAYIT_NO;
    TBooleanField *queryHAREKETHAREKET_TURU;
    void __fastcall Tarih_EditChange(TObject *Sender);
    void __fastcall FaturaNo_EditChange(TObject *Sender);
    void __fastcall Firma_EditChange(TObject *Sender);
    void __fastcall DBGrid1CellClick(TColumn *Column);
    void __fastcall FormShow(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall TfrmHareketListesi(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmHareketListesi *frmHareketListesi;
//---------------------------------------------------------------------------
#endif
