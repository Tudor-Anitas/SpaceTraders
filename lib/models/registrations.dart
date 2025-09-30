import 'package:freezed_annotation/freezed_annotation.dart';

part 'registrations.freezed.dart';
part 'registrations.g.dart';

@freezed
class Registration with _$Registration {
  const factory Registration({
    @Default('') String name,
    @Default('') String factionSymbol,
    @Default('') String role,
  }) = _Registration;

  factory Registration.fromJson(Map<String, dynamic> json) => _$RegistrationFromJson(json);
}
