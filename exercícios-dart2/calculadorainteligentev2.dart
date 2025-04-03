import 'dart:io';
import 'exercicios/barrel.dart';

void exibirMenu(){

  print('''

MENU: 

  1- Exibir 'Olá Dart!'
  2- Calcular a área de um retângulo
  3- Verificar se um número é par ou ímpar
  4- Comparar dois números
  5- Converter nota para conceito
  6- Exibir contagem progressiva
  7- Somar todos os números até um valor especificado
  8- Exibir a tabuada de um número
  9- Sair do programa
  
  ''');}

void main(){
int escolha = 0;

do{
  exibirMenu();
  stdout.write("Escolha uma das opções para executar: ");
  int escolha = int.parse(stdin.readLineSync()!);

  print("");//pula linha

  switch (escolha) {
    case 1: olaDart(); break;
    case 2: areaRetangulo(); break;
    case 3: parOuImpar(); break;
    case 4: comparacaoNumeros(); break;
    case 5: notas(); break;
    case 6: contagemProgressiva(); break;
    case 7: somaNumeros(); break;
    case 8: tabuada(); break;
    case 9: print("Saindo do programa...Tchauu"); break;
    default: print("Valor inválido! Digite um valor entre 1 e 9.");
    }
  } while(escolha != 9);
}