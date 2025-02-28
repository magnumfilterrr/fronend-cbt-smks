import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ujian_online_smks/data/datasources/soal_remote_datasourece.dart';

part 'hitung_nilai_bloc.freezed.dart';
part 'hitung_nilai_event.dart';
part 'hitung_nilai_state.dart';

class HitungNilaiBloc extends Bloc<HitungNilaiEvent, HitungNilaiState> {
  final SoalRemoteDataSource soalRemoteDataSource;

  HitungNilaiBloc(this.soalRemoteDataSource)
      : super(const HitungNilaiState.initial()) {
    on<_GetNilai>((event, emit) async {
      emit(const HitungNilaiState.loading());
      final result =
          await soalRemoteDataSource.hitungNilai(event.id, event.jawabanList);
      result.fold(
        (error) => emit(HitungNilaiState.error(error)),
        (data) => emit(HitungNilaiState.success(
            nilai: data.data.nilai,
            jawabanBenar: data.data.jawabanBenar,
            totalSoal: data.data.totalSoal)),
      );
    });
  }
}
