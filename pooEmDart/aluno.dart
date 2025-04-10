class Aluno{
  String? nome;
  double? nota01;
  double? nota02;

  Aluno(){
    nome = " ";
    nota01 = 0;
    nota02 = 0;
  }

  Aluno.nomeado(this.nome, this.nota01, this.nota02);
}

void media(){
  double? media;
}

void main(){
  Aluno aluno01 = new Aluno.nomeado("Ana", 9.5, 10);
  Aluno aluno02 = new Aluno.nomeado("Maria", 9, 10);
  Aluno aluno03 = new Aluno.nomeado("João", 8.5, 9);
  Aluno aluno04 = new Aluno.nomeado("José", 9.5, 9);
  Aluno aluno05 = new Aluno.nomeado("Melissa", 9.5, 10);

  print("Estudantes aprovados: ");
}