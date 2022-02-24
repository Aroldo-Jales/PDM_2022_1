import 'dart:math';

/* 1. Declare dois números n1 e n2 e inicialize-os. Realize as operações abaixo e exiba
o resultado de cada uma: */

void main() {
  // a. O resto da divisão de n1 por n2;
  num n1 = 392;
  num n2 = 50;
  num resto = n1 % n2; // 42
  print("n1 % n2 = $resto");

  // b. n1 dividido por n2 com divisão inteira (operador: ~/);
  n1 = 85;
  n2 = 2;
  int divisaoInteira = n1 ~/ n2; // 42
  print("n1 ~/ n2 = $divisaoInteira");

  // c. n1 elevado a n2;
  n1 = 4;
  n2 = 2.69615872;
  num elevacao = pow(n1, n2); // 42.00000050134787
  print("n1^n2 = $elevacao");

  // d. teste se n1 é inteiro (operador is);
  bool isInt = n1 is int; // true
  print("n1 é inteiro? $isInt");

  // e. teste se n1 não é inteiro (operador is!).
  bool isNotInt = n1 is! int; // false
  print("n1 não é inteiro? $isNotInt");
}
