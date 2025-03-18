import 'dart:io';
void main(){
  print("Qual foi a sua nota?");
  int nota = int.parse(stdin.readLineSync()!);

  if(nota >= 90 && nota <= 100){
     print("A");
         
  } else if(nota >= 80 && nota <= 89){
    print("B");
    
  } else if(nota >= 70 && nota <= 79){
    print("C");
  
  } else if(nota >= 60 && nota <= 69){
    print("D");
    
  } else if(nota < 60){
    print("F");
    
  } else{
    print("A nota $nota é um valor inválido.");
  }
}