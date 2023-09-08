program PrimeFinder;

function IsPrime(n: integer): boolean;
var
  i: integer;
begin
  if n <= 1 then
  begin
    IsPrime := False;
    exit;
  end;

  for i := 2 to Trunc(Sqrt(n)) do
  begin
    if n mod i = 0 then
    begin
      IsPrime := False;
      exit;
    end;
  end;

  IsPrime := True;
end;

var
  i, start, finish: integer;

begin
  Write('Geben Sie den Startbereich für die Primzahlensuche ein: ');
  ReadLn(start);

  Write('Geben Sie den Endbereich für die Primzahlensuche ein: ');
  ReadLn(finish);

  WriteLn('Suche nach Primzahlen im Bereich von ', start, ' bis ', finish, '...');

  for i := start to finish do
  begin
    if IsPrime(i) then
    begin
      WriteLn('Primzahl gefunden: ', i);
    end
    else
    begin
      WriteLn(i, ' ist keine Primzahl.');
    end;
  end;

  WriteLn('Die Suche ist abgeschlossen.');
  
  ReadLn;
end.
