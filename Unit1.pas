unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, StdCtrls, jpeg, ExtCtrls, Buttons,
  TeEngine, Series, TeeProcs, Chart, Math;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    edt_HasilPanen: TEdit;
    edt_PerKon: TEdit;
    edt_Bertambah: TEdit;
    edt_Berkurang: TEdit;
    edt_Banyak: TEdit;
    edt_Sedikit: TEdit;
    edt_naik: TEdit;
    edt_turun: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  hasilpanen, perkon, tambah, kurang, banyak, sedikit, naik, turun:Real;Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  ubertambah, uberkurang, ubanyak, usedikit :Single;
  OF_R1, OF_R2, OF_R3, OF_R4 : single;
  ImpNaik, ImpTurun: Single;
begin
  Form1.Hide;
  Form2.Show;

 hasilpanen := strtofloat(edt_hasilpanen.Text);
 perkon := strtofloat(edt_perkon.Text);
 tambah := strtofloat(edt_bertambah.Text);
 kurang := strtofloat(edt_berkurang.Text);
 banyak := strtofloat(edt_banyak.Text);
 sedikit := strtofloat(edt_sedikit.Text);
 naik := strtofloat(edt_naik.Text);
 turun := strtofloat(edt_turun.Text);

 //fuzzifikasi
 Form2.edt_bertambah.Text := FloatToStr((-(hasilpanen-tambah))/(tambah-kurang));
 Form2.edt_berkurang.Text := FloatToStr(((hasilpanen-kurang))/(tambah-kurang));
 Form2.edt_banyak.Text := FloatToStr((-(perkon-banyak))/(banyak-sedikit));
 Form2.edt_sedikit.Text := FloatToStr(((perkon-sedikit))/(banyak-sedikit));
 ubertambah := StrToFloat(Form2.edt_bertambah.Text);
 uberkurang := StrToFloat(Form2.edt_berkurang.Text);
 ubanyak := StrToFloat(Form2.edt_banyak.Text);
 usedikit := StrToFloat(Form2.edt_sedikit.Text);

 //Operasi fuzzy
 OF_R1 := Min(ubertambah,ubanyak);
 OF_R2 := Min(ubertambah,usedikit);
 OF_R3 := Min(uberkurang,ubanyak);
 OF_R4 := Min(uberkurang,usedikit);

 Form2.edt_Fuzzy1.Text := FloatToStr(OF_R1);
 Form2.edt_Fuzzy1.Text := FormatFloat('0.##',OF_R1);
 Form2.edt_Fuzzy2.Text := FloatToStr(OF_R2);
 Form2.edt_Fuzzy2.Text := FormatFloat('0.##',OF_R2);
 Form2.edt_Fuzzy3.Text := FloatToStr(OF_R3);
 Form2.edt_Fuzzy3.Text := FormatFloat('0.##',OF_R3);
 Form2.edt_Fuzzy4.Text := FloatToStr(OF_R4);
 Form2.edt_Fuzzy4.Text := FormatFloat('0.##',OF_R4);

 //Implikasi
 Form2.edt_Implikasi1.Text := FloatToStr(OF_R1);
 Form2.edt_Implikasi1.Text := FormatFloat('0.##',OF_R1);
 Form2.edt_Implikasi2.Text := FloatToStr(OF_R2);
 Form2.edt_Implikasi2.Text := FormatFloat('0.##',OF_R2);
 Form2.edt_Implikasi3.Text := FloatToStr(OF_R3);
 Form2.edt_Implikasi3.Text := FormatFloat('0.##',OF_R3);
 Form2.edt_Implikasi4.Text := FloatToStr(OF_R4);
 Form2.edt_Implikasi4.Text := FormatFloat('0.##',OF_R4);

 //Komposisi Aturan
 ImpNaik := Max(OF_R1, OF_R3);
 ImpTurun := Max(OF_R2, OF_R4);
 Form2.edt_KaTurun.Text := FloatToStr(ImpTurun);
 Form2.edt_KaTurun.Text := FormatFloat('0.##',ImpTurun);
 Form2.edt_KaNaik.Text := FloatToStr(ImpNaik);
 Form2.edt_KaNaik.Text := FormatFloat('0.##',ImpNaik);

end;

end.
