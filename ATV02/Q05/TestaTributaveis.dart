// 5. Implemente um dos exercícios da disciplina anterior de POO na linguagem DART
// aplicando ao mesmo tempo: herança, atributos privados, métodos get e/ou set e
// construtores nomeados. Explique essa questão em vídeo e adicione ao repositório.

// Exercício anterior: https://classroom.google.com/u/1/w/MjA2MjgxNzM2NDMw/t/all
// Aplicacao em Java: https://github.com/Aroldo-Jales/POO_2020_2/tree/main/Atividades/POO_ATV_08/questao_10_12

import 'Conta.dart';
import 'AuditoriaInterna.dart';
import 'ContaCorrente.dart';
import 'SeguroDeVida.dart';

void main() {
  try {
    ContaCorrente c1 = new ContaCorrente("1", 500); // 50
    ContaCorrente c2 = new ContaCorrente("2", 1000); // 100
    ContaCorrente c3 = new ContaCorrente.inativa("3", 0);

    SeguroDeVida s1 = new SeguroDeVida(); // 50
    SeguroDeVida s2 = new SeguroDeVida(); // 50

    AuditoriaInterna a = new AuditoriaInterna();
    a.adcionaTributavel(c1);
    a.adcionaTributavel(c2);
    a.adcionaTributavel(s1);
    a.adcionaTributavel(s2);

    print("Tributos = ${a.calcularTributos()}"); // 250,00

  } on ContaException catch (e) {
    print(e.message);
  }
}
