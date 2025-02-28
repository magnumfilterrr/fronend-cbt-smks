import 'package:flutter/material.dart';
import 'package:ujian_online_smks/core/extensions/build_context_ext.dart';
import 'package:ujian_online_smks/data/models/response/ujian_response_model.dart';
import 'package:ujian_online_smks/persentation/ujian/pages/quiz_start_page.dart';

import '../../../core/constants/colors.dart';

class QuizCard extends StatelessWidget {
  final Ujian data;
  const QuizCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(QuizStartPage(data:data ));
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
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
            // ClipRRect(
            //   borderRadius: const BorderRadius.all(Radius.circular(12.0)),
            //   child: Image.asset(
            //     widget.data.,
            //     width: 145.0,
            //     height: 160.0,
            //     fit: BoxFit.cover,
            //   ),
            // ),
            // const SizedBox(width: 8.0),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.judulUjian,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    data.tanggalUjian.toString(),
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 14.0),
                  Text(
                    data.durasiUjian.toString(),
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(height: 14.0),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
