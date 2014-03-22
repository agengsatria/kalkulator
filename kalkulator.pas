unit kalkulator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    nilai1: TEdit;
    nilai2: TEdit;
    kolomhasil: TEdit;
    Ttambah: TButton;
    Tkurang: TButton;
    Tkali: TButton;
    Tbagi: TButton;
    Tmod: TButton;
    Tdiv: TButton;
    Tkeluar: TButton;
    Tclear: TButton;
    procedure TkeluarClick(Sender: TObject);
    procedure TtambahClick(Sender: TObject);
    procedure TkurangClick(Sender: TObject);
    procedure TkaliClick(Sender: TObject);
    procedure TbagiClick(Sender: TObject);
    procedure TdivClick(Sender: TObject);
    procedure TmodClick(Sender: TObject);
    procedure TclearClick(Sender: TObject);
    procedure angkaDoang(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  angka1,angka2,hasil :Real;  //membaca bilangan angka dalam bentuk desimal
  nil1,nil2,hasilnya:integer;
implementation

{$R *.dfm}

procedure TForm1.TkeluarClick(Sender: TObject);
begin
if application.MessageBox('Beneran Gan Mau Pergi...','Pilihan ada padamu  ??',MB_YesNo)=ID_yes then
  begin
    showmessage('yaudah deh -_- , goodbye Gan ... ^_^'); close;
  end
  else
  begin
    showmessage('Silahkan Dicobain lagi Gan ^_^ ... ');
    end;
    end;

procedure TForm1.TtambahClick(Sender: TObject);
begin
//periksa nilai1 dan nilai2 yang belum terisi angka
  if (nilai1.Text ='') then
  begin
    nilai1.Text := '0'; //nilai1 menjadi 0
  end;
  if (nilai2.Text ='') then
  begin
  nilai2.Text :='0';  //nilai2 menjadi 0
  end;
//inputan merubah variabel angka1 dan angka2 dari tipe data string menjadi tipe data numberik
angka1:=StrToFloat(nilai1.Text);
angka2:=StrToFloat(nilai2.Text);
//proses penjumlahan variabel angka1 dan angka2
hasil:=angka1+angka2;
//output hasil tambah angka1 dan angka2 dirubah dari tipe data numberik menjadi tipe data string
kolomhasil.Text:=FloatToStr(hasil);
end;

procedure TForm1.TkurangClick(Sender: TObject);
begin
//periksa nilai1 dan nilai2 yang belum terisi angka
  if (nilai1.Text ='') then
  begin
    nilai1.Text := '0'; //nilai1 menjadi 0
  end;
  if (nilai2.Text ='') then
  begin
  nilai2.Text :='0';  //nilai2 menjadi 0
  end;
//inputan merubah variabel angka1 dan angka2 dari tipe data string menjadi tipe data numberik
angka1:=StrToFloat(nilai1.Text);
angka2:=StrToFloat(nilai2.Text);
//proses pengurangan variabel angka1 dan angka2
hasil:=angka1-angka2;
//output hasil kurang angka1 dan angka2 dirubah dari tipe data numberik menjadi tipe data string
kolomhasil.Text:=FloatToStr(hasil);
end;

procedure TForm1.TkaliClick(Sender: TObject);
begin
//periksa nilai1 dan nilai2 yang belum terisi angka
  if (nilai1.Text ='') then
  begin
    nilai1.Text := '0'; //nilai1 menjadi 0
  end;
  if (nilai2.Text ='') then
  begin
  nilai2.Text :='0';  //nilai2 menjadi 0
  end;
//inputan merubah variabel angka1 dan angka2 dari tipe data string menjadi tipe data numberik
angka1:=StrToFloat(nilai1.Text);
angka2:=StrToFloat(nilai2.Text);
//proses perkalian variabel angka1 dan angka2
hasil:=angka1*angka2;
//output hasil kali angka1 dan angka2 dirubah dari tipe data numberik menjadi tipe data string
kolomhasil.Text:=FloatToStr(hasil);
end;

procedure TForm1.TbagiClick(Sender: TObject);
begin
//inputan merubah variabel angka1 dan angka2 dari tipe data string menjadi tipe data numberik
angka1:=StrToFloat(nilai1.Text);
angka2:=StrToFloat(nilai2.Text);
//proses pembagian variabel angka1 dan angka2
hasil:=angka1/angka2;
//output hasil bagi angka1 dan angka2 dirubah dari tipe data numberik menjadi tipe data string
kolomhasil.Text:=FloatToStr(hasil);
end;

procedure TForm1.TdivClick(Sender: TObject);
begin
//inputan merubah variabel nil1 dan nil2 dari tipe data string menjadi integer
nil1:=StrToInt(nilai1.Text);
nil2:=StrToInt(nilai2.Text);
//proses Div variabel nil1 dan nil2
hasilnya:=nil1 div nil2;
//output hasil div nil1 dan nil2 dirubah dari integer menjadi tipe data string
kolomhasil.Text:=IntToStr(hasilnya);
end;

procedure TForm1.TmodClick(Sender: TObject);
begin
//inputan merubah variabel nil1 dan nil2 dari tipe data string menjadi integer
nil1:=StrToInt(nilai1.Text);
nil2:=StrToInt(nilai2.Text);
//proses mod variabel nil1 dan nil2
hasilnya:=nil1 mod nil2;
//output hasil mod nil1 dan nil2 dirubah dari integer menjadi tipe data string
kolomhasil.Text:=IntToStr(hasilnya);
end;


procedure TForm1.TclearClick(Sender: TObject);
begin
nilai1.Clear;
nilai2.Clear;
kolomhasil.Text:='??';
end;

procedure TForm1.angkaDoang(Sender: TObject; var Key: Char);
begin
//mencegah masukan berupa karakter
if not (key in['0'..'9',#8,#13]) then // #8 (backspase) #13 (enter)
 begin key :=#0; //supaya tidak bisa di input kecuali key in (angka)
 ShowMessage('cuma bisa input angka Gan ,.. Karakter belum support');
 end;
 end;

end.
