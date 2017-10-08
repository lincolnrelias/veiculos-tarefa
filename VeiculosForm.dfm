object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 388
  ClientWidth = 720
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 59
    Width = 30
    Height = 18
    Caption = 'ano'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 110
    Width = 60
    Height = 18
    Caption = 'modelo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 183
    Top = 110
    Width = 160
    Height = 18
    Caption = 'desempenho(Km/L)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 161
    Width = 49
    Height = 18
    Caption = 'marca'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 212
    Width = 56
    Height = 18
    Caption = 'estado'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 263
    Width = 43
    Height = 18
    Caption = 'placa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 314
    Width = 44
    Height = 18
    Caption = 'pre'#231'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 183
    Top = 8
    Width = 24
    Height = 18
    Caption = 'cor'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 183
    Top = 59
    Width = 98
    Height = 18
    Caption = 'combust'#237'vel'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 183
    Top = 161
    Width = 77
    Height = 18
    Caption = 'opcionais'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 8
    Top = 8
    Width = 32
    Height = 18
    Caption = 'tipo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 392
    Top = 82
    Width = 279
    Height = 18
    Caption = 'INFORMA'#199#213'ES SOBRE O VE'#205'CULO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object lbportas: TLabel
    Left = 183
    Top = 314
    Width = 52
    Height = 18
    Caption = 'portas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object edtmodelo: TEdit
    Left = 8
    Top = 134
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object edtmarca: TEdit
    Left = 8
    Top = 185
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object edtplaca: TEdit
    Left = 8
    Top = 287
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object edtpreco: TEdit
    Left = 8
    Top = 338
    Width = 145
    Height = 21
    TabOrder = 3
  end
  object edtcor: TEdit
    Left = 183
    Top = 32
    Width = 146
    Height = 21
    TabOrder = 4
  end
  object edtdesempenho: TEdit
    Left = 183
    Top = 134
    Width = 146
    Height = 21
    TabOrder = 5
  end
  object memopcionais: TMemo
    Left = 183
    Top = 185
    Width = 146
    Height = 123
    TabOrder = 6
  end
  object memresposta: TMemo
    Left = 384
    Top = 106
    Width = 301
    Height = 202
    ReadOnly = True
    TabOrder = 7
  end
  object btnenviar: TBitBtn
    Left = 367
    Top = 15
    Width = 102
    Height = 55
    Caption = 'Enviar dados'
    TabOrder = 8
    OnClick = btnenviarClick
  end
  object btnmostrar: TBitBtn
    Left = 475
    Top = 15
    Width = 102
    Height = 55
    Caption = 'Mostrar dados'
    TabOrder = 9
    OnClick = btnmostrarClick
  end
  object btnapagar: TBitBtn
    Left = 583
    Top = 15
    Width = 102
    Height = 55
    Caption = 'Apagar tudo'
    TabOrder = 10
    OnClick = btnapagarClick
  end
  object cbportas: TComboBox
    Left = 183
    Top = 338
    Width = 146
    Height = 21
    TabOrder = 11
    Items.Strings = (
      '2'
      '4')
  end
  object cbtipo: TComboBox
    Left = 8
    Top = 32
    Width = 145
    Height = 21
    TabOrder = 12
    OnSelect = cbtipoSelect
    Items.Strings = (
      'carro'
      'moto')
  end
  object dtpano: TDateTimePicker
    Left = 8
    Top = 83
    Width = 145
    Height = 21
    Date = 43015.726347511580000000
    Time = 43015.726347511580000000
    TabOrder = 13
  end
  object cbcombustivel: TComboBox
    Left = 183
    Top = 83
    Width = 146
    Height = 21
    TabOrder = 14
    Items.Strings = (
      'Gasolina'
      #192'lcool'
      'Flex'
      'Diesel'
      'G'#225's'
      'El'#233'trico')
  end
  object cbestado: TComboBox
    Left = 8
    Top = 236
    Width = 145
    Height = 21
    TabOrder = 15
    Items.Strings = (
      'Alugado '
      'Dispon'#237'vel'
      'Em manuten'#231#227'o')
  end
end
