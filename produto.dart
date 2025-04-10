class Produto{
  String? nome;
  double? preco;

  //Construtores
  Produto(){
    nome = " ";
    preco = 0;
  }

  Produto.nomeado(this.nome, this.preco);
}
  void main(){
    //Primeiro produto usando o construtor padrão
    Produto produto = new Produto();
    produto.nome = "Lápis";
    produto.preco = 4.99;

    //Segundo produto usando o construtor nomeado
    Produto produto1 = new Produto.nomeado("Caneta", 5);

    print('''PRODUTOS: 
    ${produto.nome} -> ${produto.preco}.
    ${produto1.nome} -> ${produto1.preco}.''');
  }