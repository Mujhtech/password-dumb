import 'dart:convert';
import 'dart:core';
import 'package:password_dumb/data/password.dart';

class PasswordModel {
  String? text;
  PasswordModel({this.text});
}

class PasswordDumb {
  static Future<List<PasswordModel>> _getDumbPassword() async {
    List<PasswordModel> list = const LineSplitter()
        .convert(passwordData)
        .map((s) => PasswordModel(text: s))
        .toList();
    return list;
  }

  static Future<bool> validate(String password) async {
    if (password.isEmpty) {
      return false;
    }

    final passwordDumb = await _getDumbPassword();

    if (passwordDumb.isNotEmpty &&
        passwordDumb.where((item) => item.text == password).isNotEmpty) {
      return true;
    }

    return false;
  }
}
