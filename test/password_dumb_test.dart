import 'package:flutter_test/flutter_test.dart';
import 'package:password_dumb/password_dumb.dart';

void main() {
  final List<String> validPassword = [
    "w2\$EVa.B",
    ";VxA5Y?<",
    "[sB5fs#X",
    "<H}Np@9W",
    "R&e4N/&@"
  ];
  final List<String> dumbPassword = [
    '123456',
    'password',
    '12345678',
    'qwerty',
    '123456789'
  ];
  test('Validate valid password', () {
    for (var actual in validPassword) {
      expect(PasswordDumb.validate(actual), equals(false),
          reason: 'Password: ' + actual.toString());
    }
  });

  test('Validate dumb Password', () {
    for (var actual in dumbPassword) {
      expect(PasswordDumb.validate(actual), equals(true),
          reason: 'Password: ' + actual);
    }
  });
}
