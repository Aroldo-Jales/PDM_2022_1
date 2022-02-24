import 'Tributaveis.dart';

class SeguroDeVida implements Tributavel {
  @override
  double calcularTributos() {
    double valor = 50;
    return valor;
  }
}
