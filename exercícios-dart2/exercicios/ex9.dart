import 'dart:io';
import 'dart:math';
void adivinhacao(){
  int numeroSecreto = Random().nextInt(100) + 1; //pega um número aleatório de 0 a 100
  int palpite = 0;
  int tentativas = 0;

  print("Tente adivinhar um número entre 0 e 100");

  while(palpite != numeroSecreto){
    print("Digite seu palpite: ");
    palpite = int.parse(stdin.readLineSync()!);
    tentativas++;

  if(palpite > numeroSecreto){
    print("O valor é menor!");
  } else if(palpite < numeroSecreto){
    print("O valor é maior!");
  } else{
    print("Parabéns! Você acertou em $tentativas tentativas.");
  }
  }
}