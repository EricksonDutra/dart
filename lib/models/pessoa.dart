// ignore_for_file: public_member_api_docs, sort_constructors_first
class Pessoa {
  String? nome;
  double? peso;
  double? altura;

  Pessoa({this.nome, this.peso, this.altura});

  void setNome(String nome){
    this.nome = nome;
  }
  void setPeso(double peso){
    this.peso = peso;
  }
  void setAltura(double altura){
    this.altura = altura;
  }

  @override
  String toString() => 'Pessoa(nome: $nome, peso: $peso, altura: $altura)';
}
