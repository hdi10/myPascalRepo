program LinearSearch;

var
  arr: array[1..10] of integer;
  i, n, target, index: integer;

begin
  WriteLn('Geben Sie 10 Zahlen ein:');
  for i := 1 to 10 do
    Read(arr[i]);

  Write('Geben Sie die zu suchende Zahl ein: ');
  ReadLn(target);

  index := -1; { Initialisiere mit -1, um "nicht gefunden" darzustellen }

  for i := 1 to 10 do
  begin
    if arr[i] = target then
    begin
      index := i;
      break;
    end;
  end;

  if index = -1 then
    WriteLn('Zahl nicht gefunden.')
  else
    WriteLn('Zahl gefunden an Position ', index);

  ReadLn;
end.
