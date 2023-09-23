import 'dart:io';

import 'package:errors_treatment_dart/exception/nome_invalido_exception.dart';
import 'package:errors_treatment_dart/models/aluno.dart';
import 'package:errors_treatment_dart/models/console_utils.dart';

void execute() {
  print("Bem vindo ao Sistema de Notas!");
  String nome = ConsoleUtils.lerStringComTexto("Digite o nome do Aluno:");

  try {
    if (nome.trim() == "") {
      throw NomeInvalidoException();
    }
  } on NomeInvalidoException {
    nome = "Nome padrão";
    print(NomeInvalidoException);
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }

  var aluno = Aluno(nome);
  double? nota;

  do {
    nota = ConsoleUtils.lerDoubleComTextoComSaida(
        "Digite a nota ou S para sair: ", "S");
    if (nota != null) {
      aluno.addNotas(nota);
    }
  } while (nota != null);

  print("As notas digitadas foram: ${aluno.getNotas()}");

  if (aluno.aprovado(7)) {
    print(
        "O aluno ${aluno.getNome()} foi aprovado com a nota: ${aluno.retornaMedia()}");
  } else {
    print("O aluno ${aluno.getNome()} foi reprovado");
  }
}
