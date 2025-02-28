part of 'soal_bloc.dart';

@freezed
class SoalState with _$SoalState {
  const factory SoalState.initial() = _Initial;
  const factory SoalState.loading() = _Loading;
  const factory SoalState.success(SoalResponseModel response) = _Success;
  const factory SoalState.error(String message) = _Error;
  const factory SoalState.notFound() = _NotFound;
}
