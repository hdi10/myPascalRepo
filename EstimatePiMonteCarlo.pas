program EstimatePiMonteCarlo;

uses
  SysUtils;

var
  i, hits, total: longint;
  x, y, piEstimate: real;

begin
  Write('Anzahl der Versuche für die Pi-Schätzung: ');
  ReadLn(total);

  hits := 0;

  Randomize;

  for i := 1 to total do
  begin
    x := Random;
    y := Random;

    if (x * x + y * y) <= 1 then
    begin
      Inc(hits);
    end;

    if i mod 1000 = 0 then
    begin
      piEstimate := (4.0 * hits) / i;
      WriteLn('Nach ', i, ' Versuchen: Geschätzter Wert von Pi = ', piEstimate:0:10);
    end;
  end;

  piEstimate := (4.0 * hits) / total;
  WriteLn('Endgültige Schätzung von Pi nach ', total, ' Versuchen: ', piEstimate:0:10);

  ReadLn;
end.
