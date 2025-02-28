import 'package:flutter/material.dart';
import 'package:ujian_online_smks/core/assets/assets.gen.dart';
import 'package:ujian_online_smks/core/components/buttons.dart';
import 'package:ujian_online_smks/core/components/custom_scaffold.dart';
import 'package:ujian_online_smks/core/constants/colors.dart';
import 'package:ujian_online_smks/core/extensions/build_context_ext.dart';
import 'package:ujian_online_smks/data/models/response/ujian_response_model.dart';

class QuizFinishPage extends StatelessWidget {
  final Ujian data;
  final int timeRemaining;

  const QuizFinishPage({
    super.key,
    required this.data,
    required this.timeRemaining,
  });

  String getFormattedTime(int seconds) {
    int minutes = seconds ~/ 60;
    int secs = seconds % 60;
    return '$minutes:${secs.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBarTitle: Text(data.judulUjian),
      actions: [
        Assets.icons.clock.image(width: 24.0),
        const SizedBox(width: 8.0),
        Text(
          getFormattedTime(timeRemaining),
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 24.0),
      ],
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Assets.images.finish.image(),
              const Text(
                'Yeayy Finish!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 42.0),
              Button.filled(
                onPressed: () => context.popToRoot(),
                label: 'Kembali ke Beranda',
                color: AppColors.white,
                textColor: AppColors.primary,
              ),
              const SizedBox(height: 28.0),
              Button.filled(
                onPressed: () {
                  // Tambahkan navigasi ke halaman hasil ujian jika ada
                },
                label: 'Lihat Hasil',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
