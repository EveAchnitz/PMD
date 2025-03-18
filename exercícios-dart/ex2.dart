import 'dart:io';
void main(){
  print("Digite o valor da base do retângulo: ");
  double base = double.parse(stdin.readLineSync()!);//stdin significa que vamos fazer uma solicitação ao usuário

  print("Digite o valor da altura do retângulo: ");
  double altura = double.parse(stdin.readLineSync()!);//readLineSync significa que será lido de forma síncrona

  double area = base * altura; 
  print("Esee retângulo mede $area m².");
}