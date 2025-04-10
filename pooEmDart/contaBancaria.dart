class ContaBancaria {
  String? _titular;
  double? _saldo;

  //Construtores
  ContaBancaria(){
    _titular = " ";
    _saldo = 0;
  }

  ContaBancaria.nomeado(this._titular, this._saldo);

  //Getters e setters
  String get titular => _titular!;

  set titular(String titular){
    _titular = titular;
  }

  double get saldo => _saldo!;

  set saldo(double value){
    if(value < 0){
      print("Não é possível registrar um saldo negativo.");
    }
    _saldo = value;
  }
}

void main(){
  ContaBancaria contaBancaria1 = new ContaBancaria.nomeado("José Azevedo", -5000);

  print('''${contaBancaria1.titular} tem ${contaBancaria1.saldo} reais na conta.''');
}