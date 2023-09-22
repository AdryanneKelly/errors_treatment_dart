class Aluno {
  String _nome = "";
  final List<double> _notas = [];

  Aluno(String nome) {
    _nome = nome;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  List<double> getNotas(){
    return _notas;
  }

  void addNotas(double nota){
    _notas.add(nota);
  }

  double retornaMedia(){
    var totalNotas = 0.0;
    for (var nota in _notas) {
      totalNotas += nota;
    }
    return totalNotas / _notas.length;
  }
}
