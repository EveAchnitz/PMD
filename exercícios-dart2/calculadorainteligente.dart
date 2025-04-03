import 'dart:io';

void main(){

  print("Escolha uma das operações para executar: ");
  print("1- Exibir 'Olá Dart!'");
  print("2- Calcular a área de um retângulo");
  print("3- Verificar se um número é par ou ímpar");
  print("4- Comparar dois números");
  print("5- Converter nota para conceito");
  print("6- Exibir contagem progressiva");
  print("7- Somar todos os números até um valor especificado");
  print("8- Exibir a tabuada de um número");
  print("9- Sair do programa");
  int opcao = int.parse(stdin.readLineSync()!);

switch (opcao) {
  case 1:
    print("Olá Dart!");
    break;
  case 2:
     print("Digite o valor da base do retângulo: ");
     double base = double.parse(stdin.readLineSync()!);//stdin significa que vamos fazer uma solicitação ao usuário

     print("Digite o valor da altura do retângulo: ");
     double altura = double.parse(stdin.readLineSync()!);//readLineSync significa que será lido de forma síncrona

     double area = base * altura; 
     print("Esee retângulo mede $area m².");
    break;
  case 3:
    print("Digite um número inteiro: ");
    int numero = int.parse(stdin.readLineSync()!);

    if(numero % 2 == 0){
      print("O número $numero é par.");
    } else {
      print("O número $numero é ímpar.");
    }
    break;
  case 4:
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
    break;
case 5:
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
   break;
case 6:
    print("Digite um número para fazermos uma contagem progressiva: ");
    int num = int.parse(stdin.readLineSync()!);
  
    for(int contagem = 1; contagem <= num; contagem++){
      print(contagem);
    }
  break;
case 7:
    print("Digite um número: ");
    int num = int.parse(stdin.readLineSync()!);

    int cont = 1;
    int soma = 0;
 
    while(cont <= num){
      soma+= cont;
      cont++;
    }
    print(soma);
  break;
case 8:
    print("Digite um número: ");
    int num = int.parse(stdin.readLineSync()!);
    int i = 1;
    int resultado = 0;
  
    for(i = 1; i <= 10; i++){
      resultado = i*num;
      print("$num x $i = $resultado");
    }
  break;
  case 9:
  print("Tchauu");
  break;
  default:
    print("Valor inválido");
  }
}