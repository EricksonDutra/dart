import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  
  static String lerStringComTexto(String texto){
    print(texto);
    return lerString();
  }

  static String lerString(){
    return stdin.readLineSync(encoding: utf8) ?? '';
  }

  static double? lerDoubleComTexto(String texto){
    print(texto);
    return lerDouble();
  }

  static double? lerDouble(){
    var num = lerString();
    try {
      return double.parse(num);
    } catch (e){
      return null;
    }
  }
}