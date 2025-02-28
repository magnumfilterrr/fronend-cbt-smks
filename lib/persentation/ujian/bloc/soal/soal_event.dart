part of 'soal_bloc.dart';

@freezed
class SoalEvent with _$SoalEvent {
  const factory SoalEvent.started() = _Started;
  const factory SoalEvent.getUjianId(String id) = _GetUjianId;
}
