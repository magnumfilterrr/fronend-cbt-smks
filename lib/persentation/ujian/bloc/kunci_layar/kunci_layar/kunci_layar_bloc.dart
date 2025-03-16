import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kunci_layar_event.dart';
part 'kunci_layar_state.dart';
part 'kunci_layar_bloc.freezed.dart';

class KunciLayarBloc extends Bloc<KunciLayarEvent, KunciLayarState> {
  KunciLayarBloc() : super(const _Initial()) {
    on<_KunciLayar>(_aktifKunci);
    on<_KunciLayarCancel>(_nonAktifKunci);
  }
    Future<void> _aktifKunci(_KunciLayar event, Emitter<KunciLayarState> emit) async {
      await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
      emit(const KunciLayarState.aktif());
    }

    Future<void> _nonAktifKunci(_KunciLayarCancel event, Emitter<KunciLayarState> emit) async {
      await FlutterWindowManager.clearFlags(FlutterWindowManager.FLAG_SECURE);
      emit(const KunciLayarState.tidakAktif());
    }
  }

