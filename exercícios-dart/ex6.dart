import 'dart:io';
void main(){

  print("Digite um número para fazermos uma contagem progressiva: ");
  int num = int.parse(stdin.readLineSync()!);
  
  for(int contagem = 1; contagem <= num; contagem++){
    print(contagem);
  }

}