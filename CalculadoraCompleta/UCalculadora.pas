unit UCalculadora;

interface

uses
  System.SysUtils, System.Math;

type
  TCalculadora = class
  private
    FValor1: Double;
    FOperacao: Integer;
  public
    procedure DefinirOperacao(Operacao: Integer; Valor: Double);
    function Calcular(Valor2: Double): Double;
    procedure Limpar;
    function GetValor1: Double;
  end;

implementation

{ TCalculadora }

procedure TCalculadora.DefinirOperacao(Operacao: Integer; Valor: Double);
begin
  FOperacao := Operacao;
  FValor1 := Valor;
end;

function TCalculadora.Calcular(Valor2: Double): Double;
begin
  case FOperacao of
    1:
      Result := FValor1 + Valor2;
    2:
      Result := FValor1 - Valor2;
    3:
      Result := FValor1 * Valor2;
    4:
      begin
        if Valor2 = 0 then
          raise Exception.Create('Erro: Não é possível dividir por zero.');
        Result := FValor1 / Valor2;
      end;
    5:
      begin
        if Valor2 < 0 then
          raise Exception.Create
            ('Erro: Não é possível calcular fatorial de número negativo.');
        Result := 1;
        while Valor2 > 1 do
        begin
          Result := Result * Valor2;
          Valor2 := Valor2 - 1;
        end;
      end;
    6:
      begin
        if (FValor1 < 0) and (Frac(Valor2) <> 0) then
          raise Exception.Create
            ('Erro: Não é possível calcular exponenciação com base negativa e expoente fracionado.');
        Result := Power(FValor1, Valor2);
      end;
  else
    raise Exception.Create('Operação inválida.');
  end;
end;

procedure TCalculadora.Limpar;
begin
  FValor1 := 0;
  FOperacao := 0;
end;

function TCalculadora.GetValor1: Double;
begin
  Result := FValor1;
end;

end.
