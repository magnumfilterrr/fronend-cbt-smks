part of 'hitung_nilai_bloc.dart';

@freezed
class HitungNilaiEvent with _$HitungNilaiEvent {
  const factory HitungNilaiEvent.started() = _Started;
  const factory HitungNilaiEvent.getNilai(String id, List<Map<String, dynamic>> jawabanList) = _GetNilai;
}