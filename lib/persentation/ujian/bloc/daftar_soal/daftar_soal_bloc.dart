import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ujian_online_smks/data/datasources/soal_remote_datasourece.dart';
import 'package:ujian_online_smks/data/models/response/soal_respoonse_model.dart';

part 'daftar_soal_bloc.freezed.dart';
part 'daftar_soal_event.dart';
part 'daftar_soal_state.dart';

class DaftarSoalBloc extends Bloc<DaftarSoalEvent, DaftarSoalState> {
  final SoalRemoteDataSource soalRemoteDataSource;
  int index = 0;

  DaftarSoalBloc(
    this.soalRemoteDataSource,
  ) : super(const DaftarSoalState.initial()) {
    on<_Started>(_onStarted);
    on<_GetDaftarSoal>(_onGetDaftarSoal);
    on<_NextSoal>(_onNextSoal);
    on<_PrevSoal>(_onPrevSoal);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<DaftarSoalState> emit,
  ) async {
    emit(const DaftarSoalState.loading());

    try {
      final response = await soalRemoteDataSource.getUjianId(event.ujianId);
      response.fold(
        (error) => emit(DaftarSoalState.error(error)),
        (soalResponse) {
          final soalList = soalResponse.data;
          emit(DaftarSoalState.success(
            soalList,
            0,
            soalList.length > 1,
            false,
          ));
        },
      );
    } catch (e) {
      emit(DaftarSoalState.error(e.toString()));
    }
  }

  FutureOr<void> _onGetDaftarSoal(
    _GetDaftarSoal event,
    Emitter<DaftarSoalState> emit,
  ) async {
    emit(const DaftarSoalState.loading()); // Set state ke loading

    try {
      // Ambil data soal dari remote data source
      final response = await soalRemoteDataSource.getUjianId(event.ujianId);
      print('Response from API: $response');
      response.fold(
        (error) => emit(
            DaftarSoalState.error(error)), // Jika gagal, set state ke error
        (soalResponse) {
          print('Parsed Response: $soalResponse');
          final soalList = soalResponse.data; // Ambil list soal dari response
          emit(DaftarSoalState.success(soalList, 0, soalList.length > 1,
              false)); // Set state ke successt state ke success
        },
      );
    } catch (e) {
      print('Error detail: $e');
      emit(DaftarSoalState.error(e.toString())); // Tangani error
    }
  }

  FutureOr<void> _onNextSoal(
    _NextSoal event,
    Emitter<DaftarSoalState> emit,
  ) {
    state.maybeWhen(
      success: (data, currentIndex, isNext, isPrev) {
        if (isNext) {
          final newIndex = currentIndex + 1;
          emit(DaftarSoalState.success(
            data,
            newIndex,
            data.length > newIndex + 1, // Cek apakah ada soal berikutnya
            newIndex > 0,
          )); // Pindah ke soal berikutnya
        }
      },
      orElse: () {},
    );
  }

  FutureOr<void> _onPrevSoal(_PrevSoal event, Emitter<DaftarSoalState> emit) {
    state.maybeWhen(
      success: (data, currentIndex, isNext, isPrev) {
        if (isPrev && currentIndex > 0) {
          final newIndex = currentIndex - 1;
          emit(DaftarSoalState.success(
            data,
            newIndex,
            true, // Bisa maju ke soal berikutnya
            newIndex > 0, // Cek apakah masih bisa kembali ke soal sebelumnya
          ));
        }
      },
      orElse: () {},
    );
  }
}
