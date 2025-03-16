import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kiosk_mode/kiosk_mode.dart';

import 'package:ujian_online_smks/core/components/buttons.dart';
import 'package:ujian_online_smks/core/components/custom_scaffold.dart';
import 'package:ujian_online_smks/core/constants/colors.dart';
import 'package:ujian_online_smks/core/extensions/build_context_ext.dart';
import 'package:ujian_online_smks/persentation/ujian/widgets/quiz_result_last.dart';

class QuizResultPage extends StatefulWidget {
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
  State<QuizResultPage> createState() => _QuizResultPageState();
}

class _QuizResultPageState extends State<QuizResultPage> {
  late int remainingTime;
  Timer? _timer;
  bool isTimeUp = false;

  @override
  void initState() {
    super.initState();
    remainingTime = widget.remainingSeconds ~/ 60;
    isTimeUp = remainingTime <= 0;

    if (remainingTime > 0) {
      _timer = Timer.periodic(const Duration(minutes: 1), (timer) {
        if (remainingTime > 0) {
          setState(() {
            remainingTime--;
            if (remainingTime == 0) {
              isTimeUp = true; // Perbarui state waktu habis
            }
          });
        } else {
          _timer?.cancel();
        }
      });
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

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
                id: widget.id,
                nilai: widget.nilai,
                jawabanBenar: widget.jawabanBenar,
                totalSoal: widget.totalSoal,
                remainingSeconds: remainingTime,
              ),
            ),
            const SizedBox(height: 40.0),
            Text(
              'Sisa Waktu: $remainingTime Menit',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
      bottomNavigationBar: StatefulBuilder(
        builder: (context, setState) {
          return Container(
            color: AppColors.white,
            padding: const EdgeInsets.all(16.0),
            child: Button.filled(
              onPressed: isTimeUp
                  ? () async {
                      // await stopKioskMode();
                      context.popToRoot();
                    }
                  : null, // Disabled jika waktu belum habis
              label: 'Kembali ke Beranda',
              disabled:
                  !isTimeUp, // Pastikan tombol disabled jika waktu belum habis
            ),
          );
        },
      ),
    );
  }
}
