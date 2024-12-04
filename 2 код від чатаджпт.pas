program MainDiagonalAverage;

var
  A: array[1..10, 1..10] of Integer;  { ��������� ����� 10x10 }
  n, i, j: Integer;
  sum, average: Real;

begin
  { �������� ������ ������ }
  Write('Enter the size of the matrix (n x n): ');
  ReadLn(n);

  { ��������� �������� ������ � ������� �� -100 �� 100 }
  Randomize;  { ���������� ��������� ���������� ����� }
  WriteLn('Generated matrix:');
  for i := 1 to n do
    for j := 1 to n do
    begin
      A[i, j] := Random(201) - 100;  { �������� ����� � ������� �� -100 �� 100 }
      Write(A[i, j]:5);  { �������� ������� ������ }
    end;
  WriteLn;  { ������� �� ����� ����� ���� ��������� ������ }

  { ���������� ���� �������� ������� ������� }
  sum := 0;
  for i := 1 to n do
    sum := sum + A[i, i];

  { ���������� ���������� ������������� }
  average := sum / n;

  { ��������� ���������� }
  WriteLn('The arithmetic mean of the main diagonal is: ', average:0:2);
end.
