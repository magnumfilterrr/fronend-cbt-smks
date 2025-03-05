part of 'ujian_bloc.dart';

@freezed
class UjianEvent with _$UjianEvent {
  const factory UjianEvent.started() = _Started;
  const factory UjianEvent.getAllUjian() = _GetAllUjian;
  const factory UjianEvent.checkStatus(String id) = _CheckStatus;
  const factory UjianEvent.updateStatusUjian(String id, String status) = _UpdateStatusUjian;
}
