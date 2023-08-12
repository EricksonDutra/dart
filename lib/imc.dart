import 'dart:io';

import 'package:imc/exception/nome_invalido.dart';

import 'exception/numero_invalido.dart';
import 'util.dart';

import 'models/pessoa.dart';

void imc() {
  Pessoa p1 = Pessoa();
  print("*** Calculadora de IMC ***");
  print('\n');
  print('-- Entre com os dados --');

  p1.setNome(ConsoleUtils.lerStringComTexto('Nome: '));
  try {
    if (p1.nome!.trim() == '') {
      throw NomeInvalidoException();
    }
  } on NomeInvalidoException {
    exit(0);
  }

  var alt = ConsoleUtils.lerDoubleComTexto('Altura: ');
  try {
    if (alt == null || alt.isNaN) {
      throw NaoENumero();
    }
    p1.setAltura(alt);
  } on NaoENumero {
    p1.setAltura(ConsoleUtils.lerDoubleComTexto('Altura: ')!);
  } catch (e) {
    print(e);
  }

  var peso = ConsoleUtils.lerDoubleComTexto('Peso: ');
  try {
    if (peso == null || peso.isNaN) {
      throw NaoENumero();
    }
    p1.setPeso(peso);
  } on NaoENumero {
    p1.setPeso(ConsoleUtils.lerDoubleComTexto('Peso: ')!);
  } catch (e) {
    print(e);
  }

  var imc = imc2(p1.altura, p1.peso);

  print("Nome: ${p1.nome} - IMC: ${imc.toStringAsFixed(2)}");
}

double imc2(altura, peso) {
  return peso / (altura * altura);
}
