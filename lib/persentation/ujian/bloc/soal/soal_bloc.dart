
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:ujian_online_smks/data/datasources/soal_remote_datasourece.dart';
import 'package:ujian_online_smks/data/models/response/soal_respoonse_model.dart';

part 'soal_bloc.freezed.dart';
part 'soal_event.dart';
part 'soal_state.dart';

class SoalBloc extends Bloc<SoalEvent, SoalState> {
  final SoalRemoteDataSource soalRemoteDataSource;
  SoalBloc(
    this.soalRemoteDataSource,
  ) : super(const _Initial()) {
    on<_GetUjianId>((event, emit) async {
      emit(const _Loading());
      final response = await soalRemoteDataSource.getUjianId(event.id);
      response.fold((l) => emit(_Error(l)), (r) {
        if (r.data.isEmpty) {
          emit(const _NotFound());
        } else {
          emit(_Success(r));
        }
      });
    });
  }
}
