import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/main.dart';

void main() {
  test('Calculates IMC correctly', () {
    final calculator = MyHomePage();

    calculator.altura = 1.75; // Altura em metros
    calculator.peso = 70.0; // Peso em quilogramas

    calculator.calcularIMC();

    expect(calculator.resultado,
        closeTo(22.86, 0.01)); // O IMC esperado é aproximadamente 22.86
  });
}
