object Form1: TForm1
  Left = 294
  Top = 215
  Width = 555
  Height = 807
  Caption = 'Spell Checker'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 576
    Width = 521
    Height = 25
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 8
    Top = 608
    Width = 521
    Height = 25
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 8
    Top = 640
    Width = 521
    Height = 25
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 8
    Top = 672
    Width = 521
    Height = 25
    Caption = 'Label4'
  end
  object MemoBox: TMemo
    Left = 8
    Top = 8
    Width = 521
    Height = 553
    Lines.Strings = (
      'MemoBox')
    TabOrder = 0
  end
  object LoadButton: TButton
    Left = 8
    Top = 720
    Width = 75
    Height = 25
    Caption = 'Load file'
    TabOrder = 1
  end
  object SaveButton: TButton
    Left = 216
    Top = 720
    Width = 75
    Height = 25
    Caption = 'Save file'
    TabOrder = 2
  end
  object CorrectButton: TButton
    Left = 456
    Top = 720
    Width = 75
    Height = 25
    Caption = 'Correct'
    TabOrder = 3
  end
end
