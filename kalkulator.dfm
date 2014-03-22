object Form1: TForm1
  Left = 331
  Top = 226
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'KALKULATOR'
  ClientHeight = 204
  ClientWidth = 291
  Color = clHotLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnKeyPress = angkaDoang
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 59
    Height = 24
    Caption = 'Nilai 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 64
    Width = 59
    Height = 24
    Caption = 'Nilai 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 160
    Width = 59
    Height = 24
    Caption = 'HASIL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object nilai1: TEdit
    Left = 80
    Top = 24
    Width = 113
    Height = 21
    TabOrder = 0
    OnKeyPress = angkaDoang
  end
  object nilai2: TEdit
    Left = 80
    Top = 64
    Width = 113
    Height = 21
    TabOrder = 1
    OnKeyPress = angkaDoang
  end
  object kolomhasil: TEdit
    Left = 80
    Top = 152
    Width = 113
    Height = 32
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Text = '??'
  end
  object Ttambah: TButton
    Left = 80
    Top = 91
    Width = 33
    Height = 25
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = TtambahClick
  end
  object Tkurang: TButton
    Left = 120
    Top = 91
    Width = 33
    Height = 25
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = TkurangClick
  end
  object Tkali: TButton
    Left = 80
    Top = 121
    Width = 33
    Height = 25
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = TkaliClick
  end
  object Tbagi: TButton
    Left = 120
    Top = 121
    Width = 33
    Height = 25
    Caption = '/'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = TbagiClick
  end
  object Tmod: TButton
    Left = 160
    Top = 121
    Width = 33
    Height = 25
    Caption = 'Mod'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = TmodClick
  end
  object Tdiv: TButton
    Left = 160
    Top = 91
    Width = 33
    Height = 25
    Caption = 'Div'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = TdivClick
  end
  object Tkeluar: TButton
    Left = 208
    Top = 56
    Width = 75
    Height = 25
    Caption = 'KELUAR'
    TabOrder = 9
    OnClick = TkeluarClick
  end
  object Tclear: TButton
    Left = 208
    Top = 24
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 10
    OnClick = TclearClick
  end
end
