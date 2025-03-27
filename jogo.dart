/*Evellyn Achnitz e Tuanny Thomazelli
ALTERAÇÕES:
- void main() para void jogo(), para que fique mais fãcil pra fazer o swith case.
- criação de um void main(), para fazer a execução do jogo e do swith case.
- switch case para escolher se será um ou dois jogadores.
*/

import 'dart:io';
import 'dart:math';

class JogoTiro {
  final int largura = 20;
  late int alvo;
  int jogador = 10;

  JogoTiro() {
    alvo = Random().nextInt(largura);
  }

  void exibirJogo() {
    for (int i = 0; i < largura; i++) {
      if (i == jogador) {
        stdout.write('🔫');
      } else if (i == alvo) {
        stdout.write('🎯');
      } else {
        stdout.write('-');
      }
    }
    print('');
  }

  void moverJogador(String direcao) {
    if (direcao == 'a' && jogador > 0) {
      jogador--;
    } else if (direcao == 'd' && jogador < largura - 1) {
      jogador++;
    }
  }

  bool atirar() {
    return jogador == alvo;
  }
}

void jogo() {
  JogoTiro jogo = JogoTiro();
  String? comando;

  print("\n=== JOGO DE TIRO ===");
  print("Use 'a' para esquerda, 'd' para direita e 'f' para atirar!\n");

  while (true) {
    jogo.exibirJogo();
    stdout.write("Comando: ");
    comando = stdin.readLineSync();

    if (comando == 'a' || comando == 'd') {
      jogo.moverJogador(comando!);
    } else if (comando == 'f') {
      if (jogo.atirar()) {
        print("\n🎯 Você acertou o alvo! Parabéns! 🎯\n");
        break;
      } else {
        print("\n💥 Errou! Tente novamente.\n");
      }
    } else {
      print("\nComando inválido! Use 'a', 'd' ou 'f'.\n");
    }
  } 
}

void main() {

  print('''E aí? Serão quantos jogadores?
  1- Um jogador
  2- Dois jogadores
  ''');
  int opcao = int.parse(stdin.readLineSync()!);

  switch(opcao){
    case 1: jogo();
    case 2:jogo();
    print("Agora é a sua vez segundo jogador!!!");
    return jogo();
    default: print("O jogo admite apenas 1 ou 2 jogadores.");
  }

  /*if (opcao == 2) {
    if (tentativasJ1 < tentativasJ2) {
      print("Parabéns Jogador 01!! Você venceu com $tentativasJ1 tentativas.");
    } else if (tentativasJ2 < tentativasJ1) {
      print("Parabéns Jogador 02!! Você venceu com $tentativasJ2 tentativas.");
    } else {
      print("Empatou! Ambos os jogadores usaram $tentativasJ1 tentativas.");
    }
  } else {
    print("Você jogou com $tentativasJ1 tentativas.");
  }*/
}