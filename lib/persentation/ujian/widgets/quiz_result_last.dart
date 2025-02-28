import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:ujian_online_smks/persentation/ujian/widgets/result_value.dart';

import '../../../core/constants/colors.dart';

class QuizResultLast extends StatefulWidget {
  final String id;
  final int nilai;
  final int jawabanBenar;
  final int totalSoal;
  const QuizResultLast({
    super.key,
    required this.nilai,
    required this.jawabanBenar,
    required this.totalSoal,
    required this.id,
  });

  @override
  State<QuizResultLast> createState() => _QuizResultLastState();
}

class _QuizResultLastState extends State<QuizResultLast> {
  @override
  Widget build(BuildContext context) {
    final nilai = widget.nilai;
    final correct = widget.jawabanBenar;
    final totalQuestion = widget.totalSoal;
    final wrong = totalQuestion - correct;
    print(
        "Nilai: $nilai, Total Soal: $totalQuestion, Total Soal benar: $correct, Total Soal Salah: $wrong");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Hasil Tes Terakhir',
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 16.0),
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            shadows: [
              BoxShadow(
                color: AppColors.black.withOpacity(0.14),
                blurRadius: 17,
                offset: const Offset(0, 8),
                spreadRadius: 0,
              )
            ],
          ),
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Semua Tes',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 18.0),
                    ResultValue.correct(correct),
                    const SizedBox(height: 18.0),
                    ResultValue.wrong(wrong),
                    const SizedBox(height: 18.0),
                    ResultValue.nilai(nilai),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Column(
                  children: [
                    CircularStepProgressIndicator(
                      totalSteps: totalQuestion,
                      currentStep: correct,
                      stepSize: 10,
                      selectedColor: AppColors.green,
                      unselectedColor: AppColors.primary,
                      padding: 0,
                      width: 140,
                      height: 140,
                      selectedStepSize: 24,
                      unselectedStepSize: 24,
                      roundedCap: (_, __) => true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
