// 3. Crie uma função que receba um array e uma das funções com a sintaxe acima e as
// execute. Faça um exemplo para ambas;

import 'Q01.dart';
import 'Q02.dart';

num executaFuncao(List<num> lista, num Function(List<num> lista) fun) => fun(lista);

void main() {
  List<num> lista = [1, 2, 3, 4, 5];
  print("Soma todos os elementos = ${executaFuncao(lista, somaTodosElementos)}"); // 15
  print("Multiplica todos os elementos = ${executaFuncao(lista, multiplicaTodosElementos)}"); // 120
}
