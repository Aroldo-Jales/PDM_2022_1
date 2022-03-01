[Link para o vídeo](https://youtu.be/zBaZJtyluIM)

<br>

> <h2>Métodos de Extensão</h2> Funcionalidade introduzida a partir da versão 2.7

<br>

É muito comum em uma aplicação surgir a necessidade de adicionarmos novas funcionalidades a métodos já existentes, com isso, também se torna comum você criar uma classe de utilitários repleta de métodos estáticos, logo, se bem aplicado, isso lhe beneficia na reutilização de código, mas por outro lado, também pode lhe comprometer com uma quantidade excessiva de linhas de código centralizadas em uma única classe, muitos métodos implementados porém pouco utilizados e o fato de possuir um acoplamento forte com à quem utiliza.

O Dart permite que você adicione métodos adicionais a qualquer classe. Eles são super úteis, especialmente para transformações em dados primitivos como strings.

<br>
<h3>Principal Exemplo:</h3>

```dart
void main() {
  String text = 'https://adress.com';
  bool isUrl = text.contains('https://') || text.contains('http://');
  print(isUrl); // true;
}
```
Como seria feito antes: 
```dart
bool isUrl(String text) {
  return text.contains('https://') || text.contains('http://');
}
```
```dart
void main() {
  String text = 'https://adress.com';
  print(isUrl(text)); // true
}
```
Como pode ser feito:
```dart
extension StringExt on String {
  bool get isUrl => this.contains('https://') || this.contains('http://');
}
```
```dart
void main() {
  String text = 'https://adress.com';
  print(text.isUrl); // true
}
```

<br>
<h3> Outros exemplos:</h3>

Int:
```dart
extension IntExt on int {
  int get addTen => this + 10;
}
```
```dart
void main() {
  print(32.addTen); // 42
}
```
Datetime:
```dart
extension DateTimeExt on DateTime {
  DateTime get dateOnly => DateTime(this.year, this.month, this.day);
}
```
```dart
void main() {
  DateTime date = DateTime.now();
  print(date); // 2022-03-01 10:03:04.985160
  print(date.dateOnly); // 2022-03-01 00:00:00.000
}
```
Possível Valor Nulo:
```dart
extension StringExt on String? {
  String get nullString => this ?? 'null';
}
```
```dart
void main() {
  String? str;
  print(str.nullString); // 'null'
}
```
Generic Extensions:
```dart
extension<T> on List<T> {
  List<String> priceLabels(String symbol) => 
  this.map((item) => "$symbol${item}").toList();

  List<num> get numericList => 
  this.map((item) => num.parse("${item}")).toList();
}
```
```dart
void main() {
  List prices = [1.99, 42, "6"];
  print(prices.priceLabels("\$")); // [$1.99, $42, $6]
  print(prices.numericList); // [1.99, 42, 6]
}
```

Com operadores: 

Operador (&):

```dart
extension StringExt on String {
  String concatWithSpace(String other) {
    return '$this $other';
  }

  String operator &(String other) => '$this $other';
}
```

```dart
void main() {
  print('Extension'.concatWithSpace('Methods')); // 'Extension Methods'
  print('Extension' & 'Methods'); // 'Extension Methods'
}
```

Operador (*):

```dart
extension<T> on List<T> {
  List<num> operator *(num n) => 
  this.map((item) => num.parse("${item}") * n).toList();
}
```
```dart
void main() {
  List prices = [1.99, 42, "6"];
  print(prices * 2); // [3.98, 84, 12]
}
```
<br>
<h3> Importação de métodos de Extensão: </h3>

```dart
// extensions.dart
extension StringExt on String {
  int get parseInt => int.parse(this);
}

// extensions2.dart
extension StringExt2 on String {
  int get parseInt => int.parse(this);
}
```

```dart
import 'extensions.dart';

void main() {
  print('42'.parseInt); // 42
}
```

```dart
import 'extensions.dart';
import 'extensions2.dart';

void main() {
  print('42'.parseInt);
  //'A member named 'parseInt' is defined in extension 'StringExt' and extension 'StringExt2''
}
```
Invocação explícita:
```dart
import 'extensions.dart';
import 'extensions2.dart';

void main() {
  print(StringExt2('42').parseInt); // 42
}
```

hide:
```dart
import 'extensions.dart';
import 'extensions2.dart' hide StringExt2;

void main() {
  print('42'.parseInt); // 42
}
```

as:
```dart
// extensions.dart
extension StringExt on String {
  int get parseInt => int.parse(this);
}

// extensions2.dart
extension StringExt on String {
  int get parseInt => int.parse(this);
}
```

```dart
import 'extensions.dart';
import 'extensions2.dart' as ext2;

void main() {
  print(StringExt('42').parseInt); // 42
  print(ext2.StringExt('42').parseInt); // 42
}
```

Extensão Anônima
```dart
extension on String {
  DateTime toDate() {
    int get parseInt => int.parse(this);
  }
}
```
<br>

Prós: 
* Separação de responsabilidades;
* Semântica mais clara para o código;

Contras:
* Uso excessivo pode acabar causando uma certa complexidade no seu código;

<p class="br"><p>
