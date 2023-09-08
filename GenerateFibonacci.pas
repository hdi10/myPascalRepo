program GenerateFibonacci;

var
  a, b, c, i, n: qword; { qword = 64-bit unsigned integer} {möglichkeit bis 18446744073709551615}
  { a, b, c, i, n: longint;} {auch möglich bis 2147483647}
  { a, b, c, i, n: int64;} {auch möglich bis 9223372036854775807}

begin
  Write('Wie viele Elemente der Fibonacci-Sequenz möchten Sie generieren? ');
  ReadLn(n);

  a := 0;
  b := 1;

  WriteLn('Generiere Fibonacci-Sequenz mit ', n, ' Elementen...');

  for i := 1 to n do
  begin
    WriteLn('Element ', i, ': ', a);

    c := a + b;
    a := b;
    b := c;
  end;

  WriteLn('Die Generierung der Fibonacci-Sequenz ist abgeschlossen.');

  ReadLn;
end.
