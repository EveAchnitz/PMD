import 'dart:io';
import 'barrel.dart';
void main(){

  print('''MENU:
  1- Produtos
  2- Contas Bancárias
  3- Funcionários
  4- Alunos''');
 int opcao = int.parse(stdin.readLineSync()!);


  switch(opcao){
      case 1: produto(); break;
      case 2: contaBancaria(); break;
      case 3: funcionario(); break;
      case 4: aluno(); break;
      default: print("Não temos essa opção.");
  }
}