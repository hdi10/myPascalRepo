program Fibonacci;

var
  n, a, b, temp, i: Integer;

begin
  Write('Wie viele Fibonacci-Zahlen möchten Sie sehen? ');
  ReadLn(n);

  a := 0;
  b := 1;

  WriteLn('Die ersten ', n, ' Elemente der Fibonacci-Folge sind:');
  WriteLn('1. Element der Folge: ', a);
  WriteLn('2. Element der Folge: ', b);

  for i := 3 to n do
  begin
    temp := a + b;
    WriteLn(i, '. Element der Folge: ', temp);
    a := b;
    b := temp;
  end;

  ReadLn;
end.
