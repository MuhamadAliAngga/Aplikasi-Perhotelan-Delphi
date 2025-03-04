unit Checkin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    Panel2: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    BtnSimpan: TButton;
    BtnBatal: TButton;
    TypeKamar: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    ComboBox1: TComboBox;
    Label10: TLabel;
    Edit1: TEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    BtnTambah: TButton;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    procedure BtnSimpanClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnTambahClick(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure DBEdit6Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses DataModule;

procedure TForm2.BtnSimpanClick(Sender: TObject);
begin
  if
    (DBEdit1.Text = '') or
    (DBEdit2.Text = '') or
    (DBEdit3.Text = '') or
    (DBEdit4.Text = '') or
    (DBEdit5.Text = '') or
    (DBEdit6.Text = '') or
    (DBEdit7.Text = '') or
    (DBEdit8.Text = '') or
    (Edit1.Text = '') or
    (DBMemo1.Text = '') then
  begin
    ShowMessage('Data Tidak Boleh Kosong');
    DBEdit1.SetFocus;
  end
  else
  begin
    // Simpan data ke Unimenginap
    DataModule1.Unimenginap.FieldByName('nama_pelanggan').AsString := DBEdit1.Text;
    DataModule1.Unimenginap.FieldByName('no_ktp').AsString := DBEdit2.Text;
    DataModule1.Unimenginap.FieldByName('no_kamar').AsString := DBEdit3.Text;
    DataModule1.Unimenginap.FieldByName('lama_menginap').AsString := DBEdit4.Text;
    DataModule1.Unimenginap.FieldByName('cek_in').AsString := DBEdit5.Text;
    DataModule1.Unimenginap.FieldByName('cek_out').AsString := DBEdit6.Text;
    DataModule1.Unimenginap.FieldByName('ket').AsString := DBMemo1.Text;
    DataModule1.Unimenginap.Post;

    // Simpan data ke Unihistori
    DataModule1.Unihistori.FieldByName('nama_pelanggan').AsString := DBEdit1.Text;
    DataModule1.Unihistori.FieldByName('no_ktp').AsString := DBEdit2.Text;
    DataModule1.Unihistori.FieldByName('no_kamar').AsString := DBEdit3.Text;
    DataModule1.Unihistori.FieldByName('lama_menginap').AsString := DBEdit4.Text;
    DataModule1.Unihistori.FieldByName('cek_in').AsString := DBEdit5.Text;
    DataModule1.Unihistori.FieldByName('cek_out').AsString := DBEdit6.Text;
    DataModule1.Unihistori.FieldByName('nam_type').AsString := DBEdit7.Text;
    DataModule1.Unihistori.FieldByName('harga').AsString := DBEdit8.Text;
    DataModule1.Unihistori.FieldByName('lantai').AsString := DBEdit9.Text;
    DataModule1.Unihistori.FieldByName('total_harga').AsString := Edit1.Text;
    DataModule1.Unihistori.FieldByName('ket').AsString := DBMemo1.Text;
    DataModule1.Unihistori.Post;

//    // Simpan data ke Unitipekamar
//    DataModule1.Unitipekamar.FieldByName('nama_type').AsString := DBEdit6.Text;
//    DataModule1.Unitipekamar.FieldByName('Harga').AsString := DBEdit7.Text;
//    DataModule1.Unitipekamar.FieldByName('ket').AsString := DBMemo1.Text;
//    DataModule1.Unitipekamar.Post;
    ShowMessage('Data Berhasil Disimpan');
    OnActivate(Sender);
  end;
end;

procedure TForm2.BtnTambahClick(Sender: TObject);
begin
DataModule1.Unimenginap.Append;
BtnTambah.Enabled:=False;
BtnSimpan.Enabled:=True;
BtnBatal.Enabled:=True;

DBEdit1.Enabled:=True;
DBEdit2.Enabled:=True;
DBEdit3.Enabled:=True;
DBEdit9.Enabled:=True;
ComboBox1.Enabled:=True;
DateTimePicker1.Enabled:=True;
DateTimePicker2.Enabled:=True;
DBmemo1.Enabled:=True;
DBEdit1.Setfocus;
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
DBEdit7.Text:=Combobox1.text;
end;

procedure TForm2.DateTimePicker1Change(Sender: TObject);
begin
DBEdit5.Text:=DateToStr(datetimepicker1.Date);
end;

procedure TForm2.DateTimePicker2Change(Sender: TObject);
begin
DBEdit6.Text:=DateToStr(datetimepicker2.Date);
end;

procedure TForm2.DBEdit4Change(Sender: TObject);
var
  nilai1, nilai2, hasil: Integer;
begin
  if TryStrToInt(DBEdit4.Text, nilai1) and TryStrToInt(DBEdit8.Text, nilai2) then
  begin
    hasil := nilai1 * nilai2;
    Edit1.Text := IntToStr(hasil);
  end
  else
  begin
    Edit1.Text := '';
  end;
end;

procedure TForm2.DBEdit6Change(Sender: TObject);
var
  tanggal1, tanggal2: TDateTime;
  selisihHari: Integer;
begin
  if TryStrToDate(DBEdit5.Text, tanggal1) and TryStrToDate(DBEdit6.Text, tanggal2) then
  begin
    selisihHari := Trunc(tanggal2) - Trunc(tanggal1);
    DBEdit4.Text := IntToStr(selisihHari);
  end
  else
  begin
    DBEdit4.Text := '';
  end;
end;


procedure TForm2.DBEdit7Change(Sender: TObject);
begin
  if DataModule1.Unitipekamar.Locate('nama_type', DBEdit7.Text, []) then
  begin
    DBEdit8.Text := DataModule1.Unitipekamar.FieldByName('harga').AsString;
  end
  else
  begin
    DBEdit8.Text := '';
  end;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
BtnTambah.Enabled:=True;
BtnSimpan.Enabled:=False;
BtnBatal.Enabled:=False;


DBEdit1.Enabled:=False;
DBEdit2.Enabled:=False;
DBEdit3.Enabled:=False;
DBEdit4.Enabled:=False;
DBEdit5.Enabled:=False;
DBEdit6.Enabled:=False;
DBEdit7.Enabled:=False;
DBEdit8.Enabled:=False;
DBEdit9.Enabled:=False;
Edit1.Enabled:=False;
ComboBox1.Enabled:=False;
DateTimePicker1.Enabled:=False;
DateTimePicker2.Enabled:=False;
DBmemo1.Enabled:=False;

DBEdit1.Text:='';
DBEdit2.Text:='';
DBEdit3.Text:='';
DBEdit4.Text:='';
DBEdit5.Text:='';
DBEdit6.Text:='';
DBEdit7.Text:='';
DBEdit8.Text:='';
DBEdit9.Text:='';
Edit1.Enabled:=False;
ComboBox1.Text:='';
DateTimePicker1.Date;
DateTimePicker2.Date;
DBmemo1.Text:='';

end;

end.
