import 'dart:core';
import 'package:password_dumb/password_dumb.dart';

void main() async {
  const String password = '12345678';
  final bool isValid = await PasswordDumb.validate(password);

  print('Password is dumb? ' + (isValid ? 'yes' : 'no'));

  final String strongPassword = PasswordGenerate.getHashedPassword(length: 12);

  print('Password generated: $strongPassword');
}
