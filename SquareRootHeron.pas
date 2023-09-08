program SquareRootHeron;

function SqrtHeron(x: real; epsilon: real): real;
var
  guess, newGuess: real;
begin
  Write('Berechne die Quadratwurzel von ', x:0:2, ' mit einer Genauigkeit von ', epsilon:0:10, '... ');

  guess := x;
  repeat
    newGuess := 0.5 * (guess + x / guess);
    WriteLn('Aktuelle Schätzung: ', newGuess:0:10);

    if Abs(newGuess - guess) < epsilon then
    begin
      WriteLn('Ergebnis: ', newGuess:0:10);
      SqrtHeron := newGuess;
      exit;
    end;

    guess := newGuess;

  until false;
end;

var
  x, epsilon, result: real;

begin
  Write('Geben Sie die Zahl ein, deren Quadratwurzel berechnet werden soll: ');
  ReadLn(x);

  Write('Geben Sie die gewünschte Genauigkeit ein: ');
  ReadLn(epsilon);

  result := SqrtHeron(x, epsilon);

  WriteLn('Die geschätzte Quadratwurzel von ', x:0:2, ' ist ', result:0:10);

  ReadLn;
end.
