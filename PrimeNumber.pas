program PrimeNumbers;

var
  i, j, min, max: integer;
  isPrime: boolean;

begin
  Write('Geben Sie den Minimalwert ein: ');
  ReadLn(min);
  
  Write('Geben Sie den Maximalwert ein: ');
  ReadLn(max);
  
  WriteLn('Primzahlen zwischen ', min, ' und ', max, ' sind:');
  
  for i := min to max do
  begin
    if i <= 1 then
      continue;
      
    isPrime := true;
    
    for j := 2 to Trunc(Sqrt(i)) do
    begin
      if i mod j = 0 then
      begin
        isPrime := false;
        break;
      end;
    end;
    
    if isPrime then
      Write(i, ' ');
  end;
  
  ReadLn;
end.
