import 'package:flutter/material.dart';

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
  const QuizResultPage({
    super.key,
    required this.id,
    required this.nilai,
    required this.jawabanBenar,
    required this.totalSoal,
  });

  @override
  State<QuizResultPage> createState() => _QuizResultPageState();
}

class _QuizResultPageState extends State<QuizResultPage> {
  @override
  Widget build(BuildContext context) {
    const paddingHorizontalSize = 16.0;
    const paddingHorizontal =
        EdgeInsets.symmetric(horizontal: paddingHorizontalSize);
    return CustomScaffold(
      appBarTitle: const Text('Hasil Tes'),
      body: ListView(
        children:  [
          const SizedBox(height: 30.0),
          Padding(
            padding: paddingHorizontal,
            child: QuizResultLast(
              id: widget.id,
              nilai: widget.nilai,
              jawabanBenar: widget.jawabanBenar,
              totalSoal: widget.totalSoal,
            ),
          ),
          const SizedBox(height: 40.0),
          // const SizedBox(height: 8.0),
          // SingleChildScrollView(
          //   padding: const EdgeInsets.symmetric(
          //       horizontal: paddingHorizontalSize - 8.0),
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //     children: datas
          //         .map((item) => Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: QuizAvailableCard(data: item),
          //             ))
          //         .toList(),
          //   ),
          // ),
          const SizedBox(height: 30.0),
        ],
      ),
      bottomNavigationBar: Container(
        color: AppColors.white,
        padding: const EdgeInsets.all(16.0),
        child: Button.filled(
          onPressed: ()  async{
            // await stopKioskMode();
            context.popToRoot();},
          label: 'Kembali ke Beranda',
        ),
      ),
    );
  }
}
