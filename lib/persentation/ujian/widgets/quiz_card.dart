import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:kiosk_mode/kiosk_mode.dart';
import 'package:ujian_online_smks/core/extensions/build_context_ext.dart';
// import 'package:ujian_online_smks/data/datasources/ujian_remote_datasource.dart';
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
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    status = widget.data.status; // Ambil status awal dari backend
    // _startAutoUpdate();
  }

  // void _startAutoUpdate() {
  //   _timer = Timer.periodic(const Duration(seconds: 10), (timer) async {
  //     final response = await UjianRemoteDataSource().getUjian();

  //     response.fold(
  //       (error) =>
  //           print('Gagal memperbarui status: $error'), // Tangani jika ada error
  //       (updatedUjian) {
  //         if (mounted) {
  //           setState(() {
  //             status = updatedUjian.status; // Perbarui status ujian
  //           });
  //         }
  //       },
  //     );
  //   });
  // }

  @override
  void dispose() {
    _timer?.cancel(); // Hentikan timer saat widget dibuang
    super.dispose();
  }

  String formatTanggalUjian(DateTime tanggalUjian) {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(tanggalUjian);
  }

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
        } else if (widget.data.status == 'sedang berlangsung') {
          SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
          await startKioskMode();
          // Hanya bisa mengakses ujian jika status "sedang berlangsung"
          context.push(QuizStartPage(data: widget.data));
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
                  // Tambahkan Badge Status
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // Fungsi untuk menentukan warna berdasarkan status ujian
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
