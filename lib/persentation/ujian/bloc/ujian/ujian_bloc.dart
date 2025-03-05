import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ujian_online_smks/data/datasources/ujian_remote_datasource.dart';
import 'package:ujian_online_smks/data/models/response/ujian_response_model.dart';

part 'ujian_bloc.freezed.dart';
part 'ujian_event.dart';
part 'ujian_state.dart';

class UjianBloc extends Bloc<UjianEvent, UjianState> {
  final UjianRemoteDataSource ujianRemoteDataSource;
  UjianBloc(this.ujianRemoteDataSource) : super(const _Initial()) {
    // on<_UpdateStatusUjian>(_onUpdateStatusUjian);
    // on<_CheckStatus>(_onCheckStatus);
    on<UjianEvent>((event, emit) async {
      emit(const UjianState.loading());
      final response = await ujianRemoteDataSource.getUjian();
      response.fold((l) => emit(_Error(l)), (r) => emit(_Success(r)));
    });
  }


}
