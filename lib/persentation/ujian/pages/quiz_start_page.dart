import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ujian_online_smks/core/assets/assets.gen.dart';
import 'package:ujian_online_smks/core/components/custom_scaffold.dart';
import 'package:ujian_online_smks/core/constants/colors.dart';
import 'package:ujian_online_smks/core/extensions/build_context_ext.dart';
import 'package:ujian_online_smks/data/models/response/ujian_response_model.dart';
import 'package:ujian_online_smks/persentation/ujian/bloc/daftar_soal/daftar_soal_bloc.dart';
import 'package:ujian_online_smks/persentation/ujian/bloc/ujian/ujian_bloc.dart';
import 'package:ujian_online_smks/persentation/ujian/pages/quiz_finish_page.dart';
import 'package:ujian_online_smks/persentation/ujian/widgets/quiz_multiple_choice.dart';

class QuizStartPage extends StatefulWidget {
  final Ujian data;

  const QuizStartPage({
    super.key,
    required this.data,
  });

  @override
  State<QuizStartPage> createState() => _QuizStartPageState();
}

class _QuizStartPageState extends State<QuizStartPage> {
  Timer? _timer;
  int remainingSeconds = 0;

  @override
  void initState() {
    context.read<UjianBloc>().add(UjianEvent.getAllUjian());
    super.initState();
  }

  void startTimer(int durationInMinutes) {
    remainingSeconds = durationInMinutes * 60;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (remainingSeconds > 0) {
        setState(() {
          remainingSeconds--;
        });
      } else {
        timer.cancel();
        showTimeUpDialog();
      }
    });
  }

  void showTimeUpDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Waktu Habis'),
        content: const Text(
            'Waktu Anda Telah Habis, Silahkan Klik Tombol Selesai Untuk Melihat Hasil'),
        actions: [
          TextButton(
            onPressed: () {
              context.pushReplacement(QuizFinishPage(
                data: widget.data,
                timeRemaining: 0,
              ));
            },
            child: const Text('Selesai'),
          ),
        ],
      ),
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
      appBarTitle: Text(widget.data.judulUjian),
      actions: [
        Assets.icons.clock.image(width: 24.0),
        const SizedBox(width: 8.0),
        BlocListener<UjianBloc, UjianState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              success: (e) {
                if (widget.data.durasiUjian > 0) {
                  startTimer(widget.data.durasiUjian);
                  context.read<DaftarSoalBloc>().add(
                      DaftarSoalEvent.getDafatarSoal(
                          widget.data.id.toString()));
                } else {
                  showTimeUpDialog();
                }
              },
            );
          },
          child: Text(
            getFormattedTime(),
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            context.pushReplacement(QuizFinishPage(
              data: widget.data,
              timeRemaining: remainingSeconds,
            ));
          },
          icon: const Icon(
            Icons.done,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 24.0),
      ],
      body: ListView(
        padding: const EdgeInsets.all(30.0),
        children: [
          const Text(
            'Pertanyaan',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          BlocBuilder<DaftarSoalBloc, DaftarSoalState>(
            builder: (context, state) {
              return state.maybeMap(
                orElse: () => const SizedBox(),
                success: (e) {
                  return Row(
                    children: [
                      Flexible(
                        child: LinearProgressIndicator(
                          value: (e.index + 1) / e.data.length,
                          color: AppColors.primary,
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Text(
                        '${e.index + 1}/${e.data.length}',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          const SizedBox(height: 16.0),
          QuizMultipleChoice(
            id: widget.data.id.toString(),
          ),
        ],
      ),
    );
  }
}
