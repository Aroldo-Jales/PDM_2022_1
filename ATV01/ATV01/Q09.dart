class Pessoa1 {
  //String nome; // O valor não pode ser nulo
}

class Pessoa2 {
  late String nome; // Será inicializado posteriormente;

  void printNome() {
    String nome2 = nome; // Nesse momento não será mais nulo;
    print(nome2);
  }
}

class Pessoa3 {
  String? nome; // Pode ser nulo, é nulo;

  void printNome() {
    //String nome2 = nome; // nome2 não pode ser nulo pois é String;
    //print(nome2);
  }
}

class Pessoa4 {
  String? nome; // Pode ser nulo, é nulo;

  void printNome() {
    String nome2 = nome!; // Garantia de que não será nulo;
    print(nome2);
  }
}

class Pessoa5 {
  String? nome = "Aroldo"; // Pode ser nulo, valor inicial não nulo;

  void printNome() {
    nome = null;
    nome = "Aroldo";
    String nome2 = nome!; //Garantia de que não será nulo;
    print(nome2);
  }
}
