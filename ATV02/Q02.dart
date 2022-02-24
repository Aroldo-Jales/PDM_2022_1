// 2. Crie uma função que receba um array e retorne a multiplicação de todos os
// elementos;

num multiplicaTodosElementos(List<num> lista) {
  num multiplicacao = lista.first;
  for (int i = 1; i < lista.length; i++) {
    multiplicacao *= lista[i];
  }
  return multiplicacao;
}
