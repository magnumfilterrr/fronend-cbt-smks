import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ujian_online_smks/core/assets/assets.gen.dart';
import 'package:ujian_online_smks/core/components/custom_scaffold.dart';
import 'package:ujian_online_smks/core/constants/colors.dart';
import 'package:ujian_online_smks/core/extensions/build_context_ext.dart';
import 'package:ujian_online_smks/data/models/response/ujian_response_model.dart';
import 'package:ujian_online_smks/persentation/ujian/bloc/daftar_soal/daftar_soal_bloc.dart';
import 'package:ujian_online_smks/persentation/ujian/bloc/jawaban/jawaban_bloc.dart';
import 'package:ujian_online_smks/persentation/ujian/bloc/ujian/ujian_bloc.dart';
import 'package:ujian_online_smks/persentation/ujian/widgets/quiz_multiple_choice.dart';
import 'package:ujian_online_smks/persentation/ujian/widgets/quiz_result_last.dart';

class QuizStartPage extends StatefulWidget {
  final Ujian data;

  const QuizStartPage({super.key, required this.data});

  @override
  State<QuizStartPage> createState() => _QuizStartPageState();
}

class _QuizStartPageState extends State<QuizStartPage> {
  Timer? _timer;
  int remainingSeconds = 0;

  @override
  void initState() {
    super.initState();
    context.read<UjianBloc>().add(const UjianEvent.getAllUjian());
  }

  void startTimer(int durationInMinutes) {
    remainingSeconds = durationInMinutes * 60;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (remainingSeconds > 0) {
        if (mounted) {
          setState(() => remainingSeconds--);
        }
      } else {
        _timer?.cancel();
        if (mounted) showTimeUpDialog();
      }
    });
  }

  void showTimeUpDialog() {
    _saveRemainingAnswers();
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Waktu Habis'),
        content: const Text(
            'Waktu Anda Telah Habis, Silahkan Klik Tombol Selesai Untuk Melihat Hasil'),
        actions: [
          TextButton(
            onPressed: () => _calculateAndShowResult(),
            child: const Text('Selesai'),
          ),
        ],
      ),
    );
  }

  void _calculateAndShowResult() {
    final daftarSoalState = context.read<DaftarSoalBloc>().state;

    daftarSoalState.maybeWhen(
      success: (semuaSoal, _, __, ___) {
        final jawabanList = context.read<JawabanBloc>().jawabanList;
        int jawabanBenar = semuaSoal
            .where((soal) => jawabanList.any((jawaban) =>
                jawaban['soal_id'] == soal.id.toString() &&
                jawaban['jawaban'] == soal.kunciJawaban))
            .length;

        double nilai = (jawabanBenar / semuaSoal.length) * 100;
        _navigateToResult(nilai, jawabanBenar, semuaSoal.length);
      },
      orElse: () => _navigateToResult(0, 0, 0),
    );
  }

  void _navigateToResult(double nilai, int jawabanBenar, int totalSoal) {
    context.pushReplacement(QuizResultLast(
      id: widget.data.id.toString(),
      nilai: nilai,
      jawabanBenar: jawabanBenar.toDouble(),
      totalSoal: totalSoal.toDouble(),
    ));
  }

  void _saveRemainingAnswers() {
    final daftarSoalState = context.read<DaftarSoalBloc>().state;

    daftarSoalState.maybeWhen(
      success: (soalList, _, __, ___) {
        final jawabanBloc = context.read<JawabanBloc>();
        for (var soal in soalList) {
          if (!jawabanBloc.jawabanList
              .any((jawaban) => jawaban['soal_id'] == soal.id.toString())) {
            jawabanBloc.add(JawabanEvent.addJawaban(
                soalId: soal.id.toString(), jawaban: 'e'));
          }
        }
        jawabanBloc.add(JawabanEvent.setAnswer(widget.data.id.toString()));
      },
      orElse: () {},
    );
  }

  String getFormattedTime() {
    int minutes = remainingSeconds ~/ 60;
    int seconds = remainingSeconds % 60;
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      showBackButton: false,
      appBarTitle: Text(widget.data.judulUjian),
      actions: [
        Assets.icons.clock.image(width: 24.0),
        const SizedBox(width: 8.0),
        BlocListener<UjianBloc, UjianState>(
          listener: (context, state) {
            state.maybeWhen(
              success: (_) {
                if (widget.data.durasiUjian > 0) {
                  startTimer(widget.data.durasiUjian);
                  context.read<DaftarSoalBloc>().add(
                      DaftarSoalEvent.getDafatarSoal(
                          widget.data.id.toString()));
                } else {
                  showTimeUpDialog();
                }
              },
              orElse: () {},
            );
          },
          child: Text(
            getFormattedTime(),
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(width: 24.0),
      ],
      body: ListView(
        padding: const EdgeInsets.all(30.0),
        children: [
          const Text('Pertanyaan', style: TextStyle(fontSize: 18)),
          BlocBuilder<DaftarSoalBloc, DaftarSoalState>(
            builder: (context, state) {
              return state.maybeMap(
                orElse: () => const SizedBox(),
                success: (e) => Row(
                  children: [
                    Flexible(
                      child: LinearProgressIndicator(
                        value: (e.index + 1) / e.data.length,
                        color: AppColors.primary,
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Text('${e.index + 1}/${e.data.length}',
                        style: const TextStyle(fontSize: 16)),
                  ],
                ),
              );
            },
          ),
          const SizedBox(height: 16.0),
          QuizMultipleChoice(id: widget.data.id.toString()),
        ],
      ),
    );
  }
}
