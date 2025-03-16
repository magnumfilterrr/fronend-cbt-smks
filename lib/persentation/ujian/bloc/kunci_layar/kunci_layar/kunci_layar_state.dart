part of 'kunci_layar_bloc.dart';

@freezed
class KunciLayarState with _$KunciLayarState {
  const factory KunciLayarState.initial() = _Initial;
  const factory KunciLayarState.aktif() = _KunciAktif;
  const factory KunciLayarState.tidakAktif() = _KunciTidakAktif;
}
