import 'package:envied/envied.dart';

part 'envied.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'ACCOUNT_TOKEN')
  static const String accountToken = _Env.accountToken;
}
