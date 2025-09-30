import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment.freezed.dart';
part 'payment.g.dart';

@freezed
class Payment with _$Payment {
  const factory Payment({
    @Default(0) int onAccepted,
    @Default(0) int onFulfilled,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);
}
