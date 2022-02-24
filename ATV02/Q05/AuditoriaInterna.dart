import 'Tributaveis.dart';

class AuditoriaInterna {
  List<Tributavel> _ListTributaveis = [];

  void adcionaTributavel(Tributavel t) {
    _ListTributaveis.add(t);
  }

  double calcularTributos() {
    double total = 0;
    for (Tributavel t in _ListTributaveis) {
      total += t.calcularTributos();
    }
    return total;
  }
}
