import 'package:encrypt/encrypt.dart' as encrypt;

class EncryptService {
  Future<String> encryptAES(String password, String generatedToken) async {
    var tempToken1 = generatedToken.substring(0, 16);

    final keys = encrypt.Key.fromUtf8(tempToken1);
    final iv = encrypt.IV.fromLength(16);
    final encrypted =
        encrypt.Encrypter(encrypt.AES(keys, mode: encrypt.AESMode.cbc));
    var encryptor = encrypted.encrypt(password, iv: iv);
    return encryptor.base64.toString();
  }
}
