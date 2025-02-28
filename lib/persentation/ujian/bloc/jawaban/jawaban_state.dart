part of 'jawaban_bloc.dart';

@freezed
class JawabanState with _$JawabanState {
  const factory JawabanState.initial() = _Initial;
  const factory JawabanState.loading() = _Loading;
  const factory JawabanState.success(List<Map<String, dynamic>> jawabanList) =
      _Success;
  const factory JawabanState.error(String message) = _Error;
  const factory JawabanState.answered(Map<String, dynamic> data) = _Answered;
}
