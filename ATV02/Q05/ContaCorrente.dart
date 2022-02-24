import 'Conta.dart';
import 'Tributaveis.dart';

class ContaCorrente extends Conta implements Tributavel {
  ContaCorrente(String numero, double saldo) : super(numero, saldo);

  @override
  double calcularTributos() {
    double valor = getSaldo() * 0.10;
    return valor;
  }
}
