import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
// import 'package:kiosk_mode/kiosk_mode.dart';
import 'package:ujian_online_smks/core/extensions/build_context_ext.dart';
import 'package:ujian_online_smks/data/models/response/ujian_response_model.dart';
import 'package:ujian_online_smks/persentation/ujian/pages/quiz_start_page.dart';

import '../../../core/constants/colors.dart';

class QuizCard extends StatefulWidget {
  final Ujian data;

  const QuizCard({super.key, required this.data});

  @override
  State<QuizCard> createState() => _QuizCardState();
}

class _QuizCardState extends State<QuizCard> {
  late String status;
  late bool isCompleted;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    status = widget.data.status;
    isCompleted = widget.data.isCompleted;
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String formatTanggalUjian(DateTime tanggalUjian) {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(tanggalUjian);
  }

  // Future<bool> isInSchoolArea() async {
  //   const double schoolLatitude = -7.313225913679083;
  //   const double schoolLongitude = 107.79302367244632;
  //   // const double schoolLatitude = -7.307757646689883;
  //   // const double schoolLongitude = 107.79192107611574;
  //   const double allowedDistance = 2000;

  //   try {
  //     Position position = await Geolocator.getCurrentPosition(
  //         desiredAccuracy: LocationAccuracy.high);
  //     double distance = Geolocator.distanceBetween(schoolLatitude,
  //         schoolLongitude, position.latitude, position.longitude);

  //     return distance <= allowedDistance;
  //   } catch (e) {
  //     print("Gagal mendapatkan lokasi: $e");
  //     return false;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (widget.data.status == 'selesai') {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Ujian ini sudah selesai dan tidak bisa diakses.'),
              backgroundColor: Colors.red,
            ),
          );
        } else if (widget.data.status == 'belum dimulai') {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content:
                  Text('Ujian ini belum dimulai. Harap tunggu hingga dimulai.'),
              backgroundColor: Colors.orange,
            ),
          );
        } else if (widget.data.status == 'sedang berlangsung' && !isCompleted) {
          // bool inSchool = await isInSchoolArea();
          // if (!inSchool) {
          //   ScaffoldMessenger.of(context).showSnackBar(
          //     const SnackBar(
          //       content: Text(
          //           'Anda harus berada di area sekolah untuk mengerjakan ujian.'),
          //       backgroundColor: Colors.red,
          //     ),
          //   );
          //   return;
          // }

          try {
            if (!kIsWeb && Platform.isAndroid) {
              await SystemChrome.setEnabledSystemUIMode(
                  SystemUiMode.immersiveSticky);
              // await startKioskMode();
            }

            if (mounted) {
              context.push(QuizStartPage(data: widget.data));
            }
          } catch (e) {
            if (mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Terjadi kesalahan: $e'),
                  backgroundColor: Colors.red,
                ),
              );
            }
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Anda sudah mengerjakan ujian ini.'),
              backgroundColor: Colors.blue,
            ),
          );
        }
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
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.data.judulUjian,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    formatTanggalUjian(widget.data.tanggalUjian),
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 14.0),
                  Text(
                    "${widget.data.durasiUjian} menit",
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(height: 14.0),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: getStatusColor(widget.data.status),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      widget.data.status.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: isCompleted ? Colors.green : Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      isCompleted
                          ? '✅ Sudah Mengerjakan'
                          : '⏳ Belum Mengerjakan',
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Color getStatusColor(String status) {
    switch (status) {
      case 'belum dimulai':
        return Colors.orange;
      case 'sedang berlangsung':
        return Colors.green;
      case 'selesai':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}
