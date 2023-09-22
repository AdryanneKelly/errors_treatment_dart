import 'package:errors_treatment_dart/models/Aluno.dart';
import 'package:errors_treatment_dart/models/console_utils.dart';

void execute() {
  print("Bem vindo ao Sistema de Notas!");
  String nome =
      ConsoleUtils.lerStringComTexto("Digite o nome do Aluno:");
  var aluno = Aluno(nome);
  double? nota;

  do {
    nota = ConsoleUtils.lerDoubleComTextoComSaida("Digite a nota ou S para sair: ", "S");
    if (nota != null) {
      aluno.addNotas(nota);
    }
  } while (nota != null);

  print(aluno.getNotas());
}
