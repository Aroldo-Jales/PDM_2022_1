// 4. Crie duas versões de uma função que eleva um número (base) a outro (expoente):
// a primeira versão é a tradicional, já a segunda deve ser uma arrow function.

import 'dart:math';

num elevacaoNumeroTradicional(num n1, num n2) {
  return pow(n1, n2);
}

num elevacaoNumeroArrow(num n1, num n2) => pow(n1, n2);

void main() {
  num n1 = 2;
  num n2 = 3;
  print("Elevacao numero tradicional = ${elevacaoNumeroTradicional(n1, n2)}");
  print("Elevacao numero arrow function = ${elevacaoNumeroArrow(n1, n2)}");
}
