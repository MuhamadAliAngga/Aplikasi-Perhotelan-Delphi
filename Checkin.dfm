object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form Checkin'
  ClientHeight = 580
  ClientWidth = 700
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  TextHeight = 15
  object Label1: TLabel
    Left = 88
    Top = 88
    Width = 113
    Height = 19
    Caption = 'Nama Pelanggan'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 88
    Top = 120
    Width = 83
    Height = 19
    Caption = 'No Identitas'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 88
    Top = 180
    Width = 70
    Height = 19
    Caption = 'No Kamar'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 88
    Top = 261
    Width = 110
    Height = 19
    Caption = 'Lama Menginap'
    FocusControl = DBEdit4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 88
    Top = 290
    Width = 101
    Height = 19
    Caption = 'Tanggal masuk'
    FocusControl = DBEdit5
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 88
    Top = 319
    Width = 103
    Height = 19
    Caption = 'Tanggal Keluar'
    FocusControl = DBEdit6
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 88
    Top = 387
    Width = 79
    Height = 19
    Caption = 'Keterangan'
    FocusControl = DBMemo1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object TypeKamar: TLabel
    Left = 88
    Top = 149
    Width = 83
    Height = 19
    Caption = 'Type Kamar'
    FocusControl = DBEdit7
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 88
    Top = 233
    Width = 42
    Height = 19
    Caption = 'Harga'
    FocusControl = DBEdit8
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 87
    Top = 349
    Width = 80
    Height = 19
    Caption = 'Total Harga'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 88
    Top = 206
    Width = 43
    Height = 19
    Caption = 'Lantai'
    FocusControl = DBEdit9
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DateTimePicker2: TDateTimePicker
    Left = 248
    Top = 319
    Width = 145
    Height = 23
    Date = 45453.000000000000000000
    Time = 0.298133090276678600
    TabOrder = 15
    OnChange = DateTimePicker2Change
  end
  object DateTimePicker1: TDateTimePicker
    Left = 248
    Top = 290
    Width = 145
    Height = 23
    Date = 45453.000000000000000000
    Time = 0.298066134258988300
    TabOrder = 14
    OnChange = DateTimePicker1Change
  end
  object ComboBox1: TComboBox
    Left = 248
    Top = 146
    Width = 145
    Height = 23
    TabOrder = 12
    Text = 'ComboBox1'
    OnChange = ComboBox1Change
    Items.Strings = (
      'Delux'
      'Standard'
      'Doble Bad')
  end
  object DBEdit1: TDBEdit
    Left = 248
    Top = 88
    Width = 233
    Height = 23
    DataField = 'nama_pelanggan'
    DataSource = DataModule1.UDSmenginap
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 248
    Top = 117
    Width = 233
    Height = 23
    DataField = 'no_ktp'
    DataSource = DataModule1.UDSmenginap
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 248
    Top = 175
    Width = 145
    Height = 23
    DataField = 'no_kamar'
    DataSource = DataModule1.UDSmenginap
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 248
    Top = 261
    Width = 129
    Height = 23
    DataField = 'lama_menginap'
    DataSource = DataModule1.UDSmenginap
    TabOrder = 3
    OnChange = DBEdit4Change
  end
  object DBEdit5: TDBEdit
    Left = 248
    Top = 290
    Width = 113
    Height = 23
    DataField = 'cek_in'
    DataSource = DataModule1.UDSmenginap
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 248
    Top = 319
    Width = 113
    Height = 23
    DataField = 'cek_out'
    DataSource = DataModule1.UDSmenginap
    TabOrder = 5
    OnChange = DBEdit6Change
  end
  object DBMemo1: TDBMemo
    Left = 248
    Top = 387
    Width = 265
    Height = 89
    DataField = 'ket'
    DataSource = DataModule1.UDSmenginap
    TabOrder = 6
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 700
    Height = 71
    Align = alTop
    Color = 13421258
    ParentBackground = False
    TabOrder = 7
    ExplicitWidth = 696
    object Label8: TLabel
      Left = 12
      Top = 15
      Width = 221
      Height = 23
      Caption = 'LUXURY HOTEL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Vast Shadow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 16
      Top = 40
      Width = 110
      Height = 15
      Caption = 'Tigaraksa, Tangerang'
    end
  end
  object BtnSimpan: TButton
    Left = 368
    Top = 496
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 8
    OnClick = BtnSimpanClick
  end
  object BtnBatal: TButton
    Left = 464
    Top = 496
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 9
  end
  object DBEdit7: TDBEdit
    Left = 248
    Top = 146
    Width = 129
    Height = 23
    DataField = 'nama_type'
    DataSource = DataModule1.UDStioekamar
    TabOrder = 10
    OnChange = DBEdit7Change
  end
  object DBEdit8: TDBEdit
    Left = 248
    Top = 232
    Width = 129
    Height = 23
    DataField = 'harga'
    DataSource = DataModule1.UDStioekamar
    TabOrder = 11
  end
  object Edit1: TEdit
    Left = 248
    Top = 349
    Width = 265
    Height = 23
    TabOrder = 13
    OnClick = DBEdit7Change
  end
  object BtnTambah: TButton
    Left = 272
    Top = 496
    Width = 75
    Height = 25
    Caption = 'Tambah'
    TabOrder = 16
    OnClick = BtnTambahClick
  end
  object DBEdit9: TDBEdit
    Left = 248
    Top = 203
    Width = 145
    Height = 23
    DataField = 'lantai'
    DataSource = DataModule1.UDSnokamar
    TabOrder = 17
  end
end
