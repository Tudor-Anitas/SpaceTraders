import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage {
  Future<void> saveAgentToken(String token) async {
    const storage = FlutterSecureStorage();
    await storage.write(key: 'agentToken', value: token);
  }

  Future<String> getAgentToken() async {
    const storage = FlutterSecureStorage();
    return await storage.read(key: 'agentToken') ?? '';
  }
}
