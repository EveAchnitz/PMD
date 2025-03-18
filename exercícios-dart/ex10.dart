import 'dart:io';

void main(){
  print("Digite um número inteiro: ");
  int num = int.parse(stdin.readLineSync()!);

  bool primo = true;

  if(num < 2){//0 e 1 não são primos
    primo = false;
  } else{
    for(int i = 2; i <= num ~/ 2; i++){//i = 2 porque não precisamos dividir por 0 e 1, ~/ significa que estamos realizando uma divisão inteira
      if(num % i == 0){
        primo = false;
        break;//sai do bloco for
      }//hipóteses de um número não ser primo
    }
  }

  if(primo){//primo tem um valor true
    print("$num é um número primo.");
  } else {
    print("$num não é um número primo.");
  }
}