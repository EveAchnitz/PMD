import 'dart:io';
void main() {
  
  print("Digite um número: ");
  int num = int.parse(stdin.readLineSync()!);

  int cont = 1;
  int soma = 0;
 
  while(cont <= num){
    soma+= cont;
    cont++;
  }
  print(soma);
}