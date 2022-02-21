import 'dart:math';

class PasswordGenerate {
  static String getPool({type = 'alnum'}) {
    String pool;
    switch (type) {
      case 'alnum':
        pool = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        break;
      case 'alpha':
        pool = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        break;
      case 'hexdec':
        pool = '0123456789abcdef';
        break;
      case 'numeric':
        pool = '0123456789';
        break;
      case 'nozero':
        pool = '123456789';
        break;
      case 'distinct':
        pool = '2345679ACDEFHJKLMNPRSTUVWXYZ';
        break;
      default:
        pool = type;
        break;
    }

    return pool;
  }

  static secureCrypt(min, max) {
    int range = max - min;

    if (range < 0) {
      return min; // not so random...
    }
    Random rng = Random();
    int rnd = rng.nextInt(range);

    return min + rnd;
  }

  static String getHashedPassword({length = 8}) {
    String password = "";
    int max = getPool().length;
    for (int i = 0; i < length; i++) {
      password += getPool()[secureCrypt(0, max)];
    }

    return password;
  }
}
