object DataModule1: TDataModule1
  Height = 530
  Width = 640
  object UniConnection1: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hotel'
    Username = 'root'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 224
    Top = 72
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 328
    Top = 72
  end
  object Unimenginap: TUniTable
    TableName = 'menginap'
    Connection = UniConnection1
    Active = True
    Left = 96
    Top = 176
    object Unimenginapid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
    end
    object Unimenginapnama_pelanggan: TStringField
      FieldName = 'nama_pelanggan'
      Required = True
      Size = 50
    end
    object Unimenginapno_ktp: TStringField
      FieldName = 'no_ktp'
      Required = True
      Size = 16
    end
    object Unimenginapno_kamar: TIntegerField
      FieldName = 'no_kamar'
      Required = True
    end
    object Unimenginaplama_menginap: TIntegerField
      FieldName = 'lama_menginap'
      Required = True
    end
    object Unimenginapcek_in: TDateField
      FieldName = 'cek_in'
      Required = True
    end
    object Unimenginapcek_out: TDateField
      FieldName = 'cek_out'
      Required = True
    end
    object Unimenginapket: TMemoField
      FieldName = 'ket'
      Required = True
      BlobType = ftMemo
    end
  end
  object UDSmenginap: TUniDataSource
    DataSet = Unimenginap
    Left = 192
    Top = 176
  end
  object Qmenginap: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select*from menginap')
    Active = True
    Left = 280
    Top = 176
  end
  object Qtipekamar: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select*from type_kamar')
    Active = True
    Left = 280
    Top = 248
  end
  object Unitipekamar: TUniTable
    TableName = 'type_kamar'
    Connection = UniConnection1
    Active = True
    Left = 96
    Top = 248
    object Unitipekamarid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
    end
    object Unitipekamarnama_type: TStringField
      FieldName = 'nama_type'
      Required = True
      Size = 255
    end
    object Unitipekamarharga: TIntegerField
      FieldName = 'harga'
      Required = True
    end
    object Unitipekamarket: TMemoField
      FieldName = 'ket'
      Required = True
      BlobType = ftMemo
    end
  end
  object UDStioekamar: TUniDataSource
    DataSet = Unitipekamar
    Left = 192
    Top = 248
  end
  object Uninokamar: TUniTable
    TableName = 'no_kamar'
    Connection = UniConnection1
    Active = True
    Left = 96
    Top = 312
    object Uninokamarid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
    end
    object Uninokamarlantai: TIntegerField
      FieldName = 'lantai'
      Required = True
    end
    object Uninokamarno: TStringField
      FieldName = 'no'
      Required = True
      Size = 2
    end
    object Uninokamartype_kamar: TIntegerField
      FieldName = 'type_kamar'
      Required = True
    end
  end
  object UDSnokamar: TUniDataSource
    DataSet = Uninokamar
    Left = 184
    Top = 312
  end
  object Qnokamar: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select*from no_kamar')
    Left = 280
    Top = 312
  end
  object UDShistori: TUniDataSource
    DataSet = Unihistori
    Left = 192
    Top = 384
  end
  object Unihistori: TUniTable
    TableName = 'histori'
    Connection = UniConnection1
    Left = 88
    Top = 384
    object Unihistoriid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object Unihistorinama_pelanggan: TStringField
      FieldName = 'nama_pelanggan'
      Required = True
      Size = 50
    end
    object Unihistorino_ktp: TIntegerField
      FieldName = 'no_ktp'
      Required = True
    end
    object Unihistorinama_type: TStringField
      FieldName = 'nama_type'
      Required = True
      Size = 50
    end
    object Unihistorino_kamar: TIntegerField
      FieldName = 'no_kamar'
      Required = True
    end
    object Unihistorilantai: TStringField
      FieldName = 'lantai'
      Required = True
      Size = 3
    end
    object Unihistoriharga: TIntegerField
      FieldName = 'harga'
      Required = True
    end
    object Unihistorilama_menginap: TIntegerField
      FieldName = 'lama_menginap'
      Required = True
    end
    object Unihistoricek_in: TDateField
      FieldName = 'cek_in'
      Required = True
    end
    object Unihistoricek_out: TDateField
      FieldName = 'cek_out'
      Required = True
    end
    object Unihistoritotal_harga: TIntegerField
      FieldName = 'total_harga'
      Required = True
    end
    object Unihistoriket: TMemoField
      FieldName = 'ket'
      Required = True
      BlobType = ftMemo
    end
  end
  object Qhistori: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select*from histori')
    Active = True
    Left = 280
    Top = 384
  end
end
