object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 188
  ClientWidth = 577
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object Btn7: TButton
    Left = 8
    Top = 37
    Width = 75
    Height = 25
    Caption = '7'
    TabOrder = 0
    OnClick = BtnNumeroClick
  end
  object BtnMultiplicacao: TButton
    Left = 251
    Top = 68
    Width = 39
    Height = 25
    Caption = 'X'
    TabOrder = 1
    OnClick = BtnOperacaoClick
  end
  object BtnSubtracao: TButton
    Left = 251
    Top = 99
    Width = 39
    Height = 25
    Caption = '-'
    TabOrder = 2
    OnClick = BtnOperacaoClick
  end
  object BtnAdicao: TButton
    Left = 296
    Top = 37
    Width = 39
    Height = 149
    Caption = '+'
    TabOrder = 3
    OnClick = BtnOperacaoClick
  end
  object Btn4: TButton
    Left = 8
    Top = 68
    Width = 75
    Height = 25
    Caption = '4'
    TabOrder = 4
    OnClick = BtnNumeroClick
  end
  object BtnIgual: TButton
    Left = 251
    Top = 161
    Width = 39
    Height = 25
    Caption = '='
    TabOrder = 5
    OnClick = BtnIgualClick
  end
  object BtnVirgula: TButton
    Left = 8
    Top = 130
    Width = 75
    Height = 25
    Caption = ','
    TabOrder = 6
    OnClick = BtnVirgulaClick
  end
  object Btn8: TButton
    Left = 89
    Top = 37
    Width = 75
    Height = 25
    Caption = '8'
    TabOrder = 7
    OnClick = BtnNumeroClick
  end
  object Btn0: TButton
    Left = 89
    Top = 130
    Width = 75
    Height = 25
    Caption = '0'
    TabOrder = 8
    OnClick = BtnNumeroClick
  end
  object Btn5: TButton
    Left = 89
    Top = 68
    Width = 75
    Height = 25
    Caption = '5'
    TabOrder = 9
    OnClick = BtnNumeroClick
  end
  object Btn1: TButton
    Left = 8
    Top = 99
    Width = 75
    Height = 25
    Caption = '1'
    TabOrder = 10
    OnClick = BtnNumeroClick
  end
  object Btn9: TButton
    Left = 170
    Top = 37
    Width = 75
    Height = 25
    Caption = '9'
    TabOrder = 11
    OnClick = BtnNumeroClick
  end
  object Btn6: TButton
    Left = 170
    Top = 68
    Width = 75
    Height = 25
    Caption = '6'
    TabOrder = 12
    OnClick = BtnNumeroClick
  end
  object Btn2: TButton
    Left = 89
    Top = 99
    Width = 75
    Height = 25
    Caption = '2'
    TabOrder = 13
    OnClick = BtnNumeroClick
  end
  object Btn3: TButton
    Left = 170
    Top = 99
    Width = 75
    Height = 25
    Caption = '3'
    TabOrder = 14
    OnClick = BtnNumeroClick
  end
  object BtnDivisao: TButton
    Left = 251
    Top = 37
    Width = 39
    Height = 25
    Caption = '/'
    TabOrder = 15
    OnClick = BtnOperacaoClick
  end
  object BtnLimpar: TButton
    Left = 4
    Top = 161
    Width = 241
    Height = 25
    Caption = 'Limpar'
    TabOrder = 16
    OnClick = BtnLimparClick
  end
  object Visor: TEdit
    Left = 8
    Top = 8
    Width = 322
    Height = 23
    TabOrder = 17
  end
  object memHistorico: TMemo
    Left = 341
    Top = 8
    Width = 213
    Height = 176
    Lines.Strings = (
      '')
    TabOrder = 18
  end
  object BtnExpoente: TButton
    Left = 211
    Top = 130
    Width = 34
    Height = 25
    Caption = '^'
    TabOrder = 19
    OnClick = BtnOperacaoClick
  end
  object BtnFatorial: TButton
    Left = 170
    Top = 130
    Width = 34
    Height = 25
    Caption = 'n!'
    TabOrder = 20
    OnClick = BtnOperacaoClick
  end
  object BtnRaiz: TButton
    Left = 251
    Top = 130
    Width = 39
    Height = 25
    Caption = #8730
    TabOrder = 21
    OnClick = BtnOperacaoClick
  end
end
