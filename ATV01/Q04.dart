/*4. Em uma empresa os funcionários
renovam o contrato por três anos. O
salário sofrerá um reajuste de 7%,
6% e 5%, respectivamente, nos
próximos três anos. Escreva um
script que declare uma variável com
o salário mensal atual do
funcionário, e então, imprima o
salário mensal para cada um dos
três próximos anos. */

void main() {
  num salario = 3500;

  print('''
Salário mensal atual: $salario
Salário ano 1: ${salario + (salario * 0.07)}
Salário ano 2: ${salario + (salario * 0.013)}
Salário ano 3: ${salario + (salario * 0.018)}''');
}
