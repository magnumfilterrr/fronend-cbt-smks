import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ujian_online_smks/data/datasources/auth_remote_datasource.dart';
import 'package:ujian_online_smks/data/models/request/login_request_model.dart';
import 'package:ujian_online_smks/data/models/response/auth_response_model.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const _Initial()) {
    on<_Login>((event, emit) async {
      emit(const _Loading());
      final response = await AuthRemoteDataSource().login(event.data);
      response.fold((l) => emit(_Error(message: l)), (r) => emit(_Success(r)));
    });
  }
}
