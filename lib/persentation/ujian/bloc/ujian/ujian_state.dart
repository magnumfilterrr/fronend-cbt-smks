part of 'ujian_bloc.dart';

@freezed
class UjianState with _$UjianState {
  const factory UjianState.initial() = _Initial;
  const factory UjianState.loading() = _Loading;
  const factory UjianState.success(UjianResponseModel ujian) = _Success;
  const factory UjianState.error(String message) = _Error;
  const factory UjianState.statusLoaded(String status) = _StatusLoaded;
}
