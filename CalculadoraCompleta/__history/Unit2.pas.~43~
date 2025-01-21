unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, System.Math;

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
    procedure Btn0Click(Sender: TObject);
    procedure Btn1Click(Sender: TObject);
    procedure Btn2Click(Sender: TObject);
    procedure Btn3Click(Sender: TObject);
    procedure Btn4Click(Sender: TObject);
    procedure Btn5Click(Sender: TObject);
    procedure Btn6Click(Sender: TObject);
    procedure Btn7Click(Sender: TObject);
    procedure Btn8Click(Sender: TObject);
    procedure Btn9Click(Sender: TObject);
    procedure BtnVirgulaClick(Sender: TObject);
    procedure BtnAdicaoClick(Sender: TObject);
    procedure BtnSubtracaoClick(Sender: TObject);
    procedure BtnMultiplicacaoClick(Sender: TObject);
    procedure BtnDivisaoClick(Sender: TObject);
    procedure BtnFatorialClick(Sender: TObject);
    procedure BtnExpoenteClick(Sender: TObject);
    procedure BtnIgualClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
    procedure BtnRaizClick(Sender: TObject);
  private
    ValorAtual: double;
    operacao: Integer;
    limpar: Boolean;
    procedure AtualizarVisorComNumero(Numero: String);
    procedure Historico(const operacao: string;
      valor1, valor2, resultado: double);
    function Simbolo(operacao: Integer): string;
    function Fatorial(N: Integer): Int64;
    function Exponenciacao(base, exp: double): double;
  public
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

function TForm2.Fatorial(N: Integer): Int64;
var
  i: Integer;
  resultado: Int64;
begin
  if N < 0 then
    raise Exception.Create
      ('Não é possível calcular um número negativo.');

  if N = 0 then
    Result := 1
  else
  begin
    resultado := 1;
    for i := 2 to N do
      resultado := resultado * i;
    Result := resultado;
  end;
end;

function TForm2.Exponenciacao(base, exp: double): double;
begin
  Result := Power(base, exp);
end;

procedure TForm2.AtualizarVisorComNumero(Numero: String);
begin
  if limpar then
  begin
    Visor.Text := '';
    limpar := False;
  end;
  Visor.Text := Visor.Text + Numero;
end;

procedure TForm2.Historico(const operacao: string;
  valor1, valor2, resultado: double);
begin
  memHistorico.Lines.Add(Format('%f %s %f = %f', [valor1, operacao, valor2,
    resultado]));
end;

function TForm2.Simbolo(operacao: Integer): string;
begin
  case operacao of
    1:
      Result := '+';
    2:
      Result := '-';
    3:
      Result := 'X';
    4:
      Result := '/';
    5:
      Result := '!';
    6:
      Result := '^';
  else
    Result := '';
  end;
end;

// Eventos de botões numéricos
procedure TForm2.Btn0Click(Sender: TObject);
begin
  AtualizarVisorComNumero('0');
end;

procedure TForm2.Btn1Click(Sender: TObject);
begin
  AtualizarVisorComNumero('1');
end;

procedure TForm2.Btn2Click(Sender: TObject);
begin
  AtualizarVisorComNumero('2');
end;

procedure TForm2.Btn3Click(Sender: TObject);
begin
  AtualizarVisorComNumero('3');
end;

procedure TForm2.Btn4Click(Sender: TObject);
begin
  AtualizarVisorComNumero('4');
end;

procedure TForm2.Btn5Click(Sender: TObject);
begin
  AtualizarVisorComNumero('5');
end;

procedure TForm2.Btn6Click(Sender: TObject);
begin
  AtualizarVisorComNumero('6');
end;

procedure TForm2.Btn7Click(Sender: TObject);
begin
  AtualizarVisorComNumero('7');
end;

procedure TForm2.Btn8Click(Sender: TObject);
begin
  AtualizarVisorComNumero('8');
end;

procedure TForm2.Btn9Click(Sender: TObject);
begin
  AtualizarVisorComNumero('9');
end;

procedure TForm2.BtnVirgulaClick(Sender: TObject);
begin
  if limpar then
  begin
    Visor.Text := '';
    limpar := False;
  end;
  if Pos(',', Visor.Text) = 0 then
    Visor.Text := Visor.Text + ',';
end;

// Eventos de operação
procedure TForm2.BtnAdicaoClick(Sender: TObject);
begin
  operacao := 1;
  limpar := True;
  ValorAtual := StrToFloat(Visor.Text);
end;

procedure TForm2.BtnSubtracaoClick(Sender: TObject);
begin
  operacao := 2;
  limpar := True;
  ValorAtual := StrToFloat(Visor.Text);
end;

procedure TForm2.BtnMultiplicacaoClick(Sender: TObject);
begin
  operacao := 3;
  limpar := True;
  ValorAtual := StrToFloat(Visor.Text);
end;

procedure TForm2.BtnDivisaoClick(Sender: TObject);
begin
  operacao := 4;
  limpar := True;
  ValorAtual := StrToFloat(Visor.Text);
end;

procedure TForm2.BtnFatorialClick(Sender: TObject);
begin
  operacao := 5;
  limpar := True;
  ValorAtual := StrToFloat(Visor.Text);
end;

procedure TForm2.BtnExpoenteClick(Sender: TObject);
begin
  operacao := 6;
  limpar := True;
  ValorAtual := StrToFloat(Visor.Text);
end;

// Cálculo do resultado da operação
procedure TForm2.BtnIgualClick(Sender: TObject);
var
  valor2, resultado: double;
begin
  valor2 := StrToFloat(Visor.Text);
  case operacao of
    1:
      resultado := ValorAtual + valor2;
    2:
      resultado := ValorAtual - valor2;
    3:
      resultado := ValorAtual * valor2;
    4:
      begin
        if valor2 = 0 then
        begin
          ShowMessage('Não é possível dividir por zero!!!');
          Exit;
        end;
        resultado := ValorAtual / valor2;
      end;
    5:
      resultado := Fatorial(Round(ValorAtual));
    6:
      resultado := Exponenciacao(ValorAtual, valor2);
  end;

  Historico(Simbolo(operacao), ValorAtual, valor2, resultado);

  limpar := True;
  Visor.Text := FloatToStr(resultado);
  ValorAtual := resultado;
end;

procedure TForm2.BtnLimparClick(Sender: TObject);
begin
  ValorAtual := 0;
  Visor.Text := '0';
  operacao := 0;
  limpar := True;
  memHistorico.Clear;
end;

procedure TForm2.BtnRaizClick(Sender: TObject);
var
  resultado: double;
begin
  ValorAtual := StrToFloat(Visor.Text);
  if ValorAtual < 0 then
  begin
    ShowMessage
      ('Não é possível calcular a raiz quadrada de um número negativo.');
    Exit;
  end;
  resultado := Sqrt(ValorAtual);
  Historico('√', ValorAtual, 0, resultado);
  Visor.Text := FloatToStr(resultado);
  limpar := True;
  ValorAtual := resultado;
end;

end.
