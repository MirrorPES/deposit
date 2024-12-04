  Оголошення змінних:

var
  A: array[1..10, 1..10] of Integer;  { Створюємо масив 10x10 }
  n, i: Integer;
  sum, average: Real;

    A: array[1..10, 1..10] of Integer: це оголошення двовимірного масиву з розмірами 10x10, який буде містити елементи типу Integer (цілі числа). Масив має 10 рядків та 10 стовпців. Врахуйте, що кількість елементів може бути змінена, якщо ви хочете працювати з масивами іншого розміру (наприклад, користувач може ввести розмір масиву).
    n, i: ці змінні будуть використовуватись для циклів. n — це розмір квадратної матриці, який введе користувач, а i — це індекс, використовуваний для проходження по рядках та стовпцях.
    sum, average: Real: змінні типу Real, які будуть використовуватись для обчислення суми елементів головної діагоналі та середнього арифметичного відповідно.

Введення розміру масиву:

Write('Enter the size of the matrix (n x n): ');
ReadLn(n);

    Цей блок запитує у користувача розмір матриці (потрібно ввести ціле число для n, яке визначатиме кількість рядків та стовпців матриці).

Введення елементів масиву:

WriteLn('Enter elements of the matrix:');
for i := 1 to n do
  for j := 1 to n do
    Read(A[i, j]);

    Після введення розміру масиву програма запитує елементи для кожної клітинки матриці. За допомогою двовимірного циклу for i := 1 to n та for j := 1 to n користувач вводить елементи по рядках та стовпцях, і ці значення зберігаються в масиві A[i, j].

Обчислення суми елементів головної діагоналі:

sum := 0;
for i := 1 to n do
  sum := sum + A[i, i];

    Тут ми ініціалізуємо змінну sum значенням 0, оскільки сума елементів головної діагоналі ще не обчислена.
    За допомогою циклу for i := 1 to n програма проходить по всіх елементах головної діагоналі матриці (елементи, де індекс рядка дорівнює індексу стовпця, тобто A[1,1], A[2,2], A[3,3] і так далі).
    В кожній ітерації циклу елемент головної діагоналі додається до змінної sum.

Обчислення середнього арифметичного:

average := sum / n;

    Після того, як сума всіх елементів головної діагоналі обчислена, програма ділить її на кількість елементів (яких буде рівно n, оскільки це квадратна матриця) і отримує середнє арифметичне.

Виведення результату:

WriteLn('The arithmetic mean of the main diagonal is: ', average:0:2);

    Останній рядок виводить результат на екран. Функція WriteLn виводить текст разом з результатом обчислення середнього арифметичного (average), при цьому формат виведення вказує, що число повинно бути відображене з двома знаками після коми (average:0:2).
Щоб удосконалити програмний код, ось кілька можливих напрямків розвитку та запитів (промтів) для поліпшення функціональності:
1. Запит на можливість вибору діапазону для випадкових чисел

У цьому удосконаленні користувач може ввести бажаний діапазон для генерації випадкових чисел (наприклад, від -50 до 50 замість фіксованого діапазону від -100 до 100).

Промт 1:

program MainDiagonalAverage;

var
  A: array[1..10, 1..10] of Integer;  
  n, i, j, minRange, maxRange: Integer;
  sum, average: Real;

begin
  { Введення розміру масиву }
  Write('Enter the size of the matrix (n x n): ');
  ReadLn(n);

  { Введення діапазону для генерації випадкових чисел }
  Write('Enter the minimum value for the random range: ');
  ReadLn(minRange);
  Write('Enter the maximum value for the random range: ');
  ReadLn(maxRange);

  { Генерація елементів масиву в зазначеному діапазоні }
  Randomize;
  WriteLn('Generated matrix:');
  for i := 1 to n do
    for j := 1 to n do
    begin
      A[i, j] := Random(maxRange - minRange + 1) + minRange;
      Write(A[i, j]:5);
    end;
  WriteLn;

  { Обчислення суми елементів головної діагоналі }
  sum := 0;
  for i := 1 to n do
    sum := sum + A[i, i];

  { Обчислення середнього арифметичного }
  average := sum / n;

  { Виведення результату }
  WriteLn('The arithmetic mean of the main diagonal is: ', average:0:2);
end.

Пояснення:

    Користувач може задати власний мінімальний та максимальний діапазони для генерації випадкових чисел.
    Випадкові числа генеруються в межах введеного діапазону.

2. Запит на додавання можливості збереження результату в файл

Цей промт дозволяє додати функціональність збереження результатів генерації масиву та обчислення середнього арифметичного в текстовий файл.

Промт 2:

program MainDiagonalAverage;

var
  A: array[1..10, 1..10] of Integer;  
  n, i, j: Integer;
  sum, average: Real;
  outputFile: TextFile;

begin
  { Введення розміру масиву }
  Write('Enter the size of the matrix (n x n): ');
  ReadLn(n);

  { Генерація елементів масиву в діапазоні від -100 до 100 }
  Randomize;
  WriteLn('Generated matrix:');
  for i := 1 to n do
    for j := 1 to n do
    begin
      A[i, j] := Random(201) - 100;
      Write(A[i, j]:5);
    end;
  WriteLn;

  { Обчислення суми елементів головної діагоналі }
  sum := 0;
  for i := 1 to n do
    sum := sum + A[i, i];

  { Обчислення середнього арифметичного }
  average := sum / n;

  { Виведення результату на екран }
  WriteLn('The arithmetic mean of the main diagonal is: ', average:0:2);

  { Відкриття файлу для запису результатів }
  Assign(outputFile, 'result.txt');
  Rewrite(outputFile);

  { Запис результату в файл }
  WriteLn(outputFile, 'Generated matrix:');
  for i := 1 to n do
    begin
      for j := 1 to n do
        Write(outputFile, A[i, j]:5);
      WriteLn(outputFile);
    end;

  WriteLn(outputFile, 'Arithmetic mean of the main diagonal: ', average:0:2);

  { Закриття файлу }
  Close(outputFile);
end.

Пояснення:

    Програма тепер відкриває файл result.txt і записує в нього згенеровану матрицю та середнє арифметичне елементів головної діагоналі.
    Файл з результатами зберігається у поточній директорії програми.

3. Запит на перевірку та обробку помилок при введенні користувача

Додати обробку помилок для введення, наприклад, перевірку на коректність розміру масиву та правильність діапазону для випадкових чисел.

Промт 3:

program MainDiagonalAverage;

var
  A: array[1..10, 1..10] of Integer;  
  n, i, j, minRange, maxRange: Integer;
  sum, average: Real;

begin
  { Введення розміру масиву з перевіркою }
  Write('Enter the size of the matrix (1 to 10): ');
  ReadLn(n);

  if (n < 1) or (n > 10) then
  begin
    WriteLn('Error: Matrix size must be between 1 and 10.');
    Halt;
  end;

  { Введення діапазону для генерації випадкових чисел з перевіркою }
  Write('Enter the minimum value for the random range: ');
  ReadLn(minRange);
  Write('Enter the maximum value for the random range: ');
  ReadLn(maxRange);

  if minRange > maxRange then
  begin
    WriteLn('Error: Minimum value must be less than or equal to maximum value.');
    Halt;
  end;

  { Генерація елементів масиву в зазначеному діапазоні }
  Randomize;
  WriteLn('Generated matrix:');
  for i := 1 to n do
    for j := 1 to n do
    begin
      A[i, j] := Random(maxRange - minRange + 1) + minRange;
      Write(A[i, j]:5);
    end;
  WriteLn;

  { Обчислення суми елементів головної діагоналі }
  sum := 0;
  for i := 1 to n do
    sum := sum + A[i, i];

  { Обчислення середнього арифметичного }
  average := sum / n;

  { Виведення результату }
  WriteLn('The arithmetic mean of the main diagonal is: ', average:0:2);
end.

Пояснення:

    Програма перевіряє введення користувача на коректність:
        Розмір матриці має бути в межах від 1 до 10.
        Мінімальне значення для генерації випадкових чисел не може бути більшим за максимальне.
