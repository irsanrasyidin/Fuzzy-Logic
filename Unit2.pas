unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, StdCtrls, jpeg, ExtCtrls, Buttons,
  TeEngine, Series, TeeProcs, Chart, Math;

type
  TForm2 = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edt_bertambah: TEdit;
    edt_berkurang: TEdit;
    edt_banyak: TEdit;
    edt_sedikit: TEdit;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    pnl2: TPanel;
    edt_Fuzzy1: TEdit;
    edt_Fuzzy2: TEdit;
    edt_Fuzzy3: TEdit;
    edt_Fuzzy4: TEdit;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    edt_Implikasi1: TEdit;
    edt_Implikasi2: TEdit;
    edt_Implikasi3: TEdit;
    edt_Implikasi4: TEdit;
    lbl23: TLabel;
    lbl24: TLabel;
    lbl25: TLabel;
    lbl26: TLabel;
    lbl27: TLabel;
    lbl28: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    lbl29: TLabel;
    lbl30: TLabel;
    lbl31: TLabel;
    lbl32: TLabel;
    edt_KANaik: TEdit;
    edt_KATurun: TEdit;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    btn1: TButton;
    lbl33: TLabel;
    edt11: TEdit;
    btn2: TButton;
    pnl3: TPanel;
    pnl4: TPanel;
    pnl5: TPanel;
    pnl6: TPanel;
    btn3: TButton;
    lbl34: TLabel;
    lbl35: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
var
  random1,random2,random3,random4,random5,random6,random7,random8,random9,random10,naik,turun: Integer;
begin
 naik:= StrToInt(Form1.edt_naik.Text);
 turun:= StrToInt(Form1.edt_turun.Text);
 random1:= RandomRange(naik,turun);
 random2:= RandomRange(naik,turun);
 random3:= RandomRange(naik,turun);
 random4:= RandomRange(naik,turun);
 random5:= RandomRange(naik,turun);
 random6:= RandomRange(naik,turun);
 random7:= RandomRange(naik,turun);
 random8:= RandomRange(naik,turun);
 random9:= RandomRange(naik,turun);
 random10:= RandomRange(naik,turun);

 edt1.Text := IntToStr(random1);
 edt2.Text := IntToStr(random2);
 edt3.Text := IntToStr(random3);
 edt4.Text := IntToStr(random4);
 edt5.Text := IntToStr(random5);
 edt6.Text := IntToStr(random6);
 edt7.Text := IntToStr(random7);
 edt8.Text := IntToStr(random8);
 edt9.Text := IntToStr(random9);
 edt10.Text := IntToStr(random10);


end;

procedure TForm2.btn3Click(Sender: TObject);
begin
 Form2.Hide;
 Form1.Show;
end;

procedure TForm2.btn2Click(Sender: TObject);
var
  Centroid1, Centroid2, Centroid3, Centroid4, Centroid5,
  Centroid6, Centroid7, Centroid8, Centroid9, Centroid10 : Integer ;
  KaNaik, KaTurun, HasilAkhir : Single;
begin
  Centroid1 := StrToInt(edt1.Text);
  Centroid2 := StrToInt(edt2.Text);
  Centroid3 := StrToInt(edt3.Text);
  Centroid4 := StrToInt(edt4.Text);
  Centroid5 := StrToInt(edt5.Text);
  Centroid6 := StrToInt(edt6.Text);
  Centroid7 := StrToInt(edt7.Text);
  Centroid8 := StrToInt(edt8.Text);
  Centroid9 := StrToInt(edt9.Text);
  Centroid10 := StrToInt(edt10.Text);
  KaNaik := StrToFloat(edt_KaNaik.Text);
  KaTurun := StrToFloat(edt_KaTurun.Text);

  HasilAkhir := Round ((((Centroid1+centroid2+centroid3+centroid4+centroid5)*KaNaik+(Centroid6+centroid7+centroid8+centroid9+centroid10)*
  KaTurun)/((KaNaik*5)+(KaTurun*5))));
  edt11.Text := FloatToStr(HasilAkhir) ;
  


end;

end.
