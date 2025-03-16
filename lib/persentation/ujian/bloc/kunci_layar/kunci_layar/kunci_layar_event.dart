part of 'kunci_layar_bloc.dart';

@freezed
class KunciLayarEvent with _$KunciLayarEvent {
  const factory KunciLayarEvent.started() = _Started;
  const factory KunciLayarEvent.kunciLayar() = _KunciLayar;
  const factory KunciLayarEvent.kunciLayarCancel() = _KunciLayarCancel;
}