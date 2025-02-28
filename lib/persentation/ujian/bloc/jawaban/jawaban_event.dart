part of 'jawaban_bloc.dart';

@freezed
class JawabanEvent with _$JawabanEvent {
  const factory JawabanEvent.started() = _Started;
  const factory JawabanEvent.addJawaban({
    required String soalId,
    required String jawaban,
  }) = _AddJawaban;
  const factory JawabanEvent.setAnswer(String id) = _SetAnswer;
}