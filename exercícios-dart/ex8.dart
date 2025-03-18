import 'dart:io';
void main() {
  
  print("Digite um número: ");
  int num = int.parse(stdin.readLineSync()!);
  int i = 1;
  int resultado = 0;
  
  for(i = 1; i <= 10; i++){
    resultado = i*num;
    print("$num x $i = $resultado");
  }
}