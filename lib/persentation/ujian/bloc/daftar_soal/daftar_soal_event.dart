part of 'daftar_soal_bloc.dart';

@freezed
class DaftarSoalEvent with _$DaftarSoalEvent {
  const factory DaftarSoalEvent.started(String ujianId) = _Started;
  const factory DaftarSoalEvent.getDafatarSoal(String ujianId) =
      _GetDaftarSoal;
  const factory DaftarSoalEvent.nextSoal() = _NextSoal;
  const factory DaftarSoalEvent.prevSoal() = _PrevSoal;
}

