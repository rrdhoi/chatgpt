import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_answer.freezed.dart';

@freezed
class QuestionAnswer with _$QuestionAnswer {
  const factory QuestionAnswer({
    required String question,
    required StringBuffer answer,
  }) = _QuestionAnswer;
}
