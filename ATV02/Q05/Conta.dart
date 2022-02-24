class Conta {
  late String _numero;
  late double _saldo;

  Conta(String numero, double saldo) {
    this._numero = numero;
    this._saldo = saldo;
  }

  void depositar(double valor) {
    if (valor <= 0) {
      throw ContaException("Valor inválido!");
    }
    this._saldo += valor;
  }

  void sacar(double valor) {
    validarValor(valor);
    this._saldo -= valor;
  }

  void transferir(Conta destino, double valor) {
    this.sacar(valor);
    destino.depositar(valor);
  }

  String getNumero() {
    return this._numero;
  }

  void setNumero(String numero) {
    this._numero = numero;
  }

  double getSaldo() {
    return this._saldo;
  }

  void setSaldo(double saldo) {
    this._saldo = saldo;
  }

  void validarValor(double valor) {
    if (this._saldo - valor <= 0) {
      throw ContaException("Saldo insuficiente!");
    }
  }
}

class ContaException implements Exception {
  String message;
  ContaException(this.message);
}
