unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, UCalculadora;

type
  TForm2 = class(TForm)
    Btn7: TButton;
    BtnMultiplicacao: TButton;
    BtnSubtracao: TButton;
    BtnAdicao: TButton;
    Btn4: TButton;
    BtnIgual: TButton;
    BtnVirgula: TButton;
    Btn8: TButton;
    Btn0: TButton;
    Btn5: TButton;
    Btn1: TButton;
    Btn9: TButton;
    Btn6: TButton;
    Btn2: TButton;
    Btn3: TButton;
    BtnDivisao: TButton;
    BtnLimpar: TButton;
    BtnFatorial: TButton;
    BtnExpoente: TButton;
    Visor: TEdit;
    memHistorico: TMemo;
    BtnRaiz: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnNumeroClick(Sender: TObject);
    procedure BtnOperacaoClick(Sender: TObject);
    procedure BtnIgualClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
    procedure BtnRaizClick(Sender: TObject);
    procedure BtnVirgulaClick(Sender: TObject);
  private
    Calculadora: TCalculadora;
    limpar: Boolean;
    procedure AtualizarVisor(Numero: String);
    procedure AdicionarHistorico(const operacao: string;
      valor1, valor2, resultado: double);
  public
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin

  Calculadora := TCalculadora.Create;

  Visor.Text := '0';

  BtnAdicao.Tag := 1;
  BtnSubtracao.Tag := 2;
  BtnMultiplicacao.Tag := 3;
  BtnDivisao.Tag := 4;
  BtnFatorial.Tag := 5;
  BtnExpoente.Tag := 6;
end;

procedure TForm2.FormDestroy(Sender: TObject);
begin

  if Assigned(Calculadora) then
    Calculadora.Free;
end;

procedure TForm2.AtualizarVisor(Numero: String);
begin
  if (Visor.Text = '0') or limpar then
  begin
  Visor.Text := Numero;
  limpar := true;
  end
  else
  Visor.Text := Visor.Text + Numero;
end;

procedure TForm2.BtnNumeroClick(Sender: TObject);
begin
  AtualizarVisor((Sender as TButton).Caption);
end;

procedure TForm2.BtnOperacaoClick(Sender: TObject);
begin
  if Assigned(Calculadora) then
  begin

    Calculadora.DefinirOperacao((Sender as TButton).Tag,
      StrToFloat(Visor.Text));

  end;
  limpar := True;
end;

procedure TForm2.BtnIgualClick(Sender: TObject);
var
  resultado: double;
begin
  try

    if Assigned(Calculadora) then
    begin

      resultado := Calculadora.Calcular(StrToFloat(Visor.Text));

      memHistorico.Lines.Add('Resultado calculado: ' + FloatToStr(resultado));

      Visor.Text := FloatToStr(resultado);
    end;
  except
    on E: Exception do
    begin

      memHistorico.Lines.Add('Erro: ' + E.Message);
      ShowMessage('Erro: ' + E.Message);
    end;
  end;
  limpar := True;
end;

procedure TForm2.BtnLimparClick(Sender: TObject);
begin
  Visor.Text := '0';
  if Assigned(Calculadora) then
    Calculadora.limpar;
  memHistorico.Clear;
end;

procedure TForm2.BtnRaizClick(Sender: TObject);
var
  resultado: double;
begin
  if StrToFloat(Visor.Text) < 0 then
  begin
    ShowMessage
      ('Erro: Não é possível calcular raiz quadrada de um número negativo.');
    Exit;
  end;
  resultado := Sqrt(StrToFloat(Visor.Text));
  AdicionarHistorico('√', StrToFloat(Visor.Text), 0, resultado);
  Visor.Text := FloatToStr(resultado);
  limpar := True;
end;

procedure TForm2.BtnVirgulaClick(Sender: TObject);
begin

  if Pos(',', Visor.Text) = 0 then
    AtualizarVisor(',');
end;

procedure TForm2.AdicionarHistorico(const operacao: string;
  valor1, valor2, resultado: double);
begin

  memHistorico.Lines.Add(Format('%f %s %f = %f', [valor1, operacao, valor2,
    resultado]));
end;

end.
