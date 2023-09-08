program FibonacciLogging;

function Fib(n: integer): integer;
var
  temp: integer;
begin
  Write('Berechne Fib(', n, ')... ');
  
  if n <= 0 then
  begin
    WriteLn('Ergebnis: 0');
    Fib := 0;
  end
  else if n = 1 then
  begin
    WriteLn('Ergebnis: 1');
    Fib := 1;
  end
  else
  begin
    temp := Fib(n - 1) + Fib(n - 2);
    WriteLn('Ergebnis: ', temp);
    Fib := temp;
  end;
end;

var
  n, result: integer;

begin
  Write('Geben Sie n für die Fibonacci-Berechnung ein: ');
  ReadLn(n);
  
  result := Fib(n);
  
  WriteLn('Der ', n, '. Fibonacci-Wert ist: ', result);
  
  ReadLn;
end.
