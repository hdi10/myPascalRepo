program BubbleSort;

var
  arr: array[1..10] of integer;
  i, j, temp, n: integer;

begin
  WriteLn('Wie viele Elemente möchten Sie sortieren? (max 10)');
  ReadLn(n);

  if (n > 10) or (n <= 0) then
  begin
    WriteLn('Ungültige Eingabe.');
    exit;
  end;

  WriteLn('Geben Sie ', n, ' Zahlen ein:');
  for i := 1 to n do
    Read(arr[i]);

  { Bubble-Sort Algorithmus }
  for i := 1 to n - 1 do
    for j := 1 to n - i do
      if arr[j] > arr[j + 1] then
      begin
        temp := arr[j];
        arr[j] := arr[j + 1];
        arr[j + 1] := temp;
      end;

  WriteLn('Sortierte Zahlen:');
  for i := 1 to n do
    Write(arr[i], ' ');

  ReadLn;
end.
