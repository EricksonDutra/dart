class NaoENumero {
  String error() => "Não é número";

  @override
  String toString() {
    return "NaoENumero: ${error()}";
  }
}