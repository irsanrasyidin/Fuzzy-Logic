object Form1: TForm1
  Left = 697
  Top = 208
  Width = 544
  Height = 435
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 528
    Height = 396
    Align = alClient
    TabOrder = 0
    object lbl1: TLabel
      Left = 16
      Top = 72
      Width = 161
      Height = 20
      Caption = 'Permintaan Konsumen'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 272
      Top = 72
      Width = 117
      Height = 20
      Caption = 'Persediaan Stok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 16
      Top = 184
      Width = 61
      Height = 20
      Caption = 'Produksi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 272
      Top = 184
      Width = 37
      Height = 20
      Caption = 'Case'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 16
      Top = 112
      Width = 60
      Height = 13
      Caption = 'Bertambah : '
    end
    object lbl6: TLabel
      Left = 16
      Top = 144
      Width = 58
      Height = 13
      Caption = 'Berkurang : '
    end
    object lbl7: TLabel
      Left = 272
      Top = 112
      Width = 45
      Height = 13
      Caption = 'Benyak : '
    end
    object lbl8: TLabel
      Left = 272
      Top = 152
      Width = 41
      Height = 13
      Caption = 'Sedikit : '
    end
    object lbl9: TLabel
      Left = 16
      Top = 224
      Width = 31
      Height = 13
      Caption = 'Naik : '
    end
    object lbl10: TLabel
      Left = 16
      Top = 256
      Width = 37
      Height = 13
      Caption = 'Turun : '
    end
    object lbl11: TLabel
      Left = 272
      Top = 216
      Width = 62
      Height = 13
      Caption = 'Persediaan : '
    end
    object lbl12: TLabel
      Left = 272
      Top = 256
      Width = 53
      Height = 13
      Caption = 'Permintaan'
    end
    object lbl13: TLabel
      Left = 16
      Top = 32
      Width = 123
      Height = 13
      Caption = 'Irsan Rasyidin 152017012'
    end
    object edt_HasilPanen: TEdit
      Left = 344
      Top = 216
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edt_PerKon: TEdit
      Left = 344
      Top = 248
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edt_Bertambah: TEdit
      Left = 96
      Top = 112
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edt_Berkurang: TEdit
      Left = 96
      Top = 144
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object edt_Banyak: TEdit
      Left = 344
      Top = 112
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object edt_Sedikit: TEdit
      Left = 344
      Top = 144
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object edt_naik: TEdit
      Left = 96
      Top = 216
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object edt_turun: TEdit
      Left = 96
      Top = 248
      Width = 121
      Height = 21
      TabOrder = 7
    end
    object btn1: TButton
      Left = 192
      Top = 328
      Width = 105
      Height = 25
      Caption = 'FUZZIFIKASI'
      TabOrder = 8
      OnClick = btn1Click
    end
  end
end
