import 'package:freezed_annotation/freezed_annotation.dart';

part 'survey_deposit.freezed.dart';
part 'survey_deposit.g.dart';

@freezed
class SurveyDeposit with _$SurveyDeposit {
  const factory SurveyDeposit({
    @Default('') String symbol,
  }) = _SurveyDeposit;

  factory SurveyDeposit.fromJson(Map<String, dynamic> json) => _$SurveyDepositFromJson(json);
}
