import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage {
  AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );

  Future<void> storeToken(String token) async {
    final storage = FlutterSecureStorage(aOptions: _getAndroidOptions());
    await storage.write(key: 'token', value: token);
  }

  Future<String> getToken() async {
    final storage = FlutterSecureStorage(aOptions: _getAndroidOptions());
    return await storage.read(key: 'token') ?? '';
  }
}
