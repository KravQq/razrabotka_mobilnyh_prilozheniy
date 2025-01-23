import 'dart:math' as Math;
void main() {
  // Примеры вызовов функций
  try {
    print(maxOfTwo(5, 10));
    print(maxOfTwo(5, 5));
  } catch (e) {
    print(e);
  }

  try {
    print(divide(10, 2));
    print(divide(10, 0));
  } catch (e) {
    print(e);
  }

  try {
    print(convertStringToInt("123"));
    print(convertStringToInt("abc"));
  } catch (e) {
    print(e);
  }

  try {
    checkAge(25);
    checkAge(-1);
  } catch (e) {
    print(e);
  }

  try {
    print(squareRoot(16));
    print(squareRoot(-4));
  } catch (e) {
    print(e);
  }

  try {
    print(factorial(5));
    print(factorial(-1));
  } catch (e) {
    print(e);
  }

  try {
    checkArrayForZeros([1, 2, 3]);
    checkArrayForZeros([1, 0, 3]);
  } catch (e) {
    print(e);
  }

  try {
    print(power(2, 3));
    print(power(2, -1));
  } catch (e) {
    print(e);
  }

  try {
    print(trimString("Hello, World!", 5));
    print(trimString("Hello", 10));
  } catch (e) {
    print(e);
  }

  try {
    findInArray([1, 2, 3], 2);
    findInArray([1, 2, 3], 4);
  } catch (e) {
    print(e);
  }

  try {
    print(convertToBinary(10));
    print(convertToBinary(-5));
  } catch (e) {
    print(e);
  }

  try {
    checkDivisibility(10, 2);
    checkDivisibility(10, 0);
  } catch (e) {
    print(e);
  }

  try {
    readElementAtIndex([1,2,3],1);
    readElementAtIndex([1,2,3],5);
  } catch (e) {
    print(e);
  }

  try {
    checkPasswordStrength("password");
    checkPasswordStrength("strongpass");
  } catch (e) {
    print(e);
  }

  try {
    checkDateFormat("31.12.2020");
    checkDateFormat("2020-12-31");
  } catch (e) {
    print(e);
  }

  try {
    concatenateStrings("Hello", "World");
    concatenateStrings(null, "World");
  } catch (e) {
    print(e);
  }

  try {
    remainder(10,3);
    remainder(10,0);
  } catch (e) {
    print(e);
  }

  try {
    squareRootFunction(16);
    squareRootFunction(-16);
  } catch (e) {
    print(e);
  }

  try {
    convertCelsiusToFahrenheit(25);
    convertCelsiusToFahrenheit(-300);
  } catch (e) {
    print(e);
  }

  try {
    checkStringIsEmpty("");
    checkStringIsEmpty(null);
  } catch (e) {
    print(e);
  }
}

// Задача 1: Функция для нахождения максимума
int maxOfTwo(int a, int b) {
  if (a == b) throw Exception('Числа равны.');
  return a > b ? a : b;
}

// Задача 2: Калькулятор деления
double divide(double a, double b) {
  if (b == 0) throw Exception('Недопустимо деление на ноль.');
  return a / b;
}

// Задача 3: Конвертер строк в числа
int convertStringToInt(String str) {
  return int.parse(str);
}

// Задача 4: Проверка возраста
void checkAge(int age) {
  if (age < 0 || age >150 ) throw ArgumentError('Возраст должен быть в пределах от нуля до ста пятидесяти.');
}

// Задача 5: Нахождение корня
double squareRoot(double number) {
  if (number <0 ) throw ArgumentError('Невозможно найти корень из отрицательного числа.');
  return Math.sqrt(number);
}

// Задача6: Факториал числа
int factorial(int number) {
  if (number <0 ) throw ArgumentError('Факториал не определен для отрицательных чисел.');
  return number ==0 ?1 : number * factorial(number -1);
}

// Задача7: Проверка массива на нули
void checkArrayForZeros(List<int> array) {
  if(array.contains(0)) throw Exception('Массив содержит нули.');
}

// Задача8: Калькулятор возведения в степень
num power(double base, int exponent) {
  if(exponent <0 ) throw Exception('Степень не может быть отрицательной.');
  return Math.pow(base, exponent);
}

// Задача9: Обрезка строки
String trimString(String str, int length) {
  if(length > str.length ) throw Exception('Длина обрезки превышает длину строки.');
  return str.substring(0,length);
}

// Задача10: Поиск элемента в массиве
void findInArray(List<int> array, int element) {
  int index = array.indexOf(element);
  if(index == -1 ) throw Exception('Элемент не найден.');
  else{
    print('Найден на индексе: $index');
  }
}

// Задача11: Конвертация в двоичную систему
String convertToBinary(int number){
  if(number <0 ) throw Exception('Отрицательные числа не могут быть конвертированы.');
  return number.toRadixString(2);
}

// Задача12: Проверка делимости
void checkDivisibility(int a,int b){
  if(b ==0 ) throw Exception('Деление на ноль недопустимо.');
  if(a % b ==0 )print('$a делится на $b');
  else{
    throw Exception('$a не делится на $b');
  }
}

// Задача13: Чтение элемента списка
int readElementAtIndex(List<int> list,int index){
  if(index <0 || index >= list.length ) throw IndexError(index,list.length,'Индекс выходит за пределы списка');
  return list[index];
}

// Задача14: Парольная проверка

class WeakPasswordException implements Exception{
  String cause;
  WeakPasswordException(this.cause);

  @override String toString() => 'WeakPasswordException: $cause';
}

void checkPasswordStrength(String password){
  if(password.length <8 ) throw WeakPasswordException('Пароль должен содержать не менее восьми символов.');
}

// Задача15: Проверка даты

void checkDateFormat(String dateStr) {
  try {
    DateTime.parse(dateStr);
  } catch (e) {
    throw FormatException("Некорректный формат даты. Ожидается 'dd.MM.yyyy'.");
  }
}

// Задача16: Конкатенация строк

String concatenateStrings(String? str1,String? str2){
  if(str1 == null || str2 == null ) throw Error();
  return str1 + str2;
}

// Задача17: Остаток от деления

int remainder(int a,int b){
  if(b ==0 ) throw Exception('Деление на ноль недопустимо.');
  return a % b;
}

// Задача18: Квадратный корень

double squareRootFunction(double number){
  if(number <0 ) throw ArgumentError('Невозможно найти квадратный корень из отрицательного числа.');
  return Math.sqrt(number);
}

// Задача19: Конвертер температуры

double convertCelsiusToFahrenheit(double celsius){
  if(celsius < -273.15 ) throw ArgumentError('Температура ниже абсолютного нуля недопустима.');
  return celsius *9/5 +32;
}

// Задача20: Проверка строки на пустоту

void checkStringIsEmpty(String? str){
  if(str == null || str.isEmpty ) throw ArgumentError('Строка пустая или равна null.');
}
