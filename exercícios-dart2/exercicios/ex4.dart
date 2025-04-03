import 'dart:io';

void comparacaoNumeros(){
  print("Digite um valor inteiro: ");
  int num = int.parse(stdin.readLineSync()!);

  print("Digite mais um valor: ");
  int num2 = int.parse(stdin.readLineSync()!);
  
  if(num > num2){
     print("$num é maior que $num2");
         
  } else if(num == num2){
    print("$num2 é igual a $num");
    
  } else{
    print("$num2 é maior que $num");
  }
}