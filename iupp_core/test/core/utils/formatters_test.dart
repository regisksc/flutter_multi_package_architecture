import 'package:flutter_test/flutter_test.dart';
import 'package:iupp_core/core.dart';

void main() {
  group('CPF formatter', () {
    test('should mask CPF string correctly', () {
      expect(cpfFormater.maskText('00000000000'), '000.000.000-00');
    });

    test('should unmask CPF string correctly', () {
      expect(cpfFormater.unmaskText('000.000.000-00'), '00000000000');
    });
  });

  group('Phone formatter', () {
    test('should mask phone string correctly', () {
      expect(phoneFormater.maskText('00000000000'), '(00) 00000-0000');
    });

    test('should unmask phone string correctly', () {
      expect(phoneFormater.unmaskText('(00) 00000-0000'), '00000000000');
    });
  });

  group('Cep formatter', () {
    test('should mask cep string correctly', () {
      expect(cepFormater.maskText('00000000'), '00000-000');
    });

    test('should unmask cep string correctly', () {
      expect(cepFormater.unmaskText('00000-000'), '00000000');
    });
  });
}
