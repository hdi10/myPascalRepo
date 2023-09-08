program GCDLogging;

function GCD(a, b: integer): integer;
var
  temp: integer;
begin
  Write('Berechne GCD(', a, ', ', b, ')... ');

  while b <> 0 do
  begin
    temp := b;
    b := a mod b;
    a := temp;
  end;

  WriteLn('Ergebnis: ', a);
  GCD := a;
end;

var
  i, n, a, b, result: integer;

begin
  Write('Wie viele Paare möchten Sie berechnen? ');
  ReadLn(n);

  for i := 1 to n do
  begin
    Write('Geben Sie die beiden Zahlen für Paar ', i, ' ein (getrennt durch Leerzeichen): ');
    ReadLn(a, b);

    result := GCD(a, b);
  end;

  ReadLn;
end.
