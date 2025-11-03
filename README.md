# Flutter Class UERJ - Zona Oeste

Estudos de Flutter para a empresa junior da universidade estadual do estado do rio de janeiro, campus zona-oeste

## Índice
- [Introdução ao Dart](#introdução-ao-dart)
- [Variáveis e Tipos de Dados](#variáveis-e-tipos-de-dados)
- [Operadores](#operadores)
- [Estruturas de Controle](#estruturas-de-controle)
- [Funções](#funções)
- [Classes e Objetos](#classes-e-objetos)
- [Coleções](#coleções)
- [Null Safety](#null-safety)
- [Async/Await e Futures](#asyncawait-e-futures)

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
}

void main() {
  var pessoa1 = Pessoa('João', 25);
  pessoa1.apresentar();
  print('Maior de idade: ${pessoa1.isMaiorDeIdade}');
  
  var pessoa2 = Pessoa.comNome('Maria');
  pessoa2.definirIdade = 30;
  pessoa2.apresentar();
}
```

### Herança

```dart
class Animal {
  String nome;
  
  Animal(this.nome);
  
  void emitirSom() {
    print('$nome faz algum som');
  }
}

class Cachorro extends Animal {
  String raca;
  
  Cachorro(String nome, this.raca) : super(nome);
  
  @override
  void emitirSom() {
    print('$nome late: Au au!');
  }
  
  void buscar() {
    print('$nome está buscando a bolinha');
  }
}

void main() {
  var cachorro = Cachorro('Rex', 'Labrador');
  cachorro.emitirSom();
  cachorro.buscar();
}
```

### Classes Abstratas e Interfaces

```dart
// Classe abstrata
abstract class Forma {
  double calcularArea();
  void desenhar() {
    print('Desenhando forma...');
  }
}

class Retangulo extends Forma {
  double largura;
  double altura;
  
  Retangulo(this.largura, this.altura);
  
  @override
  double calcularArea() {
    return largura * altura;
  }
}

class Circulo extends Forma {
  double raio;
  
  Circulo(this.raio);
  
  @override
  double calcularArea() {
    // Nota: Em produção, use math.pi da biblioteca dart:math
    return 3.14159 * raio * raio;
  }
}

void main() {
  var retangulo = Retangulo(5, 10);
  print('Área do retângulo: ${retangulo.calcularArea()}');
  
  var circulo = Circulo(7);
  print('Área do círculo: ${circulo.calcularArea()}');
}
```

## Coleções

### Listas (Arrays)

```dart
void main() {
  // Lista simples
  List<int> numeros = [1, 2, 3, 4, 5];
  var frutas = ['Maçã', 'Banana', 'Laranja'];
  
  // Acessar elementos
  print(frutas[0]); // Maçã
  print(frutas.first); // Maçã
  print(frutas.last); // Laranja
  
  // Adicionar elementos
  frutas.add('Uva');
  frutas.addAll(['Manga', 'Pera']);
  
  // Remover elementos
  frutas.remove('Banana');
  frutas.removeAt(0);
  
  // Operações úteis
  print('Tamanho: ${frutas.length}');
  print('Está vazia: ${frutas.isEmpty}');
  print('Contém Uva: ${frutas.contains("Uva")}');
  
  // Iterar
  for (var fruta in frutas) {
    print(fruta);
  }
}
```

### Sets (Conjuntos)

```dart
void main() {
  // Set - não permite duplicatas
  Set<int> numeros = {1, 2, 3, 4, 5};
  var cidades = {'Rio', 'São Paulo', 'Brasília'};
  
  // Adicionar elementos
  cidades.add('Salvador');
  cidades.add('Rio'); // Não será adicionado (já existe)
  
  // Operações de conjunto
  var conjunto1 = {1, 2, 3};
  var conjunto2 = {3, 4, 5};
  
  print('União: ${conjunto1.union(conjunto2)}');
  print('Interseção: ${conjunto1.intersection(conjunto2)}');
  print('Diferença: ${conjunto1.difference(conjunto2)}');
}
```

### Maps (Dicionários)

```dart
void main() {
  // Map - chave-valor
  Map<String, int> idades = {
    'João': 25,
    'Maria': 30,
    'Pedro': 22
  };
  
  // Acessar valores
  print(idades['João']); // 25
  
  // Adicionar/Atualizar
  idades['Ana'] = 28;
  idades['João'] = 26; // Atualiza
  
  // Remover
  idades.remove('Pedro');
  
  // Verificações
  print('Contém chave João: ${idades.containsKey("João")}');
  print('Contém valor 30: ${idades.containsValue(30)}');
  
  // Iterar
  idades.forEach((nome, idade) {
    print('$nome tem $idade anos');
  });
  
  // Chaves e valores
  print('Nomes: ${idades.keys}');
  print('Idades: ${idades.values}');
}
```

## Null Safety

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

## Async/Await e Futures

Para operações assíncronas, Dart usa Futures e as palavras-chave async/await.

```dart
// Simulação de chamada assíncrona
Future<String> buscarDadosUsuario() async {
  await Future.delayed(Duration(seconds: 2)); // Simula delay
  return 'Dados do usuário carregados';
}

Future<void> main() async {
  print('Iniciando...');
  
  // Usando await
  String resultado = await buscarDadosUsuario();
  print(resultado);
  
  print('Finalizado');
}

// Múltiplas operações assíncronas
Future<void> exemploMultiplo() async {
  var futuro1 = Future.delayed(Duration(seconds: 1), () => 'Primeiro');
  var futuro2 = Future.delayed(Duration(seconds: 2), () => 'Segundo');
  
  // Aguardar todos
  var resultados = await Future.wait([futuro1, futuro2]);
  print(resultados); // ['Primeiro', 'Segundo']
}
```

## Recursos Adicionais

- [Documentação Oficial do Dart](https://dart.dev/guides)
- [DartPad - Editor Online](https://dartpad.dev/)
- [Flutter Documentation](https://flutter.dev/docs)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)

## Exercícios Práticos

1. Crie uma classe `Conta` bancária com métodos para depositar, sacar e verificar saldo
2. Implemente uma função que recebe uma lista de números e retorna apenas os números pares
3. Crie uma classe abstrata `Veiculo` e implemente classes derivadas como `Carro` e `Moto`
4. Faça um programa que simule operações assíncronas usando Future e async/await

---

**Bons estudos! 🚀**
