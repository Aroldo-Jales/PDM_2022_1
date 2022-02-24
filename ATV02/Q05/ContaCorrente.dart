import 'Conta.dart';
import 'Tributaveis.dart';

class ContaCorrente extends Conta implements Tributavel {
  late bool _ativa;

  ContaCorrente(String numero, double saldo) : super(numero, saldo) {
    this._ativa = true;
  }
  ContaCorrente.inativa(String numero, double saldo) : super(numero, saldo) {
    this._ativa = false;
  }

  @override
  double calcularTributos() {
    double valor = getSaldo() * 0.10;
    return valor;
  }
}
