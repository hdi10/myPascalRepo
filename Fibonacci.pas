program Fibonacci;

function Fib(n: integer): integer;
begin
  if n <= 0 then
    Fib := 0
  else if n = 1 then
    Fib := 1
  else
    Fib := Fib(n - 1) + Fib(n - 2);
end;

var
  n, result: integer;

begin
  Write('Geben Sie n ein: ');
  ReadLn(n);
  
  result := Fib(n);
  
  WriteLn('Der ', n, '. Fibonacci-Wert ist: ', result);
  
  ReadLn;
end.
