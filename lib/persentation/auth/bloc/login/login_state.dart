part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.success(AuthResponseModel authResponseModel) =
      _Success;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.error({required String message}) = _Error;
}
