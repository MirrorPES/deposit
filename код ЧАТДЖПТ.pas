program MainDiagonalAverage;

var6
  A: array[1..10, 1..10] of Integer;  { Створюємо масив 10x10 }
  n, j, i: Integer;
  sum, average: Real;

begin
  { Введення розміру масиву }
  Write('Enter the size of the matrix (n x n): ');
  ReadLn(n);

  { Введення елементів масиву }
  WriteLn('Enter elements of the matrix:');
  for i:=1 to n do
    for j:=1 to n do
      Read(A[i, j]);

  { Обчислення суми елементів головної діагоналі }
  sum:= 0;
  for i:=1 to n do
    sum:=sum + A[i, i];

  { Обчислення середнього арифметичного }
  average:=sum / n;

  { Виведення результату }
  WriteLn('The arithmetic mean of the main diagonal is: ', average:0:2);
end.
