program MainDiagonalAverage;

var
  A: array[1..10, 1..10] of Integer;  { Створюємо масив 10x10 }
  n, i, j: Integer;
  sum, average: Real;

begin
  { Введення розміру масиву }
  Write('Enter the size of the matrix (n x n): ');
  ReadLn(n);

  { Генерація елементів масиву у діапазоні від -100 до 100 }
  Randomize;  { Ініціалізуємо генератор випадкових чисел }
  WriteLn('Generated matrix:');
  for i := 1 to n do
    for j := 1 to n do
    begin
      A[i, j] := Random(201) - 100;  { Генеруємо числа в діапазоні від -100 до 100 }
      Write(A[i, j]:5);  { Виводимо елемент масиву }
    end;
  WriteLn;  { Перехід на новий рядок після виведення масиву }

  { Обчислення суми елементів головної діагоналі }
  sum := 0;
  for i := 1 to n do
    sum := sum + A[i, i];

  { Обчислення середнього арифметичного }
  average := sum / n;

  { Виведення результату }
  WriteLn('The arithmetic mean of the main diagonal is: ', average:0:2);
end.
