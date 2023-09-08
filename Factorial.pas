program Factorial;

function Fact(n: integer): integer;
begin
  if n = 0 then
    Fact := 1
  else
    Fact := n * Fact(n - 1);
end;

var
  n, result: integer;

begin
  Write('Geben Sie n für n! ein: ');
  ReadLn(n);
  
  result := Fact(n);
  
  WriteLn('Die Fakultät von ', n, ' ist: ', result);
  
  ReadLn;
end.
