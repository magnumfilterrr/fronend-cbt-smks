import 'dart:io';
import 'package:flutter/material.dart';
// import 'package:kiosk_mode/kiosk_mode.dart';
import 'package:flutter/foundation.dart';
import 'package:ujian_online_smks/core/components/buttons.dart';
import 'package:ujian_online_smks/core/components/custom_scaffold.dart';
import 'package:ujian_online_smks/core/constants/colors.dart';
import 'package:ujian_online_smks/core/extensions/build_context_ext.dart';
import 'package:ujian_online_smks/persentation/ujian/widgets/quiz_result_last.dart';

class QuizResultPage extends StatelessWidget {
  final String id;
  final double nilai;
  final double jawabanBenar;
  final double totalSoal;
  final int remainingSeconds;

  const QuizResultPage({
    super.key,
    required this.id,
    required this.nilai,
    required this.jawabanBenar,
    required this.totalSoal,
    required this.remainingSeconds,
  });

  @override
  Widget build(BuildContext context) {
    const paddingHorizontalSize = 16.0;
    const paddingHorizontal =
        EdgeInsets.symmetric(horizontal: paddingHorizontalSize);

    return CustomScaffold(
      automaticallyImplyLeading: false,
      showBackButton: false,
      appBarTitle: const Text('Hasil Ujian'),
      body: WillPopScope(
        onWillPop: () async => false,
        child: ListView(
          children: [
            const SizedBox(height: 30.0),
            Padding(
              padding: paddingHorizontal,
              child: QuizResultLast(
                id: id,
                nilai: nilai,
                jawabanBenar: jawabanBenar,
                totalSoal: totalSoal,
                // remainingSeconds: remainingSeconds,
              ),
            ),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: AppColors.white,
        padding: const EdgeInsets.all(16.0),
        child: Button.filled(
          onPressed: () async {
            try {
              // Jika bukan Web dan Android, hentikan Kiosk Mode
              if (!kIsWeb && Platform.isAndroid) {
                // await stopKioskMode(); // Uncomment jika digunakan
              }

              if (context.mounted) {
                context.popToRoot();
              }
            } catch (e) {
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Terjadi kesalahan: $e'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            }
          },
          label: 'Kembali ke Beranda',
        ),
      ),
    );
  }
}
