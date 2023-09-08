program FactorialLogging;

function Factorial(n: integer): longint;
var
  i: integer;
  result: longint;
begin
  Write('Berechne ', n, '!... ');

  result := 1;
  for i := 2 to n do
  begin
    result := result * i;
    WriteLn('Zwischenergebnis bei Schritt ', i, ': ', result);
  end;

  WriteLn('Ergebnis: ', result);
  Factorial := result;
end;

var
  n: integer;
  result: longint;

begin
  Write('Geben Sie eine Zahl für die Fakultätsberechnung ein: ');
  ReadLn(n);

  if n < 0 then
  begin
    WriteLn('Die Fakultät ist nicht definiert für negative Zahlen.');
  end
  else
  begin
    result := Factorial(n);
    WriteLn(n, '! = ', result);
  end;

  ReadLn;
end.
