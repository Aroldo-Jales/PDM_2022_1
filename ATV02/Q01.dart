// 1. Crie uma função que receba um array e retorne a soma de todos os elementos.

num somaTodosElementos(List<num> lista) {
  num soma = 0;
  lista.forEach((element) => soma += element);
  return soma;
}
