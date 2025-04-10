class Funcionario{
  String? _nome;
  double? _salario;

  //Construtores
  Funcionario(){
    _nome = " ";
    _salario = 0;
  }

  Funcionario.nomeado(this._nome, this._salario);

  //Getters e setters
  String get nome => _nome!;

  set nome(String nome){
    _nome = nome;
  }

  double get salario => _salario!;

  set salario(double salario){
    if(salario < 0){
    print("Não é possível ter salário negativo.");
  } _salario = salario;
  }
}

void main(){
  Funcionario funcionario1 = new Funcionario.nomeado("Joana", -3500);

  print("${funcionario1._nome} possui um salário de ${funcionario1.salario} reais.");
  //Ao colocar um valor negativo, não aconteceu nada 🫠
}