import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ujian_online_smks/data/datasources/soal_remote_datasourece.dart';

part 'jawaban_bloc.freezed.dart';
part 'jawaban_event.dart';
part 'jawaban_state.dart';

class JawabanBloc extends Bloc<JawabanEvent, JawabanState> {
  final SoalRemoteDataSource soalRemoteDataSource;
  final List<Map<String, dynamic>> jawabanList = [];

  JawabanBloc(this.soalRemoteDataSource) : super(const JawabanState.initial()) {
    on<_Started>(_onStarted);
    on<_AddJawaban>(_onAddJawaban);
    on<_SetAnswer>(_onSetAnswer);
  }

  void _onStarted(
    _Started event,
    Emitter<JawabanState> emit,
  ) {
    jawabanList.clear();
    emit(const JawabanState.initial());
  }

  void _onAddJawaban(
    _AddJawaban event,
    Emitter<JawabanState> emit,
  ) {
    // Check if answer already exists for this soal_id
    final existingIndex = jawabanList.indexWhere(
      (jawaban) => jawaban['soal_id'] == event.soalId,
    );

    if (existingIndex != -1) {
      // Update existing answer
      jawabanList[existingIndex] = {
        'soal_id': event.soalId,
        'jawaban': event.jawaban,
      };
    } else {
      // Add new answer
      jawabanList.add({
        'soal_id': event.soalId,
        'jawaban': event.jawaban,
      });
    }

    emit(JawabanState.success(jawabanList));
  }

  Future<void> _onSetAnswer(
    _SetAnswer event,
    Emitter<JawabanState> emit,
  ) async {
    emit(const JawabanState.loading());

    try {
      final result = await soalRemoteDataSource.sendJawaban(
        event.id,
        jawabanList,
      );

      result.fold(
        (error) {
          print('Error sending answers: $error');
          emit(JawabanState.error(error));
        },
        (data) {
          print('Answer success: $data');
          emit(JawabanState.answered(data));
        },
      );
    } catch (e) {
      print('Exception sending answers: $e');
      emit(JawabanState.error(e.toString()));
    }
  }
}
