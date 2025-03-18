//Autora: Evellyn Achnitz

import 'dart:io';
void main(){

  int numSecreto = 23;

  print("Adivinhe o número!");
  
  print("Digite um valor entre 0 e 100: ");
  int num = int.parse(stdin.readLineSync()!);

   if(num > 0 && num <= 100){
  do{
    if(num > numSecreto){
      print("Ainda não é isso...Chuta mais baixo!");
      num = int.parse(stdin.readLineSync()!);

   } else if(num < numSecreto){
      print("Ainda não é isso...Chuta mais alto aí!");
      num = int.parse(stdin.readLineSync()!);
   } 
  } while(num != numSecreto);

  if(num == numSecreto){
   print("AEEE! Acertou!!");
  }
  
  } else{
   print("Valor inválido");
  }

}