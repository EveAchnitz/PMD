class Aluno{
  String? nome;
  double? nota01;
  double? nota02;
  double? media;

  Aluno(){
    nome = " ";
    nota01 = 0;
    nota02 = 0;
  }

  Aluno.nomeado(this.nome, this.nota01, this.nota02);
}

void aluno(){

  Aluno aluno01 = new Aluno.nomeado("Ana", 9.5, 10);
  Aluno aluno02 = new Aluno.nomeado("Maria", 9, 10);
  Aluno aluno03 = new Aluno.nomeado("José", 9, 9.5);

  aluno01.media = aluno01.nota01! + aluno02.nota02! / 2;
  aluno02.media = aluno01.nota01! + aluno02.nota02! / 2;
  aluno03.media = aluno01.nota01! + aluno02.nota02! / 2;

  print("Estudantes aprovados:");
  if(aluno01.media! >= 6){
    print(aluno01.nome);
    if(aluno02.media! >= 6){
    print(aluno02.nome);
    }
    if(aluno03.media! >= 6){
    print(aluno03.nome);
    }
  }
  else{
    print("Não há alunos aprovados");
  }

}//Não está funcionando como deveria 🥲