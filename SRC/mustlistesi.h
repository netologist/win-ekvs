//---------------------------------------------------------------------------

#ifndef mustlistesiH
#define mustlistesiH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Buttons.hpp>
#include <DBCtrls.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <Mask.hpp>
#include <Db.hpp>
#include <DBTables.hpp>
#include <ComCtrls.hpp>
#include <ToolWin.hpp>
//---------------------------------------------------------------------------
class TfrmMusteriListesi : public TForm
{
__published:	// IDE-managed Components
    TGroupBox *GroupBox1;
    TGroupBox *GroupBox2;
    TDBGrid *DBGrid1;
    TEdit *Edit1;
    TDataSource *DataSource1;
    TQuery *Query1;
    TToolBar *ToolBar1;
    TToolButton *tbtnKLEKLE;
    TToolButton *tbtnKLCIKAR;
    TToolButton *ToolButton3;
    TToolButton *tbtnAKTIF;
    TToolButton *tbtnPASIF;
    TBitBtn *BitBtn2;
    TLabel *lblDurumEtiketi;
    TToolButton *ToolButton2;
    TToolButton *ToolButton1;
    TEdit *AYAR_Edit;
    TLabel *Label1;
    void __fastcall BitBtn2Click(TObject *Sender);
    void __fastcall Edit1Change(TObject *Sender);
    void __fastcall CheckBox1Click(TObject *Sender);
    void __fastcall ComboBox1Click(TObject *Sender);
    void __fastcall RadioButton2Click(TObject *Sender);
    void __fastcall RadioButton1Click(TObject *Sender);
    void __fastcall Sorgula(void);
    void __fastcall OdemeSecimi(void);
    void __fastcall MusteriSecimi(void);
    void __fastcall SatisSecimi(void);
    AnsiString __fastcall Durum_Etiketi(void);
    void __fastcall DBGrid1CellClick(TColumn *Column);
    void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
    void __fastcall RaporSecimi(void);
    void __fastcall tbtnPASIFClick(TObject *Sender);
    void __fastcall tbtnAKTIFClick(TObject *Sender);
    void __fastcall tbtnKLEKLEClick(TObject *Sender);
    void __fastcall tbtnKLCIKARClick(TObject *Sender);
    void __fastcall FormActivate(TObject *Sender);
    void __fastcall FormShow(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall TfrmMusteriListesi(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmMusteriListesi *frmMusteriListesi;
//---------------------------------------------------------------------------
#endif
