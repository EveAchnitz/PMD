import 'dart:io'; //'dart:io' é a biblioteca de input e output dos dados em dart
  void main(){
    print("Digite um número inteiro: ");
    int numero = int.parse(stdin.readLineSync()!);

    if(numero % 2 == 0){
      print("O número $numero é par.");
    } else {
      print("O número $numero é ímpar.");
    }
  }