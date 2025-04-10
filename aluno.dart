class Aluno{
  String? nome;
  double? nota01;
  double? nota02;
  double? media;

  Aluno(){
    nome = " ";
    nota01 = 0;
    nota02 = 0;
    media = (nota01! + nota02!) / 2;
  }

  Aluno.nomeado(this.nome, this.nota01, this.nota02);
}

void aluno(){
  Aluno aluno01 = new Aluno.nomeado("Ana", 9.5, 10);
  Aluno aluno02 = new Aluno.nomeado("Maria", 9, 10);

  aluno01.media = Aluno().media;
  aluno02.media = Aluno().media;

  print("Estudantes aprovados: ");
  if(Aluno().media! >= 6.0){
     print("${Aluno().nome}.");
  }
}//Não está funcionando como deveria 🥲