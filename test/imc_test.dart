import 'package:imc/imc.dart';
import 'package:test/test.dart';

void main() {
  group('Testes das funções de IMC', ()  {
    test('Entrada de texto válida', () {
      final input = '''
                      Erickson
                      1.70
                      70
                    ''';
                    final expectedOutput = '''
Nome: Erickson - IMC: 24.22
''';
expect(() => testImc(input), prints(expectedOutput));
    });
  });
}

void testImc(String input) {
  final oldIn = _stdin;
  _stdin = Stream<List<int>>.fromIterable(input.codeUnits.map((e) => [e]));
  imc();
  _stdin = oldIn;
}

Stream<List<int>>? _stdin;