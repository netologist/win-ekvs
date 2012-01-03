//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "hareketlist.h"
#include "stokhar.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmHareketListesi *frmHareketListesi;
//---------------------------------------------------------------------------
__fastcall TfrmHareketListesi::TfrmHareketListesi(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfrmHareketListesi::Tarih_EditChange(TObject *Sender)
{
    queryHAREKET->Close();
    queryHAREKET->ParamByName("FATURA_NO")->AsString = AnsiUpperCase(FaturaNo_Edit->Text+"%");
    queryHAREKET->ParamByName("FIRMA")->AsString = AnsiUpperCase(Firma_Edit->Text+"%");
    queryHAREKET->Open();
}
//---------------------------------------------------------------------------
void __fastcall TfrmHareketListesi::FaturaNo_EditChange(TObject *Sender)
{
    queryHAREKET->Close();
    queryHAREKET->ParamByName("FATURA_NO")->AsString = AnsiUpperCase(FaturaNo_Edit->Text+"%");
    queryHAREKET->ParamByName("FIRMA")->AsString = AnsiUpperCase(Firma_Edit->Text+"%");
    queryHAREKET->Open();
}
//---------------------------------------------------------------------------
void __fastcall TfrmHareketListesi::Firma_EditChange(TObject *Sender)
{
    queryHAREKET->Close();
    queryHAREKET->ParamByName("FATURA_NO")->AsString = AnsiUpperCase(FaturaNo_Edit->Text+"%");
    queryHAREKET->ParamByName("FIRMA")->AsString = AnsiUpperCase(Firma_Edit->Text+"%");
    queryHAREKET->Open();
}
//---------------------------------------------------------------------------
void __fastcall TfrmHareketListesi::DBGrid1CellClick(TColumn *Column)
{
    AnsiString AKTARMA;
    AKTARMA = queryHAREKETKAYIT_NO->Value;

    frmStokHareketi->Anahtar();
    frmStokHareketi->tblGIRIS->Edit();
    frmStokHareketi->tblGIRIS->Filtered = true;
    frmStokHareketi->tblGIRIS->Filter = "[KAYIT_NO]='"+AKTARMA+"'";
    frmStokHareketi->tblGIRIS->Edit();
    frmStokHareketi->tbtnKAYDET->Enabled = false;
    frmHareketListesi->Close();
}
//---------------------------------------------------------------------------
void __fastcall TfrmHareketListesi::FormShow(TObject *Sender)
{
    queryHAREKET->Close();
    queryHAREKET->ParamByName("FATURA_NO")->AsString = AnsiUpperCase(FaturaNo_Edit->Text+"%");
    queryHAREKET->ParamByName("FIRMA")->AsString = AnsiUpperCase(Firma_Edit->Text+"%");
    queryHAREKET->Open();
}
//---------------------------------------------------------------------------

