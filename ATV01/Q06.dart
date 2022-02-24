/* 6. Declare 3 variáveis numéricas,
calcule a média aritmética e exiba: 
a. “aprovado”: se a nota for
maior ou igual a 7;
b. “reprovado”: se for menor
que 4;
c. “exame final”: se estiver
entre 4 e 7.*/

void main() {
  num n1 = 4.2;
  num n2 = 4.2;
  num n3 = 4.2;
  num media = (n1 + n2 + n3) / 3;

  if (media >= 7) {
    print("aprovado");
  } else if (media < 7 && media > 4) {
    print("exame final");
  } else {
    print("reprovado");
  }
}
