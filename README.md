# Flutter Class UERJ - Zona Oeste

Estudos de Flutter para a empresa junior da universidade estadual do estado do rio de janeiro, campus zona-oeste

## Índice
- [Introdução ao Dart](#introdução-ao-dart)
- [Variáveis e Tipos de Dados](#variáveis-e-tipos-de-dados)
- [Métodos de String](#métodos-de-string)
- [Métodos de int](#métodos-de-int)
- [Métodos de double](#métodos-de-double)
- [Operadores](#operadores)
- [Estruturas de Controle](#estruturas-de-controle)
- [Funções](#funções)
- [Coleções](#coleções)
  - [List (Lista)](#list-lista)
  - [Set (Conjunto)](#set-conjunto)
  - [Map (Mapa)](#map-mapa)
- [Classes e Objetos](#classes-e-objetos)
  - [Herança](#herança)
  - [Abstração](#abstração)
  - [Mixin](#mixin)
  - [Interface](#interface)
  - [Polimorfismo](#polimorfismo)
  - [Encapsulamento](#encapsulamento)
- [Enums](#enums)
- [Null Safety](#null-safety)
- [Assincronismo](#assincronismo)
  - [Future](#future)
  - [Stream](#stream)

## Introdução ao Dart

Dart é uma linguagem de programação orientada a objetos, desenvolvida pelo Google, e é a linguagem base para o desenvolvimento com Flutter. É fortemente tipada, mas também suporta inferência de tipos.

### Hello World

```dart
void main() {
  print('Hello, World!');
}
```

## Variáveis e Tipos de Dados

### Declaração de Variáveis

```dart
// Usando var - tipo inferido
var nome = 'João';
var idade = 25;

// Usando tipos explícitos
String sobrenome = 'Silva';
int ano = 2024;
double altura = 1.75;
bool ativo = true;

// Constantes
final cidade = 'Rio de Janeiro'; // Valor definido em tempo de execução
const PI = 3.14159; // Valor definido em tempo de compilação
```

### Tipos de Dados Básicos

```dart
// Números
int inteiro = 42;
double decimal = 3.14;
num numero = 10; // Pode ser int ou double

// Strings
String texto = 'Olá, Dart!';
String multilinhas = '''
  Este é um texto
  com múltiplas linhas
''';

// String interpolation
String saudacao = 'Olá, $nome! Você tem $idade anos.';
String calculo = 'Soma: ${2 + 2}';

// Booleanos
bool verdadeiro = true;
bool falso = false;
```

## Métodos de String

Dart oferece uma vasta gama de métodos para manipulação de strings.

### Métodos de Transformação

```dart
void main() {
  String texto = 'Olá, Mundo!';
  
  // Converter para maiúsculas
  print(texto.toUpperCase()); // OLÁ, MUNDO!
  
  // Converter para minúsculas
  print(texto.toLowerCase()); // olá, mundo!
  
  // Remover espaços em branco
  String comEspacos = '  texto  ';
  print(comEspacos.trim()); // 'texto'
  print(comEspacos.trimLeft()); // 'texto  '
  print(comEspacos.trimRight()); // '  texto'
  
  // Substituir
  String frase = 'Eu gosto de Java';
  print(frase.replaceAll('Java', 'Dart')); // Eu gosto de Dart
  print(frase.replaceFirst('Java', 'Dart')); // Eu gosto de Dart
  
  // Substituir range de caracteres
  String palavra = 'Hello';
  print(palavra.replaceRange(0, 1, 'J')); // Jello
  
  // Preencher com zeros à esquerda
  String numero = '5';
  print(numero.padLeft(3, '0')); // 005
  print(numero.padRight(3, '0')); // 500
}
```

### Métodos de Busca e Verificação

```dart
void main() {
  String texto = 'Programação em Dart é incrível!';
  
  // Verificar se contém
  print(texto.contains('Dart')); // true
  print(texto.contains('Java')); // false
  
  // Começa com
  print(texto.startsWith('Prog')); // true
  
  // Termina com
  print(texto.endsWith('!')); // true
  
  // Encontrar índice
  print(texto.indexOf('Dart')); // 15
  print(texto.lastIndexOf('a')); // 27
  print(texto.indexOf('Python')); // -1 (não encontrado)
  
  // Verificar se está vazia
  print(''.isEmpty); // true
  print(''.isNotEmpty); // false
  
  // Comparar strings (case-sensitive)
  print('Dart' == 'dart'); // false
  print('Dart'.toLowerCase() == 'dart'.toLowerCase()); // true
}
```

### Métodos de Extração e Divisão

```dart
void main() {
  String texto = 'Olá, Mundo!';
  
  // Substring
  print(texto.substring(0, 3)); // Olá
  print(texto.substring(5)); // Mundo!
  
  // Dividir string
  String frase = 'maçã,banana,laranja';
  List<String> frutas = frase.split(',');
  print(frutas); // [maçã, banana, laranja]
  
  String texto2 = 'Olá Mundo Dart';
  List<String> palavras = texto2.split(' ');
  print(palavras); // [Olá, Mundo, Dart]
  
  // Caractere em posição
  print(texto[0]); // O
  
  // Código do caractere
  print(texto.codeUnitAt(0)); // 79 (código Unicode de 'O')
  
  // Todos os códigos de caracteres
  print(texto.codeUnits); // [79, 108, 225, 44, 32, 77, 117, 110, 100, 111, 33]
  
  // Split com pattern
  String data = '2024-01-15';
  List<String> partes = data.split('-');
  print(partes); // [2024, 01, 15]
}
```

### Métodos de Construção

```dart
void main() {
  // Repetir string
  String asterisco = '*';
  print(asterisco * 5); // *****
  
  // Concatenar
  String nome = 'João';
  String sobrenome = 'Silva';
  String nomeCompleto = nome + ' ' + sobrenome;
  print(nomeCompleto); // João Silva
  
  // Join de lista
  List<String> palavras = ['Dart', 'é', 'incrível'];
  String frase = palavras.join(' ');
  print(frase); // Dart é incrível
  
  // Split e map
  String csv = 'nome,idade,cidade';
  var resultado = csv.split(',').map((s) => s.toUpperCase()).toList();
  print(resultado); // [NOME, IDADE, CIDADE]
}
```

### Métodos de Análise

```dart
void main() {
  String texto = 'Hello World';
  
  // Comprimento
  print(texto.length); // 11
  
  // Reverter (não há método nativo, mas pode-se fazer assim)
  String reversed = texto.split('').reversed.join();
  print(reversed); // dlroW olleH
  
  // Comparar
  print('apple'.compareTo('banana')); // negativo (apple vem antes)
  print('banana'.compareTo('apple')); // positivo (banana vem depois)
  print('dart'.compareTo('dart')); // 0 (são iguais)
  
  // Verificar se contém apenas números
  String numero = '12345';
  bool somenteNumeros = numero.contains(RegExp(r'^[0-9]+$'));
  print(somenteNumeros); // true
  
  // Verificar se contém apenas letras
  String letras = 'AbcDef';
  bool somenteLetras = letras.contains(RegExp(r'^[a-zA-Z]+$'));
  print(somenteLetras); // true
}
```

### Interpolação e Formatação

```dart
void main() {
  String nome = 'Maria';
  int idade = 25;
  double altura = 1.65;
  
  // Interpolação simples
  print('Nome: $nome'); // Nome: Maria
  
  // Interpolação com expressão
  print('Idade daqui a 5 anos: ${idade + 5}'); // Idade daqui a 5 anos: 30
  
  // Múltiplas variáveis
  print('$nome tem $idade anos e ${altura}m de altura');
  
  // String com caracteres de escape
  String citacao = 'Ele disse: "Dart é incrível!"';
  print(citacao);
  
  String caminho = 'C:\\Users\\Documents';
  print(caminho);
  
  // Raw string (ignora caracteres de escape)
  String rawString = r'C:\Users\Documents';
  print(rawString); // C:\Users\Documents
  
  // String multilinha
  String poema = '''
  Roses are red,
  Violets are blue,
  Dart is awesome,
  And so are you!
  ''';
  print(poema);
}
```

## Métodos de int

Dart fornece diversos métodos úteis para trabalhar com números inteiros.

### Métodos de Conversão

```dart
void main() {
  int numero = 42;
  
  // Converter para String
  String texto = numero.toString();
  print(texto); // '42'
  
  // Converter para double
  double valorDouble = numero.toDouble();
  print(valorDouble); // 42.0
  
  // Converter para base específica
  print(numero.toRadixString(2)); // '101010' (binário)
  print(numero.toRadixString(8)); // '52' (octal)
  print(numero.toRadixString(16)); // '2a' (hexadecimal)
  
  // Parse de String para int
  int valor1 = int.parse('123');
  print(valor1); // 123
  
  int valor2 = int.parse('FF', radix: 16);
  print(valor2); // 255
  
  // Parse com tratamento de erro
  int? valor3 = int.tryParse('abc');
  print(valor3); // null (falha na conversão)
  
  int? valor4 = int.tryParse('456');
  print(valor4); // 456
}
```

### Métodos Matemáticos

```dart
void main() {
  int a = -10;
  int b = 7;
  
  // Valor absoluto
  print(a.abs()); // 10
  
  // Sinal (-1, 0, ou 1)
  print(a.sign); // -1
  print(b.sign); // 1
  print(0.sign); // 0
  
  // Verificar se é par ou ímpar
  print(b.isEven); // false
  print(b.isOdd); // true
  
  // Verificar se é negativo
  print(a.isNegative); // true
  print(b.isNegative); // false
  
  // Verificar se é finito ou infinito
  print(numero.isFinite); // true
  print(numero.isInfinite); // false
  print(numero.isNaN); // false
  
  // Menor/Maior entre dois valores (importando dart:math)
  import 'dart:math' as math;
  print(math.min(a.abs(), b)); // 7
  print(math.max(a.abs(), b)); // 10
}
```

### Operações com Range

```dart
void main() {
  int numero = 5;
  
  // Clamping (limitar valor entre min e max)
  print(numero.clamp(0, 3)); // 3 (limitado ao máximo)
  print(numero.clamp(6, 10)); // 6 (limitado ao mínimo)
  print(numero.clamp(0, 10)); // 5 (dentro do range)
  
  // Comparações
  print(5.compareTo(10)); // -1 (5 é menor)
  print(10.compareTo(5)); // 1 (10 é maior)
  print(5.compareTo(5)); // 0 (são iguais)
  
  // Resto da divisão (módulo)
  print(10.remainder(3)); // 1
  print(10 % 3); // 1 (mesma coisa que remainder)
  
  // GCD (Greatest Common Divisor - MDC)
  print(12.gcd(8)); // 4
  print(15.gcd(25)); // 5
}
```

### Operações Bit a Bit

```dart
void main() {
  int a = 5;  // 0101 em binário
  int b = 3;  // 0011 em binário
  
  // AND bit a bit
  print(a & b); // 1 (0001)
  
  // OR bit a bit
  print(a | b); // 7 (0111)
  
  // XOR bit a bit
  print(a ^ b); // 6 (0110)
  
  // NOT bit a bit (complemento)
  print(~a); // -6
  
  // Deslocamento à esquerda
  print(a << 1); // 10 (1010)
  print(a << 2); // 20 (10100)
  
  // Deslocamento à direita
  print(a >> 1); // 2 (0010)
  print(a >> 2); // 1 (0001)
  
  // Número de bits necessários
  print(a.bitLength); // 3
  print(255.bitLength); // 8
}
```

### Iteração e Ranges

```dart
void main() {
  // Loop simples de 0 a n
  for (int i = 0; i < 5; i++) {
    print(i); // 0, 1, 2, 3, 4
  }
  
  // Gerar lista de números
  List<int> numeros = List.generate(5, (index) => index);
  print(numeros); // [0, 1, 2, 3, 4]
  
  // Gerar lista de números pares
  List<int> pares = List.generate(5, (index) => index * 2);
  print(pares); // [0, 2, 4, 6, 8]
  
  // Range com forEach (requer import de package ou implementação customizada)
  // Implementação simples de range
  Iterable<int> range(int start, int end) sync* {
    for (int i = start; i < end; i++) {
      yield i;
    }
  }
  
  for (int i in range(1, 6)) {
    print(i); // 1, 2, 3, 4, 5
  }
}
```

## Métodos de double

Dart oferece métodos específicos para trabalhar com números de ponto flutuante.

### Métodos de Conversão

```dart
void main() {
  double numero = 42.567;
  
  // Converter para String
  String texto = numero.toString();
  print(texto); // '42.567'
  
  // Converter para String com precisão
  print(numero.toStringAsFixed(2)); // '42.57'
  print(numero.toStringAsFixed(0)); // '43'
  print(numero.toStringAsFixed(5)); // '42.56700'
  
  // Notação exponencial
  print(numero.toStringAsExponential(2)); // '4.26e+1'
  print(1234567.89.toStringAsExponential()); // '1.23456789e+6'
  
  // Precisão (dígitos significativos)
  print(numero.toStringAsPrecision(3)); // '42.6'
  print(numero.toStringAsPrecision(5)); // '42.567'
  
  // Converter para int (truncar)
  int inteiro = numero.toInt();
  print(inteiro); // 42
  
  // Parse de String para double
  double valor1 = double.parse('3.14');
  print(valor1); // 3.14
  
  double? valor2 = double.tryParse('abc');
  print(valor2); // null
  
  // Valores especiais
  print(double.infinity); // Infinity
  print(double.negativeInfinity); // -Infinity
  print(double.nan); // NaN
  print(double.maxFinite); // 1.7976931348623157e+308
  print(double.minPositive); // 5e-324
}
```

### Métodos de Arredondamento

```dart
void main() {
  double numero = 42.567;
  double negativo = -42.567;
  
  // Arredondar para o inteiro mais próximo
  print(numero.round()); // 43
  print(negativo.round()); // -43
  print(42.4.round()); // 42
  print(42.5.round()); // 43
  
  // Arredondar para baixo (floor)
  print(numero.floor()); // 42
  print(negativo.floor()); // -43
  
  // Arredondar para cima (ceiling)
  print(numero.ceil()); // 43
  print(negativo.ceil()); // -42
  
  // Truncar (remover parte decimal)
  print(numero.truncate()); // 42
  print(negativo.truncate()); // -42
  
  // Retornar como double
  print(numero.roundToDouble()); // 43.0
  print(numero.floorToDouble()); // 42.0
  print(numero.ceilToDouble()); // 43.0
  print(numero.truncateToDouble()); // 42.0
}
```

### Métodos Matemáticos

```dart
import 'dart:math' as math;

void main() {
  double numero = -42.567;
  
  // Valor absoluto
  print(numero.abs()); // 42.567
  
  // Sinal
  print(numero.sign); // -1.0
  print(42.567.sign); // 1.0
  print(0.0.sign); // 0.0
  
  // Verificações
  print(numero.isNegative); // true
  print(numero.isFinite); // true
  print(numero.isInfinite); // false
  print(numero.isNaN); // false
  
  double inf = double.infinity;
  print(inf.isInfinite); // true
  
  double notANumber = double.nan;
  print(notANumber.isNaN); // true
  
  // Clamping
  print(numero.clamp(-50.0, -40.0)); // -42.567
  print(numero.clamp(-40.0, 0.0)); // -40.0
  
  // Comparação
  print(3.14.compareTo(2.71)); // 1 (maior)
  print(2.71.compareTo(3.14)); // -1 (menor)
  print(3.14.compareTo(3.14)); // 0 (igual)
  
  // Resto da divisão
  print(10.5.remainder(3.0)); // 1.5
  print((-10.5).remainder(3.0)); // -1.5
  
  // Módulo (diferente de remainder para negativos)
  print(10.5 % 3.0); // 1.5
  print((-10.5) % 3.0); // 1.5
}
```

### Operações Matemáticas Avançadas (dart:math)

```dart
import 'dart:math' as math;

void main() {
  double x = 2.0;
  double y = 3.0;
  double angulo = math.pi / 4; // 45 graus em radianos
  
  // Potência
  print(math.pow(x, y)); // 8.0 (2³)
  
  // Raiz quadrada
  print(math.sqrt(16.0)); // 4.0
  print(math.sqrt(2.0)); // 1.4142135623730951
  
  // Exponencial
  print(math.exp(1.0)); // 2.718281828459045 (e)
  
  // Logaritmo natural (ln)
  print(math.log(math.e)); // 1.0
  print(math.log(10.0)); // 2.302585092994046
  
  // Trigonometria
  print(math.sin(angulo)); // 0.7071067811865475
  print(math.cos(angulo)); // 0.7071067811865476
  print(math.tan(angulo)); // 0.9999999999999999
  
  // Arco (inversa)
  print(math.asin(0.5)); // 0.5235987755982989 (30° em radianos)
  print(math.acos(0.5)); // 1.0471975511965979 (60° em radianos)
  print(math.atan(1.0)); // 0.7853981633974483 (45° em radianos)
  
  // Atan2 (útil para coordenadas)
  print(math.atan2(1.0, 1.0)); // 0.7853981633974483
  
  // Conversão graus/radianos (fórmulas)
  double grausParaRadianos(double graus) => graus * math.pi / 180;
  double radianosParaGraus(double radianos) => radianos * 180 / math.pi;
  
  print(grausParaRadianos(90)); // 1.5707963267948966
  print(radianosParaGraus(math.pi)); // 180.0
  
  // Valores máximo e mínimo
  print(math.max(3.14, 2.71)); // 3.14
  print(math.min(3.14, 2.71)); // 2.71
  
  // Número aleatório
  var random = math.Random();
  print(random.nextDouble()); // Valor entre 0.0 e 1.0
  print(random.nextInt(100)); // Inteiro entre 0 e 99
  
  // Constantes importantes
  print(math.pi); // 3.141592653589793
  print(math.e); // 2.718281828459045
  print(math.sqrt2); // 1.4142135623730951
  print(math.ln10); // 2.302585092994046
  print(math.ln2); // 0.6931471805599453
}
```

## Operadores

### Operadores Aritméticos

```dart
void main() {
  int a = 10;
  int b = 3;
  
  print('Soma: ${a + b}');        // 13
  print('Subtração: ${a - b}');   // 7
  print('Multiplicação: ${a * b}'); // 30
  print('Divisão: ${a / b}');     // 3.333...
  print('Divisão inteira: ${a ~/ b}'); // 3
  print('Módulo: ${a % b}');      // 1
}
```

### Operadores de Comparação

```dart
void main() {
  int x = 5;
  int y = 10;
  
  print(x == y);  // false (igual)
  print(x != y);  // true (diferente)
  print(x > y);   // false (maior)
  print(x < y);   // true (menor)
  print(x >= y);  // false (maior ou igual)
  print(x <= y);  // true (menor ou igual)
}
```

### Operadores Lógicos

```dart
void main() {
  bool a = true;
  bool b = false;
  
  print(a && b);  // false (E lógico)
  print(a || b);  // true (OU lógico)
  print(!a);      // false (NÃO lógico)
}
```

## Estruturas de Controle

### If-Else

```dart
void verificarIdade(int idade) {
  if (idade >= 18) {
    print('Maior de idade');
  } else if (idade >= 13) {
    print('Adolescente');
  } else {
    print('Criança');
  }
}
```

### Switch-Case

```dart
void verificarDiaSemana(int dia) {
  switch (dia) {
    case 1:
      print('Segunda-feira');
      break;
    case 2:
      print('Terça-feira');
      break;
    case 3:
      print('Quarta-feira');
      break;
    case 4:
      print('Quinta-feira');
      break;
    case 5:
      print('Sexta-feira');
      break;
    case 6:
    case 7:
      print('Final de semana');
      break;
    default:
      print('Dia inválido');
  }
}
```

### Loops

```dart
void main() {
  // For loop
  for (int i = 0; i < 5; i++) {
    print('Contador: $i');
  }
  
  // For-in loop
  var frutas = ['Maçã', 'Banana', 'Laranja'];
  for (var fruta in frutas) {
    print(fruta);
  }
  
  // While loop
  int contador = 0;
  while (contador < 5) {
    print('While: $contador');
    contador++;
  }
  
  // Do-While loop
  int num = 0;
  do {
    print('Do-While: $num');
    num++;
  } while (num < 5);
}
```

## Funções

### Funções Básicas

```dart
// Função sem retorno
void saudacao(String nome) {
  print('Olá, $nome!');
}

// Função com retorno
int somar(int a, int b) {
  return a + b;
}

// Função com arrow syntax (para expressões simples)
int multiplicar(int a, int b) => a * b;

// Função com parâmetros opcionais
String cumprimentar(String nome, [String saudacao = 'Olá']) {
  return '$saudacao, $nome!';
}

// Função com parâmetros nomeados
void criarUsuario({required String nome, int idade = 0, String? email}) {
  print('Nome: $nome, Idade: $idade, Email: $email');
}

void main() {
  saudacao('Maria');
  print(somar(5, 3));
  print(multiplicar(4, 2));
  print(cumprimentar('João'));
  print(cumprimentar('Ana', 'Bem-vinda'));
  criarUsuario(nome: 'Pedro', idade: 25, email: 'pedro@email.com');
}
```

### Funções Anônimas e Lambda

```dart
void main() {
  // Função anônima
  var lista = [1, 2, 3, 4, 5];
  
  lista.forEach((numero) {
    print('Número: $numero');
  });
  
  // Com arrow function
  var dobrados = lista.map((n) => n * 2).toList();
  print('Dobrados: $dobrados');
  
  // Filtrar elementos
  var pares = lista.where((n) => n % 2 == 0).toList();
  print('Pares: $pares');
}
```

## Classes e Objetos

Classes são templates para criar objetos. Dart é uma linguagem orientada a objetos onde tudo é um objeto.

### Classes Básicas

```dart
// Definição de classe
class Pessoa {
  // Propriedades
  String nome;
  int idade;
  
  // Construtor
  Pessoa(this.nome, this.idade);
  
  // Construtor nomeado
  Pessoa.comNome(this.nome) : idade = 0;
  
  // Construtor factory
  factory Pessoa.adulto(String nome) {
    return Pessoa(nome, 18);
  }
  
  // Método
  void apresentar() {
    print('Olá, meu nome é $nome e tenho $idade anos.');
  }
  
  // Getter
  bool get isMaiorDeIdade => idade >= 18;
  
  // Setter
  set definirIdade(int novaIdade) {
    if (novaIdade >= 0) {
      idade = novaIdade;
    }
  }
  
  // Método estático
  static void informacao() {
    print('Esta é a classe Pessoa');
  }
  
  // Propriedade estática
  static int contador = 0;
  
  // Operador customizado
  bool operator ==(Object other) {
    return other is Pessoa && other.nome == nome && other.idade == idade;
  }
  
  @override
  int get hashCode => nome.hashCode ^ idade.hashCode;
  
  @override
  String toString() => 'Pessoa(nome: $nome, idade: $idade)';
}

void main() {
  var pessoa1 = Pessoa('João', 25);
  pessoa1.apresentar();
  print('Maior de idade: ${pessoa1.isMaiorDeIdade}');
  
  var pessoa2 = Pessoa.comNome('Maria');
  pessoa2.definirIdade = 30;
  pessoa2.apresentar();
  
  var pessoa3 = Pessoa.adulto('Pedro');
  pessoa3.apresentar();
  
  // Método estático
  Pessoa.informacao();
  
  // Comparação
  var pessoa4 = Pessoa('João', 25);
  print(pessoa1 == pessoa4); // true
}
```

### Herança

Herança permite que uma classe (subclasse) herde propriedades e métodos de outra classe (superclasse).

```dart
// Classe base (superclasse)
class Animal {
  String nome;
  int idade;
  
  Animal(this.nome, this.idade);
  
  void emitirSom() {
    print('$nome faz algum som');
  }
  
  void dormir() {
    print('$nome está dormindo');
  }
  
  void apresentar() {
    print('Este é $nome, tem $idade anos');
  }
}

// Classe derivada (subclasse)
class Cachorro extends Animal {
  String raca;
  
  // Construtor que chama o construtor da superclasse
  Cachorro(String nome, int idade, this.raca) : super(nome, idade);
  
  // Sobrescrevendo método da superclasse
  @override
  void emitirSom() {
    print('$nome late: Au au!');
  }
  
  // Método específico da subclasse
  void buscar() {
    print('$nome está buscando a bolinha');
  }
  
  // Acessar método da superclasse
  void apresentarCompleto() {
    super.apresentar();
    print('Raça: $raca');
  }
}

class Gato extends Animal {
  bool interno;
  
  Gato(String nome, int idade, this.interno) : super(nome, idade);
  
  @override
  void emitirSom() {
    print('$nome mia: Miau!');
  }
  
  void arranhar() {
    print('$nome está arranhando');
  }
}

class Passaro extends Animal {
  double envergaduraAsas;
  
  Passaro(String nome, int idade, this.envergaduraAsas) : super(nome, idade);
  
  @override
  void emitirSom() {
    print('$nome canta: Piu piu!');
  }
  
  void voar() {
    print('$nome está voando com ${envergaduraAsas}m de envergadura');
  }
}

void main() {
  var cachorro = Cachorro('Rex', 5, 'Labrador');
  cachorro.emitirSom(); // Au au!
  cachorro.buscar();
  cachorro.dormir();
  cachorro.apresentarCompleto();
  
  var gato = Gato('Mimi', 3, true);
  gato.emitirSom(); // Miau!
  gato.arranhar();
  
  var passaro = Passaro('Piu', 1, 0.3);
  passaro.emitirSom(); // Piu piu!
  passaro.voar();
  
  // Tipo da superclasse pode referenciar subclasses
  Animal animal1 = Cachorro('Bobby', 4, 'Poodle');
  Animal animal2 = Gato('Felix', 2, false);
  
  animal1.emitirSom(); // Au au!
  animal2.emitirSom(); // Miau!
  
  // Verificar tipo
  print(animal1 is Animal); // true
  print(animal1 is Cachorro); // true
  print(animal1 is Gato); // false
  
  // Type casting
  if (animal1 is Cachorro) {
    animal1.buscar(); // OK, Dart sabe que é Cachorro
  }
}
```

### Abstração

Classes abstratas não podem ser instanciadas e servem como templates para outras classes. Podem conter métodos abstratos (sem implementação) e métodos concretos (com implementação).

```dart
// Classe abstrata
abstract class Forma {
  String cor;
  
  Forma(this.cor);
  
  // Método abstrato (sem implementação)
  double calcularArea();
  
  // Outro método abstrato
  double calcularPerimetro();
  
  // Método concreto (com implementação)
  void desenhar() {
    print('Desenhando forma de cor $cor...');
  }
  
  void exibirInfo() {
    print('Área: ${calcularArea()}');
    print('Perímetro: ${calcularPerimetro()}');
    print('Cor: $cor');
  }
}

class Retangulo extends Forma {
  double largura;
  double altura;
  
  Retangulo(this.largura, this.altura, String cor) : super(cor);
  
  @override
  double calcularArea() {
    return largura * altura;
  }
  
  @override
  double calcularPerimetro() {
    return 2 * (largura + altura);
  }
}

class Circulo extends Forma {
  double raio;
  
  Circulo(this.raio, String cor) : super(cor);
  
  @override
  double calcularArea() {
    return 3.14159 * raio * raio;
  }
  
  @override
  double calcularPerimetro() {
    return 2 * 3.14159 * raio;
  }
}

class Triangulo extends Forma {
  double lado1, lado2, lado3;
  
  Triangulo(this.lado1, this.lado2, this.lado3, String cor) : super(cor);
  
  @override
  double calcularArea() {
    // Fórmula de Heron
    double s = calcularPerimetro() / 2;
    return (s * (s - lado1) * (s - lado2) * (s - lado3)) / 2;
  }
  
  @override
  double calcularPerimetro() {
    return lado1 + lado2 + lado3;
  }
}

// Classe abstrata com mais abstrações
abstract class FormaComTextura extends Forma {
  String textura;
  
  FormaComTextura(String cor, this.textura) : super(cor);
  
  void aplicarTextura() {
    print('Aplicando textura: $textura');
  }
  
  // Mais um método abstrato
  String obterDescricao();
}

class Quadrado extends FormaComTextura {
  double lado;
  
  Quadrado(this.lado, String cor, String textura) : super(cor, textura);
  
  @override
  double calcularArea() => lado * lado;
  
  @override
  double calcularPerimetro() => 4 * lado;
  
  @override
  String obterDescricao() => 'Quadrado de lado $lado';
}

void main() {
  // var forma = Forma('azul'); // ERRO! Não pode instanciar classe abstrata
  
  var retangulo = Retangulo(5, 10, 'vermelho');
  retangulo.desenhar();
  retangulo.exibirInfo();
  
  var circulo = Circulo(7, 'azul');
  print('Área do círculo: ${circulo.calcularArea().toStringAsFixed(2)}');
  
  var triangulo = Triangulo(3, 4, 5, 'verde');
  triangulo.exibirInfo();
  
  // Lista polimórfica de formas
  List<Forma> formas = [
    Retangulo(4, 6, 'amarelo'),
    Circulo(5, 'roxo'),
    Triangulo(3, 4, 5, 'laranja'),
    Quadrado(8, 'preto', 'madeira')
  ];
  
  print('\nCalculando áreas de todas as formas:');
  for (var forma in formas) {
    print('Área: ${forma.calcularArea().toStringAsFixed(2)}');
  }
}
```

### Mixin

Mixins são uma forma de reutilizar código em múltiplas hierarquias de classes. Diferente de herança, uma classe pode usar múltiplos mixins.

```dart
// Mixin simples
mixin Nadador {
  void nadar() {
    print('Está nadando');
  }
  
  void mergulhar() {
    print('Está mergulhando');
  }
}

mixin Voador {
  double altitudeMaxima = 1000;
  
  void voar() {
    print('Está voando');
  }
  
  void pousar() {
    print('Está pousando');
  }
  
  void voarPara(double altitude) {
    if (altitude <= altitudeMaxima) {
      print('Voando para $altitude metros');
    } else {
      print('Altitude máxima é $altitudeMaxima metros');
    }
  }
}

mixin Corredor {
  double velocidadeMaxima = 50;
  
  void correr() {
    print('Está correndo a $velocidadeMaxima km/h');
  }
  
  void parar() {
    print('Parou de correr');
  }
}

// Mixin com restrição de tipo (on)
mixin Musical on Animal {
  String instrumento = 'desconhecido';
  
  void tocarMusica() {
    print('$nome está tocando $instrumento');
  }
  
  void cantar() {
    emitirSom();
    print('$nome está cantando');
  }
}

// Classes base
class Animal {
  String nome;
  
  Animal(this.nome);
  
  void emitirSom() {
    print('$nome faz um som');
  }
}

// Usando um mixin
class Pato extends Animal with Nadador, Voador, Corredor {
  Pato(String nome) : super(nome);
  
  @override
  void emitirSom() {
    print('$nome faz: Quack quack!');
  }
}

// Usando múltiplos mixins
class Peixe extends Animal with Nadador {
  Peixe(String nome) : super(nome);
  
  @override
  void emitirSom() {
    print('$nome faz: Glub glub!');
  }
}

class Aguia extends Animal with Voador {
  Aguia(String nome) : super(nome) {
    altitudeMaxima = 3000;
  }
  
  @override
  void emitirSom() {
    print('$nome faz: Screech!');
  }
}

class Cachorro extends Animal with Corredor, Nadador {
  Cachorro(String nome) : super(nome) {
    velocidadeMaxima = 45;
  }
  
  @override
  void emitirSom() {
    print('$nome faz: Au au!');
  }
}

// Usando mixin com restrição
class Papagaio extends Animal with Voador, Musical {
  Papagaio(String nome) : super(nome) {
    instrumento = 'voz';
  }
  
  @override
  void emitirSom() {
    print('$nome faz: Quer biscoito!');
  }
}

// Mixin com implementação de comportamento complexo
mixin Rastreavel {
  double _latitude = 0;
  double _longitude = 0;
  
  void atualizarPosicao(double lat, double lon) {
    _latitude = lat;
    _longitude = lon;
    print('Posição atualizada: ($_latitude, $_longitude)');
  }
  
  String obterLocalizacao() {
    return 'Lat: $_latitude, Lon: $_longitude';
  }
}

class Drone with Voador, Rastreavel {
  String modelo;
  
  Drone(this.modelo) {
    altitudeMaxima = 500;
  }
}

void main() {
  var pato = Pato('Donald');
  pato.emitirSom();
  pato.nadar();
  pato.voar();
  pato.correr();
  
  print('\n---');
  var peixe = Peixe('Nemo');
  peixe.nadar();
  peixe.mergulhar();
  // peixe.voar(); // ERRO! Peixe não tem o mixin Voador
  
  print('\n---');
  var aguia = Aguia('Asa Branca');
  aguia.voar();
  aguia.voarPara(2500);
  aguia.voarPara(4000); // Excede altitude máxima
  
  print('\n---');
  var cachorro = Cachorro('Rex');
  cachorro.correr();
  cachorro.nadar();
  
  print('\n---');
  var papagaio = Papagaio('Zé Carioca');
  papagaio.tocarMusica();
  papagaio.cantar();
  
  print('\n---');
  var drone = Drone('DJI Phantom');
  drone.voar();
  drone.atualizarPosicao(-22.9068, -43.1729);
  print(drone.obterLocalizacao());
}
```

### Interface

Em Dart, qualquer classe pode ser usada como interface. Quando uma classe implementa outra, ela deve fornecer implementação para todos os métodos e propriedades.

```dart
// Classe usada como interface
class Veiculo {
  String marca;
  String modelo;
  
  Veiculo(this.marca, this.modelo);
  
  void ligar() {
    print('Veículo ligado');
  }
  
  void desligar() {
    print('Veículo desligado');
  }
  
  void acelerar() {
    print('Acelerando');
  }
}

// Implementando interface (deve implementar tudo)
class Carro implements Veiculo {
  @override
  String marca;
  
  @override
  String modelo;
  
  int portas;
  
  Carro(this.marca, this.modelo, this.portas);
  
  @override
  void ligar() {
    print('Carro $marca $modelo ligado com a chave');
  }
  
  @override
  void desligar() {
    print('Carro desligado');
  }
  
  @override
  void acelerar() {
    print('Carro acelerando suavemente');
  }
  
  void abrirPorta() {
    print('Abrindo porta');
  }
}

class Moto implements Veiculo {
  @override
  String marca;
  
  @override
  String modelo;
  
  bool temCarenagem;
  
  Moto(this.marca, this.modelo, this.temCarenagem);
  
  @override
  void ligar() {
    print('Moto $marca $modelo ligada com o botão');
  }
  
  @override
  void desligar() {
    print('Moto desligada');
  }
  
  @override
  void acelerar() {
    print('Moto acelerando rapidamente');
  }
  
  void empinar() {
    print('Empinando a moto');
  }
}

// Múltiplas interfaces
abstract class Eletrico {
  void carregar();
  int get nivelBateria;
}

abstract class Autonomo {
  void ativarPilotoAutomatico();
  void desativarPilotoAutomatico();
}

class CarroEletrico implements Veiculo, Eletrico, Autonomo {
  @override
  String marca;
  
  @override
  String modelo;
  
  @override
  int nivelBateria = 100;
  
  bool pilotoAutomaticoAtivo = false;
  
  CarroEletrico(this.marca, this.modelo);
  
  @override
  void ligar() {
    print('$marca $modelo: Sistema elétrico iniciado');
  }
  
  @override
  void desligar() {
    print('Sistema elétrico desligado');
  }
  
  @override
  void acelerar() {
    if (nivelBateria > 0) {
      print('Acelerando silenciosamente');
      nivelBateria -= 1;
    } else {
      print('Bateria vazia!');
    }
  }
  
  @override
  void carregar() {
    print('Carregando bateria...');
    nivelBateria = 100;
  }
  
  @override
  void ativarPilotoAutomatico() {
    pilotoAutomaticoAtivo = true;
    print('Piloto automático ativado');
  }
  
  @override
  void desativarPilotoAutomatico() {
    pilotoAutomaticoAtivo = false;
    print('Piloto automático desativado');
  }
}

// Interface explícita (classe abstrata)
abstract class Pagavel {
  double calcularValor();
  void processarPagamento();
}

abstract class Imprimivel {
  String gerarRelatorio();
  void imprimir();
}

class Fatura implements Pagavel, Imprimivel {
  String cliente;
  List<double> itens;
  
  Fatura(this.cliente, this.itens);
  
  @override
  double calcularValor() {
    return itens.fold(0, (soma, item) => soma + item);
  }
  
  @override
  void processarPagamento() {
    print('Processando pagamento de R\$${calcularValor()} para $cliente');
  }
  
  @override
  String gerarRelatorio() {
    return 'Fatura para $cliente: R\$${calcularValor()}';
  }
  
  @override
  void imprimir() {
    print(gerarRelatorio());
  }
}

void main() {
  var carro = Carro('Toyota', 'Corolla', 4);
  carro.ligar();
  carro.acelerar();
  carro.abrirPorta();
  
  print('\n---');
  var moto = Moto('Honda', 'CB 500', true);
  moto.ligar();
  moto.acelerar();
  moto.empinar();
  
  print('\n---');
  var tesla = CarroEletrico('Tesla', 'Model 3');
  tesla.ligar();
  tesla.ativarPilotoAutomatico();
  tesla.acelerar();
  print('Nível de bateria: ${tesla.nivelBateria}%');
  tesla.carregar();
  
  print('\n---');
  var fatura = Fatura('João Silva', [100.0, 250.0, 75.50]);
  fatura.imprimir();
  fatura.processarPagamento();
  
  // Polimorfismo com interfaces
  print('\n---');
  List<Veiculo> veiculos = [carro, moto, tesla];
  for (var veiculo in veiculos) {
    veiculo.acelerar();
  }
}
```

### Polimorfismo

Polimorfismo permite que objetos de diferentes classes sejam tratados através de uma interface comum. É a capacidade de um objeto assumir várias formas.

```dart
// Classe base
abstract class Animal {
  String nome;
  
  Animal(this.nome);
  
  void emitirSom(); // Método abstrato
  
  void apresentar() {
    print('Este é $nome');
    emitirSom();
  }
}

class Cachorro extends Animal {
  Cachorro(String nome) : super(nome);
  
  @override
  void emitirSom() {
    print('$nome: Au au!');
  }
  
  void buscar() {
    print('$nome está buscando');
  }
}

class Gato extends Animal {
  Gato(String nome) : super(nome);
  
  @override
  void emitirSom() {
    print('$nome: Miau!');
  }
  
  void arranhar() {
    print('$nome está arranhando');
  }
}

class Vaca extends Animal {
  Vaca(String nome) : super(nome);
  
  @override
  void emitirSom() {
    print('$nome: Muuu!');
  }
}

class Pato extends Animal {
  Pato(String nome) : super(nome);
  
  @override
  void emitirSom() {
    print('$nome: Quack!');
  }
}

// Polimorfismo com interfaces
abstract class Trabalhador {
  String nome;
  
  Trabalhador(this.nome);
  
  void trabalhar();
  double calcularSalario();
}

class Desenvolvedor extends Trabalhador {
  String linguagem;
  int horasTrabalhadas;
  
  Desenvolvedor(String nome, this.linguagem, this.horasTrabalhadas) 
      : super(nome);
  
  @override
  void trabalhar() {
    print('$nome está programando em $linguagem');
  }
  
  @override
  double calcularSalario() {
    return horasTrabalhadas * 100.0;
  }
}

class Designer extends Trabalhador {
  String especialidade;
  int projetosConcluidos;
  
  Designer(String nome, this.especialidade, this.projetosConcluidos) 
      : super(nome);
  
  @override
  void trabalhar() {
    print('$nome está criando designs de $especialidade');
  }
  
  @override
  double calcularSalario() {
    return projetosConcluidos * 500.0;
  }
}

class Gerente extends Trabalhador {
  int tamanhoEquipe;
  
  Gerente(String nome, this.tamanhoEquipe) : super(nome);
  
  @override
  void trabalhar() {
    print('$nome está gerenciando equipe de $tamanhoEquipe pessoas');
  }
  
  @override
  double calcularSalario() {
    return 5000.0 + (tamanhoEquipe * 200.0);
  }
}

// Função polimórfica
void fazerAnimalFalar(Animal animal) {
  animal.apresentar();
}

void processarFolhaPagamento(List<Trabalhador> trabalhadores) {
  double total = 0;
  for (var trabalhador in trabalhadores) {
    double salario = trabalhador.calcularSalario();
    print('${trabalhador.nome}: R\$${salario.toStringAsFixed(2)}');
    total += salario;
  }
  print('Total: R\$${total.toStringAsFixed(2)}');
}

// Polimorfismo com operadores
class Vetor {
  double x, y;
  
  Vetor(this.x, this.y);
  
  // Sobrecarga de operador +
  Vetor operator +(Vetor outro) {
    return Vetor(x + outro.x, y + outro.y);
  }
  
  // Sobrecarga de operador -
  Vetor operator -(Vetor outro) {
    return Vetor(x - outro.x, y - outro.y);
  }
  
  // Sobrecarga de operador *
  Vetor operator *(double escalar) {
    return Vetor(x * escalar, y * escalar);
  }
  
  // Sobrecarga de operador ==
  @override
  bool operator ==(Object outro) {
    return outro is Vetor && x == outro.x && y == outro.y;
  }
  
  @override
  int get hashCode => x.hashCode ^ y.hashCode;
  
  @override
  String toString() => 'Vetor($x, $y)';
}

void main() {
  // Polimorfismo com animais
  print('=== Polimorfismo com Animais ===');
  List<Animal> animais = [
    Cachorro('Rex'),
    Gato('Mimi'),
    Vaca('Mimosa'),
    Pato('Donald')
  ];
  
  // Mesma chamada, comportamento diferente
  for (var animal in animais) {
    fazerAnimalFalar(animal);
    print('');
  }
  
  // Type checking e casting
  print('=== Type Checking ===');
  Animal animal = Cachorro('Bobby');
  
  if (animal is Cachorro) {
    // Dart automaticamente faz cast dentro do bloco
    animal.buscar(); // Método específico de Cachorro
  }
  
  // Polimorfismo com trabalhadores
  print('\n=== Folha de Pagamento ===');
  List<Trabalhador> equipe = [
    Desenvolvedor('João', 'Dart', 160),
    Desenvolvedor('Maria', 'Python', 150),
    Designer('Ana', 'UI/UX', 8),
    Designer('Pedro', 'Gráfico', 10),
    Gerente('Carlos', 10)
  ];
  
  // Cada trabalhador calcula salário de forma diferente
  for (var trabalhador in equipe) {
    trabalhador.trabalhar();
  }
  
  print('');
  processarFolhaPagamento(equipe);
  
  // Polimorfismo com operadores
  print('\n=== Operadores Polimórficos ===');
  var v1 = Vetor(3, 4);
  var v2 = Vetor(1, 2);
  
  print('v1: $v1');
  print('v2: $v2');
  print('v1 + v2: ${v1 + v2}');
  print('v1 - v2: ${v1 - v2}');
  print('v1 * 2: ${v1 * 2}');
  print('v1 == v2: ${v1 == v2}');
  print('v1 == Vetor(3, 4): ${v1 == Vetor(3, 4)}');
}
```

### Encapsulamento

Encapsulamento é o princípio de esconder os detalhes internos de implementação e expor apenas o necessário através de uma interface pública.

```dart
// Biblioteca privada (use em arquivos separados)
// Convenção: underscore (_) indica privado

class ContaBancaria {
  // Propriedades privadas (começam com _)
  String _titular;
  double _saldo;
  String _numeroConta;
  final List<String> _historico = [];
  
  // Construtor
  ContaBancaria(this._titular, this._numeroConta, [double saldoInicial = 0]) 
      : _saldo = saldoInicial {
    _registrarTransacao('Conta criada com saldo inicial: R\$$saldoInicial');
  }
  
  // Getters públicos (leitura)
  String get titular => _titular;
  double get saldo => _saldo; // Não permite modificação direta
  String get numeroConta => _numeroConta;
  
  // Getter para histórico (retorna cópia)
  List<String> get historico => List.unmodifiable(_historico);
  
  // Setter com validação
  set titular(String novoTitular) {
    if (novoTitular.isNotEmpty) {
      _titular = novoTitular;
      _registrarTransacao('Titular alterado para: $novoTitular');
    }
  }
  
  // Métodos públicos
  bool depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      _registrarTransacao('Depósito: R\$$valor');
      return true;
    }
    return false;
  }
  
  bool sacar(double valor) {
    if (valor > 0 && _verificarSaldoSuficiente(valor)) {
      _saldo -= valor;
      _registrarTransacao('Saque: R\$$valor');
      return true;
    }
    return false;
  }
  
  bool transferir(ContaBancaria destino, double valor) {
    if (_verificarSaldoSuficiente(valor) && valor > 0) {
      _saldo -= valor;
      destino._saldo += valor;
      
      _registrarTransacao('Transferência enviada: R\$$valor para conta ${destino.numeroConta}');
      destino._registrarTransacao('Transferência recebida: R\$$valor da conta $_numeroConta');
      
      return true;
    }
    return false;
  }
  
  void exibirExtrato() {
    print('=== Extrato da Conta $_numeroConta ===');
    print('Titular: $_titular');
    print('Saldo atual: R\$${_saldo.toStringAsFixed(2)}');
    print('\nHistórico de transações:');
    for (int i = 0; i < _historico.length; i++) {
      print('${i + 1}. ${_historico[i]}');
    }
    print('================================');
  }
  
  // Métodos privados (auxiliares)
  bool _verificarSaldoSuficiente(double valor) {
    return _saldo >= valor;
  }
  
  void _registrarTransacao(String descricao) {
    var timestamp = DateTime.now();
    _historico.add('[$timestamp] $descricao');
  }
  
  // Método privado para aplicar juros
  void _aplicarJuros(double taxa) {
    double juros = _saldo * taxa;
    _saldo += juros;
    _registrarTransacao('Juros aplicados: R\$${juros.toStringAsFixed(2)}');
  }
}

// Classe mais complexa com encapsulamento
class Usuario {
  // Propriedades privadas
  String _nome;
  String _email;
  String _senha; // Nunca deve ser exposta
  DateTime _dataCriacao;
  DateTime _ultimoAcesso;
  bool _ativo;
  
  // Construtor
  Usuario(this._nome, this._email, String senha) 
      : _senha = _criptografarSenha(senha),
        _dataCriacao = DateTime.now(),
        _ultimoAcesso = DateTime.now(),
        _ativo = true;
  
  // Getters públicos
  String get nome => _nome;
  String get email => _email;
  DateTime get dataCriacao => _dataCriacao;
  DateTime get ultimoAcesso => _ultimoAcesso;
  bool get ativo => _ativo;
  
  // Setters com validação
  set nome(String novoNome) {
    if (novoNome.length >= 3) {
      _nome = novoNome;
    } else {
      throw ArgumentError('Nome deve ter pelo menos 3 caracteres');
    }
  }
  
  set email(String novoEmail) {
    if (_validarEmail(novoEmail)) {
      _email = novoEmail;
    } else {
      throw ArgumentError('Email inválido');
    }
  }
  
  // Métodos públicos
  bool autenticar(String senha) {
    bool sucesso = _senha == _criptografarSenha(senha);
    if (sucesso) {
      _atualizarUltimoAcesso();
    }
    return sucesso;
  }
  
  void alterarSenha(String senhaAtual, String novaSenha) {
    if (autenticar(senhaAtual)) {
      if (_validarForcaSenha(novaSenha)) {
        _senha = _criptografarSenha(novaSenha);
        print('Senha alterada com sucesso');
      } else {
        throw ArgumentError('Senha fraca. Use pelo menos 8 caracteres');
      }
    } else {
      throw ArgumentError('Senha atual incorreta');
    }
  }
  
  void desativar() {
    _ativo = false;
    print('Usuário $_nome desativado');
  }
  
  void reativar() {
    _ativo = true;
    print('Usuário $_nome reativado');
  }
  
  // Métodos privados
  static String _criptografarSenha(String senha) {
    // Simulação simples (em produção, use bcrypt ou similar)
    return senha.split('').reversed.join() + '_cript';
  }
  
  bool _validarEmail(String email) {
    return email.contains('@') && email.contains('.');
  }
  
  bool _validarForcaSenha(String senha) {
    return senha.length >= 8;
  }
  
  void _atualizarUltimoAcesso() {
    _ultimoAcesso = DateTime.now();
  }
  
  @override
  String toString() {
    return 'Usuario(nome: $_nome, email: $_email, ativo: $_ativo)';
  }
}

// Classe com propriedades computadas
class Retangulo {
  // Propriedades privadas
  double _largura;
  double _altura;
  
  // Construtor com validação
  Retangulo(double largura, double altura) 
      : _largura = largura > 0 ? largura : 1,
        _altura = altura > 0 ? altura : 1;
  
  // Getters
  double get largura => _largura;
  double get altura => _altura;
  
  // Propriedades computadas (sem armazenamento)
  double get area => _largura * _altura;
  double get perimetro => 2 * (_largura + _altura);
  double get diagonal {
    return (_largura * _largura + _altura * _altura) / 2;
  }
  
  bool get isQuadrado => _largura == _altura;
  
  // Setters com validação
  set largura(double valor) {
    if (valor > 0) {
      _largura = valor;
    } else {
      throw ArgumentError('Largura deve ser positiva');
    }
  }
  
  set altura(double valor) {
    if (valor > 0) {
      _altura = valor;
    } else {
      throw ArgumentError('Altura deve ser positiva');
    }
  }
  
  // Método para redimensionar mantendo proporção
  void escalar(double fator) {
    if (fator > 0) {
      _largura *= fator;
      _altura *= fator;
    }
  }
}

void main() {
  print('=== Conta Bancária ===');
  var conta1 = ContaBancaria('João Silva', '001', 1000);
  var conta2 = ContaBancaria('Maria Santos', '002', 500);
  
  conta1.depositar(500);
  conta1.sacar(200);
  conta1.transferir(conta2, 300);
  
  // Não pode acessar propriedades privadas
  // print(conta1._saldo); // ERRO!
  
  // Apenas através de getters públicos
  print('Saldo de ${conta1.titular}: R\$${conta1.saldo}');
  
  conta1.exibirExtrato();
  
  print('\n=== Usuário ===');
  var usuario = Usuario('Pedro Oliveira', 'pedro@email.com', 'senha123');
  
  print(usuario);
  print('Data de criação: ${usuario.dataCriacao}');
  
  // Autenticação
  if (usuario.autenticar('senha123')) {
    print('Login bem-sucedido!');
  }
  
  // Tentar senha errada
  if (!usuario.autenticar('senhaerrada')) {
    print('Senha incorreta');
  }
  
  // Alterar dados
  usuario.nome = 'Pedro Oliveira Junior';
  usuario.email = 'pedro.junior@email.com';
  
  // Tentar alterar senha
  try {
    usuario.alterarSenha('senha123', 'novaSenhaSegura123');
  } catch (e) {
    print('Erro: $e');
  }
  
  print('\n=== Retângulo ===');
  var retangulo = Retangulo(5, 10);
  print('Dimensões: ${retangulo.largura} x ${retangulo.altura}');
  print('Área: ${retangulo.area}');
  print('Perímetro: ${retangulo.perimetro}');
  print('É quadrado? ${retangulo.isQuadrado}');
  
  retangulo.escalar(2);
  print('\nApós escalar por 2:');
  print('Dimensões: ${retangulo.largura} x ${retangulo.altura}');
  print('Área: ${retangulo.area}');
}

## Coleções

As coleções em Dart são estruturas de dados fundamentais para armazenar e manipular grupos de objetos.

### List (Lista)

Uma lista é uma coleção ordenada de objetos. É o equivalente a arrays em outras linguagens.

#### Criação e Inicialização

```dart
void main() {
  // Lista com tipo explícito
  List<int> numeros = [1, 2, 3, 4, 5];
  
  // Lista com inferência de tipo
  var frutas = ['Maçã', 'Banana', 'Laranja'];
  
  // Lista vazia
  List<String> vazia = [];
  var outraVazia = <String>[];
  
  // Lista com tamanho fixo (deprecated em Dart 2.15+, use List.filled)
  List<int> fixo = List.filled(5, 0); // [0, 0, 0, 0, 0]
  
  // Lista gerada
  List<int> quadrados = List.generate(5, (index) => index * index);
  print(quadrados); // [0, 1, 4, 9, 16]
  
  // Lista com valores padrão
  List<String> nomes = List.filled(3, 'N/A');
  print(nomes); // [N/A, N/A, N/A]
  
  // Lista de listas (matriz)
  List<List<int>> matriz = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  
  // Spread operator (...)
  var lista1 = [1, 2, 3];
  var lista2 = [4, 5, 6];
  var combinada = [...lista1, ...lista2];
  print(combinada); // [1, 2, 3, 4, 5, 6]
  
  // Null-aware spread operator (...?)
  List<int>? nullable = null;
  var segura = [...?nullable, 1, 2, 3];
  print(segura); // [1, 2, 3]
}
```

#### Métodos de Acesso

```dart
void main() {
  List<String> frutas = ['Maçã', 'Banana', 'Laranja', 'Uva', 'Manga'];
  
  // Acessar por índice
  print(frutas[0]); // Maçã
  print(frutas[2]); // Laranja
  
  // Primeiro e último elemento
  print(frutas.first); // Maçã
  print(frutas.last); // Manga
  
  // Primeiro e último ou null se vazia
  print(frutas.firstOrNull); // Maçã (Dart 3.0+)
  print(frutas.lastOrNull); // Manga (Dart 3.0+)
  
  // Elemento em posição específica
  print(frutas.elementAt(2)); // Laranja
  
  // Pegar elemento ou valor padrão (Dart 3.0+)
  print(frutas.elementAtOrNull(10)); // null
  
  // Sublist (sublista)
  print(frutas.sublist(1, 4)); // [Banana, Laranja, Uva]
  print(frutas.sublist(2)); // [Laranja, Uva, Manga]
  
  // Obter range
  var range = frutas.getRange(1, 3);
  print(range.toList()); // [Banana, Laranja]
  
  // Índice de elemento
  print(frutas.indexOf('Laranja')); // 2
  print(frutas.indexOf('Limão')); // -1 (não encontrado)
  print(frutas.lastIndexOf('Maçã')); // 0
  
  // Índice com condição
  print(frutas.indexWhere((f) => f.startsWith('U'))); // 3
  print(frutas.lastIndexWhere((f) => f.contains('a'))); // 4
}
```

#### Métodos de Adição

```dart
void main() {
  List<String> frutas = ['Maçã', 'Banana'];
  
  // Adicionar no final
  frutas.add('Laranja');
  print(frutas); // [Maçã, Banana, Laranja]
  
  // Adicionar múltiplos elementos
  frutas.addAll(['Uva', 'Manga']);
  print(frutas); // [Maçã, Banana, Laranja, Uva, Manga]
  
  // Inserir em posição específica
  frutas.insert(1, 'Pera');
  print(frutas); // [Maçã, Pera, Banana, Laranja, Uva, Manga]
  
  // Inserir múltiplos elementos
  frutas.insertAll(2, ['Limão', 'Kiwi']);
  print(frutas); // [Maçã, Pera, Limão, Kiwi, Banana, Laranja, Uva, Manga]
  
  // Substituir range
  frutas.setRange(0, 2, ['Morango', 'Melancia']);
  print(frutas); // [Morango, Melancia, Limão, Kiwi, Banana, Laranja, Uva, Manga]
  
  // Preencher com valor
  List<int> numeros = [1, 2, 3, 4, 5];
  numeros.fillRange(1, 4, 0);
  print(numeros); // [1, 0, 0, 0, 5]
}
```

#### Métodos de Remoção

```dart
void main() {
  List<String> frutas = ['Maçã', 'Banana', 'Laranja', 'Uva', 'Manga', 'Laranja'];
  
  // Remover elemento específico (primeira ocorrência)
  frutas.remove('Laranja');
  print(frutas); // [Maçã, Banana, Uva, Manga, Laranja]
  
  // Remover por índice
  frutas.removeAt(1);
  print(frutas); // [Maçã, Uva, Manga, Laranja]
  
  // Remover último elemento
  String ultimo = frutas.removeLast();
  print(ultimo); // Laranja
  print(frutas); // [Maçã, Uva, Manga]
  
  // Remover range
  frutas = ['Maçã', 'Banana', 'Laranja', 'Uva', 'Manga'];
  frutas.removeRange(1, 4);
  print(frutas); // [Maçã, Manga]
  
  // Remover com condição
  frutas = ['Maçã', 'Banana', 'Laranja', 'Uva', 'Manga'];
  frutas.removeWhere((fruta) => fruta.contains('a'));
  print(frutas); // [Uva]
  
  // Manter apenas elementos que atendem condição
  frutas = ['Maçã', 'Banana', 'Laranja', 'Uva', 'Manga'];
  frutas.retainWhere((fruta) => fruta.length > 4);
  print(frutas); // [Banana, Laranja, Manga]
  
  // Limpar lista
  frutas.clear();
  print(frutas); // []
}
```

#### Métodos de Transformação

```dart
void main() {
  List<int> numeros = [1, 2, 3, 4, 5];
  
  // Map (transformar cada elemento)
  var dobrados = numeros.map((n) => n * 2).toList();
  print(dobrados); // [2, 4, 6, 8, 10]
  
  // Where (filtrar elementos)
  var pares = numeros.where((n) => n % 2 == 0).toList();
  print(pares); // [2, 4]
  
  // WhereType (filtrar por tipo)
  var mista = [1, 'dois', 3, 'quatro', 5];
  var somenteNumeros = mista.whereType<int>().toList();
  print(somenteNumeros); // [1, 3, 5]
  
  // Expand (achatar listas aninhadas)
  var listas = [[1, 2], [3, 4], [5, 6]];
  var achatada = listas.expand((lista) => lista).toList();
  print(achatada); // [1, 2, 3, 4, 5, 6]
  
  // Cast (converter tipos)
  var numerosNum = <num>[1, 2, 3];
  var numerosInt = numerosNum.cast<int>();
  print(numerosInt.toList()); // [1, 2, 3]
  
  // Reversed (inverter ordem)
  var invertida = numeros.reversed.toList();
  print(invertida); // [5, 4, 3, 2, 1]
  
  // Take (pegar n primeiros elementos)
  var primeiros = numeros.take(3).toList();
  print(primeiros); // [1, 2, 3]
  
  // Skip (pular n primeiros elementos)
  var semPrimeiros = numeros.skip(2).toList();
  print(semPrimeiros); // [3, 4, 5]
  
  // TakeWhile (pegar enquanto condição for verdadeira)
  var ateMenor5 = numeros.takeWhile((n) => n < 3).toList();
  print(ateMenor5); // [1, 2]
  
  // SkipWhile (pular enquanto condição for verdadeira)
  var aposIgualOuMaior3 = numeros.skipWhile((n) => n < 3).toList();
  print(aposIgualOuMaior3); // [3, 4, 5]
}
```

#### Métodos de Ordenação e Busca

```dart
void main() {
  List<int> numeros = [3, 1, 4, 1, 5, 9, 2, 6];
  
  // Ordenar (modifica a lista original)
  numeros.sort();
  print(numeros); // [1, 1, 2, 3, 4, 5, 6, 9]
  
  // Ordenar com comparador customizado
  List<String> palavras = ['banana', 'maçã', 'uva', 'laranja'];
  palavras.sort((a, b) => a.length.compareTo(b.length));
  print(palavras); // [uva, maçã, banana, laranja]
  
  // Ordenar decrescente
  numeros.sort((a, b) => b.compareTo(a));
  print(numeros); // [9, 6, 5, 4, 3, 2, 1, 1]
  
  // Embaralhar
  numeros.shuffle();
  print(numeros); // Ordem aleatória
  
  // Contains (verificar se contém elemento)
  print(numeros.contains(5)); // true
  
  // Every (verificar se todos atendem condição)
  print(numeros.every((n) => n > 0)); // true
  print(numeros.every((n) => n > 5)); // false
  
  // Any (verificar se algum atende condição)
  print(numeros.any((n) => n > 5)); // true
  print(numeros.any((n) => n > 10)); // false
  
  // SingleWhere (encontrar único elemento que atende condição)
  try {
    var unico = [1, 2, 3, 4, 5].singleWhere((n) => n == 3);
    print(unico); // 3
  } catch (e) {
    print('Não encontrado ou múltiplos encontrados');
  }
  
  // FirstWhere (primeiro elemento que atende condição)
  var primeiro = numeros.firstWhere((n) => n > 5, orElse: () => -1);
  print(primeiro);
  
  // LastWhere (último elemento que atende condição)
  var ultimo = numeros.lastWhere((n) => n < 5, orElse: () => -1);
  print(ultimo);
}
```

#### Métodos de Agregação

```dart
void main() {
  List<int> numeros = [1, 2, 3, 4, 5];
  
  // Reduce (reduzir a um único valor)
  int soma = numeros.reduce((a, b) => a + b);
  print(soma); // 15
  
  int produto = numeros.reduce((a, b) => a * b);
  print(produto); // 120
  
  // Fold (similar ao reduce, mas com valor inicial)
  int somaComInicial = numeros.fold(10, (prev, curr) => prev + curr);
  print(somaComInicial); // 25 (10 + 15)
  
  // Concatenar strings
  List<String> palavras = ['Dart', 'é', 'incrível'];
  String frase = palavras.fold('', (prev, curr) => prev + ' ' + curr).trim();
  print(frase); // Dart é incrível
  
  // Join (juntar elementos com separador)
  String juncao = palavras.join(' ');
  print(juncao); // Dart é incrível
  
  // Length (tamanho)
  print(numeros.length); // 5
  
  // IsEmpty / IsNotEmpty
  print(numeros.isEmpty); // false
  print(numeros.isNotEmpty); // true
  
  // ForEach (executar ação para cada elemento)
  numeros.forEach((n) => print('Número: $n'));
}
```

#### Listas Imutáveis

```dart
void main() {
  // Lista não modificável
  var numeros = const [1, 2, 3, 4, 5];
  // numeros.add(6); // ERRO! Lista imutável
  
  // Criar lista imutável de uma lista existente
  var mutavel = [1, 2, 3];
  var imutavel = List.unmodifiable(mutavel);
  // imutavel.add(4); // ERRO!
  
  mutavel.add(4);
  print(imutavel); // [1, 2, 3, 4] - reflete mudanças na lista original
  
  // Criar cópia verdadeiramente imutável
  var original = [1, 2, 3];
  var copia = List.unmodifiable(List.from(original));
  original.add(4);
  print(copia); // [1, 2, 3] - não reflete mudanças
}
```

### Set (Conjunto)

Um Set é uma coleção não ordenada de objetos únicos (sem duplicatas).

#### Criação e Inicialização

```dart
void main() {
  // Set com tipo explícito
  Set<int> numeros = {1, 2, 3, 4, 5};
  
  // Set com inferência de tipo
  var cidades = {'Rio', 'São Paulo', 'Brasília'};
  
  // Set vazio (note: {} cria um Map vazio, não um Set)
  Set<String> vazio = {};
  var outroVazio = <String>{};
  
  // De uma lista (remove duplicatas)
  var lista = [1, 2, 2, 3, 3, 3, 4, 5];
  var conjuntoUnico = Set<int>.from(lista);
  print(conjuntoUnico); // {1, 2, 3, 4, 5}
  
  // Set imutável
  var imutavel = const {1, 2, 3};
  
  // Set de uma iterável
  var range = Iterable<int>.generate(5);
  var conjuntoRange = Set<int>.of(range);
  print(conjuntoRange); // {0, 1, 2, 3, 4}
}
```

#### Métodos de Adição

```dart
void main() {
  Set<String> frutas = {'Maçã', 'Banana'};
  
  // Adicionar elemento (retorna true se foi adicionado)
  bool adicionado = frutas.add('Laranja');
  print(adicionado); // true
  print(frutas); // {Maçã, Banana, Laranja}
  
  // Tentar adicionar duplicata
  bool duplicata = frutas.add('Maçã');
  print(duplicata); // false (já existe)
  print(frutas); // {Maçã, Banana, Laranja}
  
  // Adicionar múltiplos elementos
  frutas.addAll({'Uva', 'Manga', 'Banana'});
  print(frutas); // {Maçã, Banana, Laranja, Uva, Manga}
}
```

#### Métodos de Remoção

```dart
void main() {
  Set<String> frutas = {'Maçã', 'Banana', 'Laranja', 'Uva', 'Manga'};
  
  // Remover elemento (retorna true se foi removido)
  bool removido = frutas.remove('Banana');
  print(removido); // true
  print(frutas); // {Maçã, Laranja, Uva, Manga}
  
  // Remover com condição
  frutas.removeWhere((fruta) => fruta.length > 5);
  print(frutas); // {Maçã, Uva, Manga}
  
  // Manter apenas elementos que atendem condição
  frutas = {'Maçã', 'Banana', 'Laranja', 'Uva', 'Manga'};
  frutas.retainWhere((fruta) => fruta.startsWith('M'));
  print(frutas); // {Maçã, Manga}
  
  // Remover todos de uma coleção
  frutas = {'Maçã', 'Banana', 'Laranja', 'Uva', 'Manga'};
  frutas.removeAll({'Banana', 'Uva'});
  print(frutas); // {Maçã, Laranja, Manga}
  
  // Manter apenas intersecção
  frutas = {'Maçã', 'Banana', 'Laranja', 'Uva', 'Manga'};
  frutas.retainAll({'Banana', 'Uva', 'Pera'});
  print(frutas); // {Banana, Uva}
  
  // Limpar
  frutas.clear();
  print(frutas); // {}
}
```

#### Operações de Conjunto

```dart
void main() {
  Set<int> conjunto1 = {1, 2, 3, 4, 5};
  Set<int> conjunto2 = {3, 4, 5, 6, 7};
  
  // União (todos os elementos)
  var uniao = conjunto1.union(conjunto2);
  print(uniao); // {1, 2, 3, 4, 5, 6, 7}
  
  // Interseção (elementos em comum)
  var intersecao = conjunto1.intersection(conjunto2);
  print(intersecao); // {3, 4, 5}
  
  // Diferença (elementos em conjunto1 mas não em conjunto2)
  var diferenca = conjunto1.difference(conjunto2);
  print(diferenca); // {1, 2}
  
  // Diferença simétrica (elementos em um ou outro, mas não em ambos)
  var difSimetrica = conjunto1.union(conjunto2).difference(conjunto1.intersection(conjunto2));
  print(difSimetrica); // {1, 2, 6, 7}
  
  // Verificar se é subconjunto
  Set<int> subconjunto = {2, 3};
  print(subconjunto.difference(conjunto1).isEmpty); // true (é subconjunto)
  
  // Verificar se é superconjunto
  print(conjunto1.containsAll(subconjunto)); // true
}
```

#### Métodos de Consulta

```dart
void main() {
  Set<String> frutas = {'Maçã', 'Banana', 'Laranja', 'Uva', 'Manga'};
  
  // Contém elemento
  print(frutas.contains('Banana')); // true
  print(frutas.contains('Pera')); // false
  
  // Contém todos os elementos
  print(frutas.containsAll({'Maçã', 'Uva'})); // true
  print(frutas.containsAll({'Maçã', 'Pera'})); // false
  
  // Tamanho
  print(frutas.length); // 5
  
  // Vazio
  print(frutas.isEmpty); // false
  print(frutas.isNotEmpty); // true
  
  // Primeiro e último
  print(frutas.first); // Maçã (ordem não garantida)
  print(frutas.last); // Manga
  
  // Elemento único
  try {
    var unico = {42}.single;
    print(unico); // 42
  } catch (e) {
    print('Set não tem exatamente um elemento');
  }
  
  // Lookup (encontrar elemento igual)
  var elemento = frutas.lookup('Banana');
  print(elemento); // Banana (ou null se não encontrar)
  
  // Any / Every
  print(frutas.any((f) => f.startsWith('M'))); // true
  print(frutas.every((f) => f.length > 2)); // true
}
```

#### Conversões

```dart
void main() {
  Set<int> numeros = {3, 1, 4, 1, 5, 9};
  
  // Para lista
  List<int> lista = numeros.toList();
  print(lista); // [3, 1, 4, 5, 9] (ordem pode variar)
  
  // Para lista ordenada
  List<int> listaOrdenada = numeros.toList()..sort();
  print(listaOrdenada); // [1, 3, 4, 5, 9]
  
  // De lista para set (remove duplicatas)
  List<int> listaComDuplicatas = [1, 2, 2, 3, 3, 3];
  Set<int> semDuplicatas = listaComDuplicatas.toSet();
  print(semDuplicatas); // {1, 2, 3}
  
  // Map, Where, etc (mesmos métodos de Iterable)
  var dobrados = numeros.map((n) => n * 2).toSet();
  print(dobrados); // {6, 2, 8, 10, 18}
  
  var pares = numeros.where((n) => n % 2 == 0).toSet();
  print(pares); // {4}
}
```

### Map (Mapa)

Um Map é uma coleção de pares chave-valor, onde cada chave é única.

#### Criação e Inicialização

```dart
void main() {
  // Map com tipo explícito
  Map<String, int> idades = {
    'João': 25,
    'Maria': 30,
    'Pedro': 22
  };
  
  // Map com inferência de tipo
  var capitais = {
    'Brasil': 'Brasília',
    'Argentina': 'Buenos Aires',
    'Chile': 'Santiago'
  };
  
  // Map vazio
  Map<String, double> precos = {};
  var outroVazio = <String, int>{};
  
  // Usando construtor
  var map1 = Map<String, int>();
  var map2 = Map.from({'a': 1, 'b': 2});
  var map3 = Map.of({'x': 10, 'y': 20});
  
  // Map imutável
  var imutavel = const {'a': 1, 'b': 2};
  
  // De duas listas (chaves e valores)
  var chaves = ['a', 'b', 'c'];
  var valores = [1, 2, 3];
  var mapDeListals = Map.fromIterables(chaves, valores);
  print(mapDeListals); // {a: 1, b: 2, c: 3}
  
  // Map com valor padrão para todas as chaves
  // Map.fromEntries
  var entries = [
    MapEntry('nome', 'João'),
    MapEntry('idade', '25'),
    MapEntry('cidade', 'Rio')
  ];
  var mapDeEntries = Map.fromEntries(entries);
  print(mapDeEntries); // {nome: João, idade: 25, cidade: Rio}
}
```

#### Métodos de Acesso

```dart
void main() {
  Map<String, int> idades = {
    'João': 25,
    'Maria': 30,
    'Pedro': 22
  };
  
  // Acessar valor por chave
  print(idades['João']); // 25
  print(idades['Ana']); // null (chave não existe)
  
  // Acessar com valor padrão (Dart 2.19+)
  print(idades['Ana'] ?? 0); // 0
  
  // Obter chaves
  print(idades.keys); // (João, Maria, Pedro)
  print(idades.keys.toList()); // [João, Maria, Pedro]
  
  // Obter valores
  print(idades.values); // (25, 30, 22)
  print(idades.values.toList()); // [25, 30, 22]
  
  // Obter entries (pares chave-valor)
  print(idades.entries);
  for (var entry in idades.entries) {
    print('${entry.key}: ${entry.value}');
  }
  
  // Tamanho
  print(idades.length); // 3
  
  // Verificar se está vazio
  print(idades.isEmpty); // false
  print(idades.isNotEmpty); // true
  
  // ContainsKey (verificar se contém chave)
  print(idades.containsKey('Maria')); // true
  print(idades.containsKey('Ana')); // false
  
  // ContainsValue (verificar se contém valor)
  print(idades.containsValue(30)); // true
  print(idades.containsValue(40)); // false
}
```

#### Métodos de Adição e Atualização

```dart
void main() {
  Map<String, int> idades = {
    'João': 25,
    'Maria': 30
  };
  
  // Adicionar ou atualizar
  idades['Pedro'] = 22; // Adiciona
  idades['João'] = 26; // Atualiza
  print(idades); // {João: 26, Maria: 30, Pedro: 22}
  
  // AddAll (adicionar múltiplos)
  idades.addAll({
    'Ana': 28,
    'Carlos': 35
  });
  print(idades); // {João: 26, Maria: 30, Pedro: 22, Ana: 28, Carlos: 35}
  
  // PutIfAbsent (adicionar apenas se não existir)
  idades.putIfAbsent('João', () => 20); // Não adiciona (já existe)
  idades.putIfAbsent('Lucas', () => 27); // Adiciona
  print(idades); // {João: 26, Maria: 30, Pedro: 22, Ana: 28, Carlos: 35, Lucas: 27}
  
  // Update (atualizar valor existente)
  idades.update('João', (valor) => valor + 1); // 27
  print(idades['João']); // 27
  
  // Update com valor padrão se não existir
  idades.update('Fernanda', (valor) => valor + 1, ifAbsent: () => 25);
  print(idades['Fernanda']); // 25
  
  // UpdateAll (atualizar todos os valores)
  idades.updateAll((chave, valor) => valor + 1);
  print(idades); // Todas as idades aumentam em 1
}
```

#### Métodos de Remoção

```dart
void main() {
  Map<String, int> idades = {
    'João': 25,
    'Maria': 30,
    'Pedro': 22,
    'Ana': 28
  };
  
  // Remover por chave (retorna o valor removido)
  int? idadeRemovida = idades.remove('Pedro');
  print(idadeRemovida); // 22
  print(idades); // {João: 25, Maria: 30, Ana: 28}
  
  // RemoveWhere (remover com condição)
  idades.removeWhere((nome, idade) => idade < 26);
  print(idades); // {Maria: 30, Ana: 28}
  
  // Limpar
  idades.clear();
  print(idades); // {}
}
```

#### Métodos de Iteração e Transformação

```dart
void main() {
  Map<String, int> idades = {
    'João': 25,
    'Maria': 30,
    'Pedro': 22,
    'Ana': 28
  };
  
  // ForEach
  idades.forEach((nome, idade) {
    print('$nome tem $idade anos');
  });
  
  // Map (transformar valores)
  var idadesEmMeses = idades.map((nome, idade) => 
    MapEntry(nome, idade * 12)
  );
  print(idadesEmMeses); // {João: 300, Maria: 360, Pedro: 264, Ana: 336}
  
  // Filtrar entries
  var maioresDe25 = Map.fromEntries(
    idades.entries.where((entry) => entry.value > 25)
  );
  print(maioresDe25); // {Maria: 30, Ana: 28}
  
  // Cast (converter tipos)
  Map<String, num> numerosGenericos = {'a': 1, 'b': 2.5};
  // var numerosInt = numerosGenericos.cast<String, int>();
  
  // Entries para lista
  var listaDeEntries = idades.entries.toList();
  print(listaDeEntries);
}
```

#### Operações Especiais

```dart
void main() {
  Map<String, int> idades = {
    'João': 25,
    'Maria': 30,
    'Pedro': 22
  };
  
  // Verificar se todas as entries atendem condição
  bool todosMaioresDe20 = idades.entries.every((e) => e.value > 20);
  print(todosMaioresDe20); // true
  
  // Verificar se alguma entry atende condição
  bool algumMaiorDe28 = idades.entries.any((e) => e.value > 28);
  print(algumMaiorDe28); // true
  
  // Combinar dois maps (spread operator)
  var map1 = {'a': 1, 'b': 2};
  var map2 = {'c': 3, 'd': 4};
  var combinado = {...map1, ...map2};
  print(combinado); // {a: 1, b: 2, c: 3, d: 4}
  
  // Map com chaves duplicadas (última prevalece)
  var comDuplicata = {...map1, 'a': 10};
  print(comDuplicata); // {a: 10, b: 2}
  
  // Agrupar lista em map
  List<String> palavras = ['apple', 'banana', 'apricot', 'blueberry', 'cherry'];
  Map<String, List<String>> agrupado = {};
  for (var palavra in palavras) {
    var primeiraLetra = palavra[0];
    agrupado.putIfAbsent(primeiraLetra, () => []).add(palavra);
  }
  print(agrupado); // {a: [apple, apricot], b: [banana, blueberry], c: [cherry]}
  
  // Inverter map (trocar chaves por valores)
  Map<int, String> invertido = idades.map((k, v) => MapEntry(v, k));
  print(invertido); // {25: João, 30: Maria, 22: Pedro}
}

## Enums

Enums (enumerações) são um tipo especial usado para representar um conjunto fixo de valores constantes.

### Enums Básicos

```dart
// Enum simples
enum DiaSemana {
  segunda,
  terca,
  quarta,
  quinta,
  sexta,
  sabado,
  domingo
}

enum StatusPedido {
  pendente,
  processando,
  enviado,
  entregue,
  cancelado
}

enum NivelPrioridade {
  baixa,
  media,
  alta,
  critica
}

void main() {
  // Usar enum
  var hoje = DiaSemana.segunda;
  print(hoje); // DiaSemana.segunda
  
  // Comparar enums
  if (hoje == DiaSemana.segunda) {
    print('Início da semana!');
  }
  
  // Switch com enum
  switch (hoje) {
    case DiaSemana.segunda:
    case DiaSemana.terca:
    case DiaSemana.quarta:
    case DiaSemana.quinta:
    case DiaSemana.sexta:
      print('Dia útil');
      break;
    case DiaSemana.sabado:
    case DiaSemana.domingo:
      print('Fim de semana!');
      break;
  }
  
  // Obter todos os valores
  print('\nTodos os dias da semana:');
  for (var dia in DiaSemana.values) {
    print(dia);
  }
  
  // Obter índice
  print('\nÍndice de hoje: ${hoje.index}'); // 0 (primeira posição)
  print('Índice de domingo: ${DiaSemana.domingo.index}'); // 6
  
  // Obter nome
  print('\nNome: ${hoje.name}'); // segunda
}
```

### Enums Avançados (Enhanced Enums - Dart 2.17+)

```dart
// Enum com propriedades e métodos
enum Planeta {
  mercurio(3.303e23, 2.4397e6),
  venus(4.869e24, 6.0518e6),
  terra(5.976e24, 6.37814e6),
  marte(6.421e23, 3.3972e6),
  jupiter(1.9e27, 7.1492e7),
  saturno(5.688e26, 6.0268e7),
  urano(8.686e25, 2.5559e7),
  netuno(1.024e26, 2.4746e7);
  
  // Propriedades
  final double massa; // em kg
  final double raio;  // em metros
  
  // Construtor
  const Planeta(this.massa, this.raio);
  
  // Getters computados
  double get gravidadeSuperficie => (6.67430e-11 * massa) / (raio * raio);
  
  // Métodos
  String obterDescricao() {
    return '$name: massa = $massa kg, raio = $raio m';
  }
  
  double calcularPeso(double massaObjeto) {
    return massaObjeto * gravidadeSuperficie;
  }
}

// Enum com interface
enum TipoTransacao implements Comparable<TipoTransacao> {
  deposito(1, 'Depósito'),
  saque(-1, 'Saque'),
  transferencia(-1, 'Transferência'),
  pagamento(-1, 'Pagamento'),
  estorno(1, 'Estorno');
  
  final int multiplicador;
  final String descricao;
  
  const TipoTransacao(this.multiplicador, this.descricao);
  
  bool get isCredito => multiplicador > 0;
  bool get isDebito => multiplicador < 0;
  
  @override
  int compareTo(TipoTransacao other) => index.compareTo(other.index);
  
  String formatarValor(double valor) {
    var sinal = isCredito ? '+' : '-';
    return '$sinal R\$${valor.abs().toStringAsFixed(2)}';
  }
}

// Enum com métodos estáticos
enum Cor {
  vermelho(255, 0, 0),
  verde(0, 255, 0),
  azul(0, 0, 255),
  amarelo(255, 255, 0),
  ciano(0, 255, 255),
  magenta(255, 0, 255),
  branco(255, 255, 255),
  preto(0, 0, 0);
  
  final int r, g, b;
  
  const Cor(this.r, this.g, this.b);
  
  String get hex => '#${r.toRadixString(16).padLeft(2, '0')}'
                   '${g.toRadixString(16).padLeft(2, '0')}'
                   '${b.toRadixString(16).padLeft(2, '0')}';
  
  String get rgb => 'rgb($r, $g, $b)';
  
  // Método estático para encontrar cor por nome
  static Cor? porNome(String nome) {
    try {
      return Cor.values.firstWhere(
        (cor) => cor.name.toLowerCase() == nome.toLowerCase()
      );
    } catch (e) {
      return null;
    }
  }
  
  // Misturar cores
  Cor misturar(Cor outra) {
    int novoR = ((r + outra.r) / 2).round();
    int novoG = ((g + outra.g) / 2).round();
    int novoB = ((b + outra.b) / 2).round();
    
    // Encontrar cor mais próxima
    return Cor.values.reduce((curr, next) {
      int distCurr = (curr.r - novoR).abs() + 
                     (curr.g - novoG).abs() + 
                     (curr.b - novoB).abs();
      int distNext = (next.r - novoR).abs() + 
                     (next.g - novoG).abs() + 
                     (next.b - novoB).abs();
      return distCurr < distNext ? curr : next;
    });
  }
}

// Enum para máquina de estados
enum EstadoPedido {
  criado('Pedido criado', true),
  pagamento('Aguardando pagamento', true),
  confirmado('Pagamento confirmado', true),
  preparando('Preparando pedido', true),
  enviado('Pedido enviado', true),
  entregue('Pedido entregue', false),
  cancelado('Pedido cancelado', false);
  
  final String descricao;
  final bool podeProgredir;
  
  const EstadoPedido(this.descricao, this.podeProgredir);
  
  EstadoPedido? proximoEstado() {
    if (!podeProgredir) return null;
    
    switch (this) {
      case EstadoPedido.criado:
        return EstadoPedido.pagamento;
      case EstadoPedido.pagamento:
        return EstadoPedido.confirmado;
      case EstadoPedido.confirmado:
        return EstadoPedido.preparando;
      case EstadoPedido.preparando:
        return EstadoPedido.enviado;
      case EstadoPedido.enviado:
        return EstadoPedido.entregue;
      default:
        return null;
    }
  }
  
  bool podeTransicionarPara(EstadoPedido novoEstado) {
    if (this == EstadoPedido.cancelado) return false;
    if (novoEstado == EstadoPedido.cancelado) return true;
    if (novoEstado == proximoEstado()) return true;
    return false;
  }
}

// Enum com diferentes tipos de dados
enum ConfigAmbiente {
  desenvolvimento(
    'http://localhost:8080',
    true,
    {'timeout': 30, 'retries': 3}
  ),
  homologacao(
    'https://staging.example.com',
    true,
    {'timeout': 60, 'retries': 5}
  ),
  producao(
    'https://api.example.com',
    false,
    {'timeout': 120, 'retries': 3}
  );
  
  final String baseUrl;
  final bool debugMode;
  final Map<String, int> configs;
  
  const ConfigAmbiente(this.baseUrl, this.debugMode, this.configs);
  
  int get timeout => configs['timeout'] ?? 30;
  int get retries => configs['retries'] ?? 3;
  
  void exibirConfig() {
    print('Ambiente: $name');
    print('Base URL: $baseUrl');
    print('Debug: $debugMode');
    print('Timeout: ${timeout}s');
    print('Retries: $retries');
  }
}

void main() {
  print('=== Enums Básicos ===');
  var status = StatusPedido.processando;
  print('Status: $status');
  print('Nome: ${status.name}');
  print('Índice: ${status.index}');
  
  print('\n=== Planetas ===');
  var terra = Planeta.terra;
  print(terra.obterDescricao());
  print('Gravidade na superfície: ${terra.gravidadeSuperficie.toStringAsFixed(2)} m/s²');
  
  double massaPessoa = 70; // kg
  print('\nPeso de uma pessoa de ${massaPessoa}kg em diferentes planetas:');
  for (var planeta in Planeta.values) {
    double peso = planeta.calcularPeso(massaPessoa);
    print('${planeta.name}: ${peso.toStringAsFixed(2)} N');
  }
  
  print('\n=== Transações ===');
  var transacao = TipoTransacao.deposito;
  print('Tipo: ${transacao.descricao}');
  print('É crédito? ${transacao.isCredito}');
  print('Formatar R\$100: ${transacao.formatarValor(100)}');
  
  var saque = TipoTransacao.saque;
  print('\nTipo: ${saque.descricao}');
  print('É débito? ${saque.isDebito}');
  print('Formatar R\$50: ${saque.formatarValor(50)}');
  
  print('\n=== Cores ===');
  var vermelho = Cor.vermelho;
  print('Cor: ${vermelho.name}');
  print('RGB: ${vermelho.rgb}');
  print('HEX: ${vermelho.hex}');
  
  var corPorNome = Cor.porNome('azul');
  print('\nCor encontrada: ${corPorNome?.name}');
  
  var mistura = Cor.vermelho.misturar(Cor.azul);
  print('\nVermelho + Azul = ${mistura.name}');
  
  print('\n=== Estado do Pedido ===');
  var estado = EstadoPedido.criado;
  print('Estado atual: ${estado.descricao}');
  
  while (estado.podeProgredir) {
    var proximo = estado.proximoEstado();
    if (proximo != null) {
      print('Progredindo de ${estado.descricao} para ${proximo.descricao}');
      estado = proximo;
    } else {
      break;
    }
  }
  
  print('Estado final: ${estado.descricao}');
  
  print('\n=== Configuração de Ambiente ===');
  var ambiente = ConfigAmbiente.desenvolvimento;
  ambiente.exibirConfig();
  
  print('\n--- Ambiente de Produção ---');
  ConfigAmbiente.producao.exibirConfig();
}
```

### Padrões Comuns com Enums

```dart
// Enum para representar resultados
enum ResultadoOperacao {
  sucesso,
  falha,
  pendente,
  timeout
}

class Resultado<T> {
  final ResultadoOperacao status;
  final T? dados;
  final String? erro;
  
  Resultado.sucesso(this.dados) 
      : status = ResultadoOperacao.sucesso,
        erro = null;
  
  Resultado.falha(this.erro) 
      : status = ResultadoOperacao.falha,
        dados = null;
  
  Resultado.pendente() 
      : status = ResultadoOperacao.pendente,
        dados = null,
        erro = null;
  
  bool get isSuccesso => status == ResultadoOperacao.sucesso;
  bool get isFalha => status == ResultadoOperacao.falha;
}

// Enum para direções
enum Direcao {
  norte(0, -1),
  sul(0, 1),
  leste(1, 0),
  oeste(-1, 0);
  
  final int dx, dy;
  
  const Direcao(this.dx, this.dy);
  
  Direcao get oposta {
    switch (this) {
      case Direcao.norte: return Direcao.sul;
      case Direcao.sul: return Direcao.norte;
      case Direcao.leste: return Direcao.oeste;
      case Direcao.oeste: return Direcao.leste;
    }
  }
  
  Direcao girarDireita() {
    switch (this) {
      case Direcao.norte: return Direcao.leste;
      case Direcao.leste: return Direcao.sul;
      case Direcao.sul: return Direcao.oeste;
      case Direcao.oeste: return Direcao.norte;
    }
  }
  
  Direcao girarEsquerda() {
    switch (this) {
      case Direcao.norte: return Direcao.oeste;
      case Direcao.oeste: return Direcao.sul;
      case Direcao.sul: return Direcao.leste;
      case Direcao.leste: return Direcao.norte;
    }
  }
}

// Enum para permissões
enum Permissao {
  leitura(1),
  escrita(2),
  execucao(4),
  admin(8);
  
  final int valor;
  
  const Permissao(this.valor);
  
  static int combinar(List<Permissao> permissoes) {
    return permissoes.fold(0, (total, p) => total | p.valor);
  }
  
  static List<Permissao> decompor(int valor) {
    return Permissao.values
        .where((p) => (valor & p.valor) != 0)
        .toList();
  }
}

void main() {
  print('=== Resultado ===');
  var resultado1 = Resultado<String>.sucesso('Operação completada');
  print('Sucesso: ${resultado1.isSuccesso}');
  print('Dados: ${resultado1.dados}');
  
  var resultado2 = Resultado<int>.falha('Erro na operação');
  print('\nFalha: ${resultado2.isFalha}');
  print('Erro: ${resultado2.erro}');
  
  print('\n=== Direções ===');
  var direcao = Direcao.norte;
  print('Direção: $direcao');
  print('Oposta: ${direcao.oposta}');
  print('Girar direita: ${direcao.girarDireita()}');
  print('Girar esquerda: ${direcao.girarEsquerda()}');
  
  // Simular movimento
  int x = 0, y = 0;
  print('\nPosição inicial: ($x, $y)');
  
  x += direcao.dx;
  y += direcao.dy;
  print('Após mover para $direcao: ($x, $y)');
  
  print('\n=== Permissões ===');
  var permissoes = [Permissao.leitura, Permissao.escrita];
  int valor = Permissao.combinar(permissoes);
  print('Permissões combinadas: $valor');
  
  var decompostas = Permissao.decompor(valor);
  print('Permissões: ${decompostas.map((p) => p.name).join(', ')}');
  
  // Verificar permissão
  bool temEscrita = (valor & Permissao.escrita.valor) != 0;
  print('Tem permissão de escrita? $temEscrita');
}
```

Dart tem suporte nativo para null safety, ajudando a evitar erros de null pointer.

```dart
void main() {
  // Variável não-nullable (não aceita null)
  String nome = 'João';
  // nome = null; // ERRO! Não pode ser null
  
  // Variável nullable (aceita null)
  String? apelido;
  apelido = null; // OK
  apelido = 'Johnny'; // OK
  
  // Operador de verificação de null (?)
  String? texto;
  // print(texto.length); // ERRO! Pode ser null
  print(texto?.length); // OK - retorna null se texto for null
  
  // Operador de coalescência null (??)
  String? nomeUsuario;
  String exibir = nomeUsuario ?? 'Visitante';
  print(exibir); // 'Visitante'
  
  // Operador de atribuição null-aware (??=)
  String? valor;
  valor ??= 'Padrão'; // Atribui apenas se valor for null
  print(valor); // 'Padrão'
  
  // Assert non-null (!)
  String? nomeCompleto = 'João Silva';
  String nome2 = nomeCompleto!; // Garante que não é null (use com cuidado!)
  
  // Late initialization
  late String descricao;
  descricao = 'Inicializado depois';
  print(descricao);
}
```

### Exemplo Prático com Null Safety

```dart
class Usuario {
  String nome;
  String? email; // Pode ser null
  int idade;
  
  Usuario({required this.nome, this.email, required this.idade});
  
  void exibirInfo() {
    print('Nome: $nome');
    print('Email: ${email ?? "Não informado"}');
    print('Idade: $idade');
  }
  
  // Método que retorna valor nullable
  String? obterDominio() {
    // Exemplo simplificado para demonstração
    return email?.split('@').last;
  }
}

void main() {
  var usuario1 = Usuario(nome: 'João', email: 'joao@email.com', idade: 25);
  usuario1.exibirInfo();
  print('Domínio: ${usuario1.obterDominio()}');
  
  var usuario2 = Usuario(nome: 'Maria', idade: 30);
  usuario2.exibirInfo();
  print('Domínio: ${usuario2.obterDominio() ?? "Não disponível"}');
}
```

## Assincronismo

Dart suporta programação assíncrona através de Futures e Streams, permitindo operações não-bloqueantes.

### Future

Future representa um valor que estará disponível em algum momento no futuro. É usado para operações assíncronas únicas.

#### Future Básico

```dart
// Função assíncrona simples
Future<String> buscarDados() async {
  // Simular delay de rede
  await Future.delayed(Duration(seconds: 2));
  return 'Dados carregados com sucesso';
}

Future<int> calcularAsync(int a, int b) async {
  await Future.delayed(Duration(seconds: 1));
  return a + b;
}

Future<void> exemploBasico() async {
  print('Iniciando...');
  
  // Aguardar resultado
  String resultado = await buscarDados();
  print(resultado);
  
  // Múltiplas operações
  int soma = await calcularAsync(5, 3);
  print('Soma: $soma');
  
  print('Finalizado');
}
```

#### Manipulando Futures com then/catchError

```dart
Future<String> buscarUsuario(int id) async {
  await Future.delayed(Duration(seconds: 1));
  
  if (id <= 0) {
    throw Exception('ID inválido');
  }
  
  return 'Usuário $id';
}

void exemploThenCatch() {
  print('Buscando usuário...');
  
  buscarUsuario(42)
      .then((usuario) {
        print('Sucesso: $usuario');
        return usuario.length;
      })
      .then((tamanho) {
        print('Tamanho: $tamanho');
      })
      .catchError((erro) {
        print('Erro: $erro');
      })
      .whenComplete(() {
        print('Operação finalizada');
      });
}
```

#### Future.wait - Aguardar Múltiplos Futures

```dart
Future<String> buscarDadosA() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Dados A';
}

Future<String> buscarDadosB() async {
  await Future.delayed(Duration(seconds: 1));
  return 'Dados B';
}

Future<String> buscarDadosC() async {
  await Future.delayed(Duration(seconds: 3));
  return 'Dados C';
}

Future<void> exemploFutureWait() async {
  print('Iniciando buscas paralelas...');
  var inicio = DateTime.now();
  
  // Aguardar todos os futures (paralelo)
  List<String> resultados = await Future.wait([
    buscarDadosA(),
    buscarDadosB(),
    buscarDadosC(),
  ]);
  
  var duracao = DateTime.now().difference(inicio);
  
  print('Resultados: $resultados');
  print('Tempo total: ${duracao.inSeconds}s'); // ~3s (não 6s!)
}
```

#### Future Avançado - Timeout, Error Handling

```dart
Future<String> operacaoLenta() async {
  await Future.delayed(Duration(seconds: 5));
  return 'Operação completada';
}

Future<String> operacaoComErro() async {
  await Future.delayed(Duration(seconds: 1));
  throw Exception('Algo deu errado!');
}

Future<void> exemploTimeout() async {
  try {
    // Timeout após 3 segundos
    String resultado = await operacaoLenta()
        .timeout(Duration(seconds: 3));
    print(resultado);
  } on TimeoutException catch (e) {
    print('Timeout: operação demorou muito');
  }
}

Future<void> exemploTryCatch() async {
  try {
    String resultado = await operacaoComErro();
    print(resultado);
  } catch (e) {
    print('Erro capturado: $e');
  } finally {
    print('Bloco finally sempre executa');
  }
}

Future<String> operacaoComRetry(int tentativas) async {
  for (int i = 0; i < tentativas; i++) {
    try {
      await Future.delayed(Duration(seconds: 1));
      
      // Simular falha nas primeiras tentativas
      if (i < tentativas - 1) {
        throw Exception('Falha na tentativa ${i + 1}');
      }
      
      return 'Sucesso na tentativa ${i + 1}';
    } catch (e) {
      print('Tentativa ${i + 1} falhou: $e');
      if (i == tentativas - 1) rethrow;
    }
  }
  
  throw Exception('Todas as tentativas falharam');
}
```

#### Future Completer

```dart
import 'dart:async';

class GerenciadorDados {
  final Completer<String> _completer = Completer<String>();
  
  Future<String> get dados => _completer.future;
  
  void carregarDados() {
    // Simular carregamento assíncrono
    Future.delayed(Duration(seconds: 2), () {
      _completer.complete('Dados carregados');
    });
  }
  
  void cancelar() {
    _completer.completeError('Operação cancelada');
  }
}

Future<void> exemploCompleter() async {
  var gerenciador = GerenciadorDados();
  
  // Iniciar carregamento
  gerenciador.carregarDados();
  
  print('Aguardando dados...');
  
  try {
    String resultado = await gerenciador.dados;
    print(resultado);
  } catch (e) {
    print('Erro: $e');
  }
}
```

#### Padrões Úteis com Future

```dart
// Future com cache
class CacheDados<T> {
  T? _cache;
  Future<T>? _futureEmAndamento;
  
  Future<T> obter(Future<T> Function() carregador) {
    // Se já tem cache, retorna imediatamente
    if (_cache != null) {
      return Future.value(_cache);
    }
    
    // Se já está carregando, retorna o future em andamento
    if (_futureEmAndamento != null) {
      return _futureEmAndamento!;
    }
    
    // Iniciar novo carregamento
    _futureEmAndamento = carregador().then((dados) {
      _cache = dados;
      _futureEmAndamento = null;
      return dados;
    });
    
    return _futureEmAndamento!;
  }
  
  void limpar() {
    _cache = null;
    _futureEmAndamento = null;
  }
}

// Future com debounce
class Debouncer {
  final Duration delay;
  Timer? _timer;
  
  Debouncer({required this.delay});
  
  void executar(void Function() acao) {
    _timer?.cancel();
    _timer = Timer(delay, acao);
  }
  
  void dispose() {
    _timer?.cancel();
  }
}

// Future condicional
Future<T> executarSe<T>(
  bool condicao,
  Future<T> Function() acao,
  T valorPadrao,
) async {
  if (condicao) {
    return await acao();
  }
  return valorPadrao;
}

// Chain de operações assíncronas
Future<String> processarDados(String dados) async {
  await Future.delayed(Duration(milliseconds: 500));
  return dados.toUpperCase();
}

Future<String> validarDados(String dados) async {
  await Future.delayed(Duration(milliseconds: 300));
  if (dados.isEmpty) throw Exception('Dados vazios');
  return dados;
}

Future<String> salvarDados(String dados) async {
  await Future.delayed(Duration(milliseconds: 700));
  return 'Salvo: $dados';
}

Future<String> pipelineProcessamento(String entrada) {
  return Future.value(entrada)
      .then(validarDados)
      .then(processarDados)
      .then(salvarDados);
}
```

### Stream

Streams representam uma sequência assíncrona de dados. Diferente de Future (valor único), Stream pode emitir múltiplos valores ao longo do tempo.

#### Stream Básico

```dart
import 'dart:async';

// Stream simples
Stream<int> contadorStream(int max) async* {
  for (int i = 1; i <= max; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i; // Emitir valor
  }
}

// Consumir stream com await for
Future<void> exemploStreamBasico() async {
  print('Iniciando contador...');
  
  await for (int valor in contadorStream(5)) {
    print('Valor: $valor');
  }
  
  print('Contador finalizado');
}

// Consumir stream com listen
void exemploStreamListen() {
  print('Iniciando contador...');
  
  var subscription = contadorStream(5).listen(
    (valor) {
      print('Valor: $valor');
    },
    onError: (erro) {
      print('Erro: $erro');
    },
    onDone: () {
      print('Stream finalizado');
    },
    cancelOnError: false,
  );
  
  // Cancelar subscription após 3 segundos
  Future.delayed(Duration(seconds: 3), () {
    subscription.cancel();
    print('Subscription cancelado');
  });
}
```

#### StreamController

```dart
import 'dart:async';

class GeradorEventos {
  final _controller = StreamController<String>();
  
  // Expor stream (somente leitura)
  Stream<String> get eventos => _controller.stream;
  
  void adicionarEvento(String evento) {
    _controller.add(evento);
  }
  
  void adicionarErro(Object erro) {
    _controller.addError(erro);
  }
  
  void fechar() {
    _controller.close();
  }
}

Future<void> exemploStreamController() async {
  var gerador = GeradorEventos();
  
  // Escutar eventos
  gerador.eventos.listen(
    (evento) => print('Evento: $evento'),
    onError: (erro) => print('Erro: $erro'),
    onDone: () => print('Stream fechado'),
  );
  
  // Emitir eventos
  gerador.adicionarEvento('Evento 1');
  await Future.delayed(Duration(seconds: 1));
  
  gerador.adicionarEvento('Evento 2');
  await Future.delayed(Duration(seconds: 1));
  
  gerador.adicionarEvento('Evento 3');
  await Future.delayed(Duration(seconds: 1));
  
  // Fechar stream
  gerador.fechar();
}
```

#### Broadcast Stream

```dart
import 'dart:async';

void exemploBroadcastStream() {
  // Stream normal permite apenas um listener
  var streamNormal = Stream.periodic(
    Duration(seconds: 1),
    (count) => count
  ).take(5);
  
  // Converter para broadcast (múltiplos listeners)
  var streamBroadcast = streamNormal.asBroadcastStream();
  
  // Primeiro listener
  streamBroadcast.listen(
    (valor) => print('Listener 1: $valor'),
  );
  
  // Segundo listener
  streamBroadcast.listen(
    (valor) => print('Listener 2: $valor'),
  );
  
  // Terceiro listener
  streamBroadcast.listen(
    (valor) => print('Listener 3: $valor'),
  );
}
```

#### Transformações de Stream

```dart
import 'dart:async';

Future<void> exemploTransformacoes() async {
  var stream = Stream.periodic(
    Duration(milliseconds: 500),
    (count) => count
  ).take(10);
  
  // Map (transformar valores)
  print('=== Map ===');
  await for (var valor in stream.map((n) => n * 2)) {
    print(valor);
  }
  
  // Where (filtrar valores)
  print('\n=== Where (pares) ===');
  stream = Stream.periodic(Duration(milliseconds: 500), (count) => count).take(10);
  await for (var valor in stream.where((n) => n % 2 == 0)) {
    print(valor);
  }
  
  // Take (pegar primeiros N)
  print('\n=== Take (3 primeiros) ===');
  stream = Stream.periodic(Duration(milliseconds: 500), (count) => count).take(10);
  await for (var valor in stream.take(3)) {
    print(valor);
  }
  
  // Skip (pular primeiros N)
  print('\n=== Skip (pular 5) ===');
  stream = Stream.periodic(Duration(milliseconds: 500), (count) => count).take(10);
  await for (var valor in stream.skip(5)) {
    print(valor);
  }
  
  // Distinct (remover duplicatas)
  print('\n=== Distinct ===');
  var streamComDuplicatas = Stream.fromIterable([1, 2, 2, 3, 3, 3, 4, 5, 5]);
  await for (var valor in streamComDuplicatas.distinct()) {
    print(valor);
  }
}
```

#### Stream Avançado

```dart
import 'dart:async';

// Stream de eventos personalizados
class SensorTemperatura {
  final _controller = StreamController<double>.broadcast();
  Timer? _timer;
  
  Stream<double> get leituras => _controller.stream;
  
  void iniciar() {
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      // Simular leitura de temperatura (20-30°C)
      double temperatura = 20 + (10 * (timer.tick % 10) / 10);
      _controller.add(temperatura);
    });
  }
  
  void parar() {
    _timer?.cancel();
    _controller.close();
  }
}

// StreamTransformer customizado
class ConversorTemperatura extends StreamTransformerBase<double, String> {
  @override
  Stream<String> bind(Stream<double> stream) {
    return stream.map((celsius) {
      double fahrenheit = (celsius * 9 / 5) + 32;
      return '${celsius.toStringAsFixed(1)}°C = ${fahrenheit.toStringAsFixed(1)}°F';
    });
  }
}

// Combinar múltiplos streams
Future<void> exemploCombinarStreams() async {
  var stream1 = Stream.periodic(Duration(seconds: 1), (i) => 'A$i').take(5);
  var stream2 = Stream.periodic(Duration(seconds: 1), (i) => 'B$i').take(5);
  
  // Merge (combinar em ordem de chegada)
  // Note: StreamGroup requer package:async
  print('=== Eventos alternados ===');
  
  // Simular merge manual
  var controller = StreamController<String>();
  
  stream1.listen(controller.add);
  stream2.listen(controller.add);
  
  await for (var valor in controller.stream.take(10)) {
    print(valor);
  }
}

// Stream com backpressure
class ProcessadorDados {
  final _controller = StreamController<int>();
  
  Stream<int> get saida => _controller.stream;
  
  Future<void> processar(Stream<int> entrada) async {
    await for (var valor in entrada) {
      // Processar com delay
      await Future.delayed(Duration(milliseconds: 500));
      var resultado = valor * 2;
      _controller.add(resultado);
    }
    _controller.close();
  }
}

// Stream periódico customizado
Stream<String> geradorMensagens() async* {
  var mensagens = [
    'Inicializando...',
    'Carregando dados...',
    'Processando...',
    'Quase lá...',
    'Concluído!'
  ];
  
  for (var mensagem in mensagens) {
    await Future.delayed(Duration(seconds: 1));
    yield mensagem;
  }
}

// Stream com retry
Stream<int> streamComFalha(int maxTentativas) async* {
  for (int i = 0; i < maxTentativas; i++) {
    await Future.delayed(Duration(seconds: 1));
    
    if (i < maxTentativas - 1) {
      yield* Stream.error('Falha na tentativa ${i + 1}');
    } else {
      yield 42; // Sucesso na última tentativa
    }
  }
}

// Stream de eventos do usuário
class GerenciadorEventos {
  final _clickController = StreamController<String>.broadcast();
  final _inputController = StreamController<String>.broadcast();
  
  Stream<String> get cliques => _clickController.stream;
  Stream<String> get inputs => _inputController.stream;
  
  // Stream combinado de todos os eventos
  Stream<String> get todosEventos async* {
    yield* cliques.map((c) => 'Click: $c');
    yield* inputs.map((i) => 'Input: $i');
  }
  
  void registrarClick(String elemento) {
    _clickController.add(elemento);
  }
  
  void registrarInput(String valor) {
    _inputController.add(valor);
  }
  
  void fechar() {
    _clickController.close();
    _inputController.close();
  }
}

void main() async {
  print('=== Exemplo 1: Stream Básico ===');
  await exemploStreamBasico();
  
  print('\n=== Exemplo 2: StreamController ===');
  await exemploStreamController();
  
  print('\n=== Exemplo 3: Transformações ===');
  await exemploTransformacoes();
  
  print('\n=== Exemplo 4: Sensor de Temperatura ===');
  var sensor = SensorTemperatura();
  
  // Aplicar transformação
  var conversor = ConversorTemperatura();
  sensor.leituras.transform(conversor).listen(
    (leitura) => print(leitura),
  );
  
  sensor.iniciar();
  
  // Parar após 10 segundos
  await Future.delayed(Duration(seconds: 10));
  sensor.parar();
  
  print('\n=== Exemplo 5: Gerador de Mensagens ===');
  await for (var mensagem in geradorMensagens()) {
    print(mensagem);
  }
  
  print('\n=== Exemplo 6: Broadcast Stream ===');
  exemploBroadcastStream();
  
  // Aguardar para ver os resultados
  await Future.delayed(Duration(seconds: 6));
}
```

#### Padrões Práticos

```dart
import 'dart:async';

// Debounce em Stream (evitar processamento excessivo)
Stream<T> debounce<T>(Stream<T> source, Duration duration) {
  Timer? timer;
  final controller = StreamController<T>();
  
  source.listen(
    (value) {
      timer?.cancel();
      timer = Timer(duration, () {
        controller.add(value);
      });
    },
    onError: controller.addError,
    onDone: () {
      timer?.cancel();
      controller.close();
    },
  );
  
  return controller.stream;
}

// Throttle em Stream (limitar taxa de eventos)
Stream<T> throttle<T>(Stream<T> source, Duration duration) {
  Timer? timer;
  final controller = StreamController<T>();
  
  source.listen(
    (value) {
      if (timer == null || !timer!.isActive) {
        controller.add(value);
        timer = Timer(duration, () {});
      }
    },
    onError: controller.addError,
    onDone: controller.close,
  );
  
  return controller.stream;
}

// Cache de valores mais recentes
class StreamCache<T> {
  final int tamanhoMaximo;
  final List<T> _cache = [];
  final _controller = StreamController<T>.broadcast();
  
  StreamCache(this.tamanhoMaximo);
  
  Stream<T> get stream => _controller.stream;
  List<T> get valores => List.unmodifiable(_cache);
  
  void adicionar(T valor) {
    _cache.add(valor);
    if (_cache.length > tamanhoMaximo) {
      _cache.removeAt(0);
    }
    _controller.add(valor);
  }
  
  void fechar() {
    _controller.close();
  }
}

// Exemplo de uso prático
Future<void> exemploPratico() async {
  print('=== Debounce (busca) ===');
  
  var controller = StreamController<String>();
  var buscaDebounced = debounce(controller.stream, Duration(milliseconds: 500));
  
  buscaDebounced.listen((termo) {
    print('Buscando: $termo');
  });
  
  // Simular digitação rápida
  controller.add('d');
  await Future.delayed(Duration(milliseconds: 100));
  controller.add('da');
  await Future.delayed(Duration(milliseconds: 100));
  controller.add('dar');
  await Future.delayed(Duration(milliseconds: 100));
  controller.add('dart');
  
  // Aguardar debounce processar
  await Future.delayed(Duration(seconds: 1));
  
  print('\n=== Cache de Stream ===');
  var cache = StreamCache<int>(3);
  
  cache.stream.listen((valor) {
    print('Novo valor: $valor, Cache: ${cache.valores}');
  });
  
  for (int i = 1; i <= 5; i++) {
    cache.adicionar(i);
    await Future.delayed(Duration(milliseconds: 200));
  }
  
  controller.close();
  cache.fechar();
}
```

## Recursos Adicionais

- [Documentação Oficial do Dart](https://dart.dev/guides)
- [DartPad - Editor Online](https://dartpad.dev/)
- [Flutter Documentation](https://flutter.dev/docs)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- [Effective Dart](https://dart.dev/guides/language/effective-dart)
- [Dart API Reference](https://api.dart.dev/)

## Exercícios Práticos

### Exercícios de String
1. Crie uma função que recebe uma string e retorna a mesma string invertida
2. Implemente uma função que verifica se uma string é um palíndromo
3. Crie uma função que conta quantas vogais existem em uma string

### Exercícios de int e double
1. Crie uma função que verifica se um número é primo
2. Implemente uma calculadora com as operações básicas (+, -, *, /)
3. Crie uma função que calcula o fatorial de um número

### Exercícios de Collections
1. Implemente uma função que remove duplicatas de uma lista
2. Crie uma função que mescla dois Maps sem sobrescrever valores existentes
3. Implemente um sistema de carrinho de compras usando Map

### Exercícios de Classes
1. Crie uma classe `Conta` bancária com métodos para depositar, sacar e verificar saldo
2. Implemente uma hierarquia de classes para representar diferentes tipos de veículos
3. Crie um sistema de biblioteca usando classes, herança e polimorfismo
4. Implemente uma classe `Fila` com encapsulamento adequado

### Exercícios de Enums
1. Crie um enum para representar estados de uma tarefa (TODO, IN_PROGRESS, DONE)
2. Implemente um enum com métodos para converter dias da semana em útil/fim de semana
3. Crie um sistema de permissões usando enums avançados

### Exercícios de Assincronismo
1. Implemente uma função que busca dados de múltiplas APIs em paralelo
2. Crie um sistema de retry para operações que podem falhar
3. Implemente um Stream que simula eventos de sensores
4. Crie um debouncer para otimizar buscas em tempo real

## Boas Práticas

### Nomenclatura
- Use `camelCase` para variáveis e funções: `minhaVariavel`, `calcularTotal()`
- Use `PascalCase` para classes: `MinhaClasse`, `UsuarioModel`
- Use `SCREAMING_SNAKE_CASE` para constantes: `MAX_TENTATIVAS`, `API_KEY`
- Use `snake_case` para arquivos: `meu_arquivo.dart`, `usuario_model.dart`
- Prefixe membros privados com underscore: `_variabelPrivada`, `_metodoPrivado()`

### Estrutura de Código
- Mantenha funções pequenas e focadas em uma única responsabilidade
- Use funções de ordem superior (map, where, fold) em vez de loops quando apropriado
- Prefira composição sobre herança quando possível
- Documente APIs públicas com comentários de documentação (`///`)

### Null Safety
- Sempre use null safety quando possível
- Evite usar `!` (null assertion) a menos que tenha certeza
- Prefira `??` e `?.` para lidar com valores nullable
- Use `late` apenas quando necessário e com cuidado

### Assincronismo
- Sempre use `async`/`await` em vez de `.then()` quando possível (mais legível)
- Trate erros com try-catch em código assíncrono
- Use `Future.wait()` para operações paralelas
- Cancele subscriptions de Streams quando não forem mais necessárias

### Performance
- Use `const` para objetos imutáveis quando possível
- Evite criar objetos desnecessários em loops
- Use `StringBuffer` para concatenação de muitas strings
- Prefira `whereType()` em vez de `where()` + `is` para filtrar por tipo

---

**Bons estudos! 🚀**

Este documento serve como referência completa para o aprendizado de Dart, cobrindo desde conceitos básicos até tópicos avançados. Pratique os exercícios e explore os recursos adicionais para aprofundar seu conhecimento.
