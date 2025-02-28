part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.started() = _Started;
  const factory RegisterEvent.register(
    RegisterRequestModel data,
  ) = _Register;
  // const factory RegisterEvent.loaded(AuthResponseModel authResponseModel) = _Succes;
  // const factory RegisterEvent.loading() = _Loading;
  // const factory RegisterEvent.error({required String message}) = _Error;
}
