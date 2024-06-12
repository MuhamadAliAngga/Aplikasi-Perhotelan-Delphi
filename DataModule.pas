unit DataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Uni, DBAccess, MemDS, UniProvider,
  MySQLUniProvider;

type
  TDataModule1 = class(TDataModule)
    UniConnection1: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
    Unimenginap: TUniTable;
    UDSmenginap: TUniDataSource;
    Qmenginap: TUniQuery;
    Unimenginapid: TIntegerField;
    Unimenginapnama_pelanggan: TStringField;
    Unimenginapno_ktp: TStringField;
    Unimenginapno_kamar: TIntegerField;
    Unimenginaplama_menginap: TIntegerField;
    Unimenginapcek_in: TDateField;
    Unimenginapcek_out: TDateField;
    Unimenginapket: TMemoField;
    Qtipekamar: TUniQuery;
    Unitipekamar: TUniTable;
    UDStioekamar: TUniDataSource;
    Unitipekamarid: TIntegerField;
    Unitipekamarnama_type: TStringField;
    Unitipekamarharga: TIntegerField;
    Unitipekamarket: TMemoField;
    Uninokamar: TUniTable;
    UDSnokamar: TUniDataSource;
    Qnokamar: TUniQuery;
    Uninokamarid: TIntegerField;
    Uninokamarlantai: TIntegerField;
    Uninokamarno: TStringField;
    Uninokamartype_kamar: TIntegerField;
    UDShistori: TUniDataSource;
    Unihistori: TUniTable;
    Qhistori: TUniQuery;
    Unihistoriid: TIntegerField;
    Unihistorinama_pelanggan: TStringField;
    Unihistorino_ktp: TIntegerField;
    Unihistorinama_type: TStringField;
    Unihistorino_kamar: TIntegerField;
    Unihistorilantai: TStringField;
    Unihistoriharga: TIntegerField;
    Unihistorilama_menginap: TIntegerField;
    Unihistoricek_in: TDateField;
    Unihistoricek_out: TDateField;
    Unihistoritotal_harga: TIntegerField;
    Unihistoriket: TMemoField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
