program MainDiagonalAverage;

var6
  A: array[1..10, 1..10] of Integer;  { ��������� ����� 10x10 }
  n, j, i: Integer;
  sum, average: Real;

begin
  { �������� ������ ������ }
  Write('Enter the size of the matrix (n x n): ');
  ReadLn(n);

  { �������� �������� ������ }
  WriteLn('Enter elements of the matrix:');
  for i:=1 to n do
    for j:=1 to n do
      Read(A[i, j]);

  { ���������� ���� �������� ������� ������� }
  sum:= 0;
  for i:=1 to n do
    sum:=sum + A[i, i];

  { ���������� ���������� ������������� }
  average:=sum / n;

  { ��������� ���������� }
  WriteLn('The arithmetic mean of the main diagonal is: ', average:0:2);
end.
