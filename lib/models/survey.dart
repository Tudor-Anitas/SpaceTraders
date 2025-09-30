import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_traders/models/survey_deposit.dart';

part 'survey.freezed.dart';
part 'survey.g.dart';

@freezed
class Survey with _$Survey {
  const factory Survey({
    @Default('') String signature,
    @Default('') String symbol,
    @Default([]) List<SurveyDeposit> deposits,
    @Default('') String expiration,
    @Default('') String size,
  }) = _Survey;

  factory Survey.fromJson(Map<String, dynamic> json) => _$SurveyFromJson(json);
}
