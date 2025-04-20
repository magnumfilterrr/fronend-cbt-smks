import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ujian_online_smks/core/assets/assets.gen.dart';
import 'package:ujian_online_smks/core/components/custom_scaffold.dart';
import 'package:ujian_online_smks/core/constants/colors.dart';
import 'package:ujian_online_smks/core/constants/visibility_handler.dart';
import 'package:ujian_online_smks/core/extensions/build_context_ext.dart';
import 'package:ujian_online_smks/data/models/response/ujian_response_model.dart';
import 'package:ujian_online_smks/persentation/ujian/bloc/daftar_soal/daftar_soal_bloc.dart';
import 'package:ujian_online_smks/persentation/ujian/bloc/jawaban/jawaban_bloc.dart';
import 'package:ujian_online_smks/persentation/ujian/bloc/ujian/ujian_bloc.dart';
import 'package:ujian_online_smks/persentation/ujian/pages/quiz_result_page.dart';
import 'package:ujian_online_smks/persentation/ujian/widgets/quiz_multiple_choice.dart';
import 'package:flutter/foundation.dart';

class QuizStartPage extends StatefulWidget {
  final Ujian data;

  const QuizStartPage({super.key, required this.data});

  @override
  State<QuizStartPage> createState() => _QuizStartPageState();
}

class _QuizStartPageState extends State<QuizStartPage>
    with WidgetsBindingObserver {
  Timer? _timer;
  int remainingSeconds = 0;
  bool isTimeUp = false;
  DateTime? lastActiveTime;
  VisibilityHandler? _visibilityHandler;
  Timer? _pauseTimer;
  bool isNavigatingToResult = false;
  bool logEnabled = true;
  bool isDialogShown = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    lockScreenMode();
    context.read<UjianBloc>().add(const UjianEvent.getAllUjian());
    _visibilityHandler = createVisibilityHandler();
    _visibilityHandler!.init(_onHiddenTab, _onVisibleTab);
  }

  Duration allowedPauseDuration = const Duration(seconds: 15);
  void _onHiddenTab() {
    if (isNavigatingToResult || !logEnabled) return;
    debugPrint("Tab disembunyikan (via VisibilityHandler)");
    lastActiveTime = DateTime.now();
  }

  void _onVisibleTab() {
    if (isNavigatingToResult || !logEnabled) return;
    debugPrint("Tab terlihat kembali (via VisibilityHandler)");
    if (lastActiveTime != null) {
      final delta = DateTime.now().difference(lastActiveTime!);
      if (delta > allowedPauseDuration) {
        debugPrint("Terlalu lama sembunyi tab, dianggap keluar");
        _saveRemainingAnswers();
        _calculateAndShowResult();
      }
      lastActiveTime = null;
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!kIsWeb) {
      if (state == AppLifecycleState.paused ||
          state == AppLifecycleState.inactive) {
        debugPrint("App paused/inactive (mobile)");
        _startPauseTimer();
      } else if (state == AppLifecycleState.resumed) {
        debugPrint("App resumed (mobile)");
        _cancelPauseTimer();
      }
    }
  }

  void _startPauseTimer() {
    _pauseTimer?.cancel(); // pastikan tidak ada timer lama
    _pauseTimer = Timer(allowedPauseDuration, () {
      debugPrint("⏰ Timer habis, anggap keluar aplikasi");
      _saveRemainingAnswers();
      _calculateAndShowResult();
    });
  }

  void _cancelPauseTimer() {
    if (_pauseTimer?.isActive ?? false) {
      debugPrint("✅ Kembali sebelum 15 detik, timer dibatalkan");
      _pauseTimer?.cancel();
      _pauseTimer = null;
    } else {
      // Timer sudah jalan sampai habis, dan showKeluarAplikasi sudah dipanggil
    }
  }

  // @override
  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   if (state == AppLifecycleState.inactive ||
  //       state == AppLifecycleState.paused) {
  //     debugPrint("App paused/inactive");

  //     // Simpan waktu terakhir aktif
  //     lastActiveTime = DateTime.now();
  //   } else if (state == AppLifecycleState.resumed) {
  //     debugPrint("App resumed");

  //     if (lastActiveTime != null) {
  //       final Duration delta = DateTime.now().difference(lastActiveTime!);

  //       // Jika waktu terjeda melebihi batas toleransi
  //       if (delta > allowedPauseDuration) {
  //         debugPrint("Terlalu lama pause, ujian dianggap keluar");
  //         _saveRemainingAnswers();
  //         showKeluarAplikasi();
  //       } else {
  //         debugPrint("Masih dalam batas toleransi pause");
  //         // Timer tetap jalan jadi tidak perlu start ulang
  //         // Tapi bisa refresh UI atau data
  //         setState(() {});
  //         context.read<DaftarSoalBloc>().add(
  //               DaftarSoalEvent.getDafatarSoal(widget.data.id.toString()),
  //             );
  //       }

  //       lastActiveTime = null;
  //     }
  //   }
  // }

  void lockScreenMode() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
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
        if (mounted) {
          setState(() {
            isTimeUp = true; // Set waktu habis
          });
        }
        _calculateAndShowResult();
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
            onPressed: () {
              Navigator.of(context).pop(); // Tutup dialog dulu
            },
            child: const Text('Selesai'),
          ),
        ],
      ),
    ).then((_) {
      // Baru hitung hasil & navigasi setelah dialog ditutup
      _calculateAndShowResult();
    });
  }

  void showKeluarAplikasi() {
    if (isDialogShown) return;
    isDialogShown = true;

    _saveRemainingAnswers();

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Kamu Keluar Aplikasi'),
        content: const Text(
          'Kamu Telah Keluar Aplikasi, Silahkan Klik Tombol Selesai Untuk Melihat Hasil',
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Tutup dialog dulu
            },
            child: const Text('Selesai'),
          ),
        ],
      ),
    ).then((_) {
      _calculateAndShowResult();
    });
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
    isNavigatingToResult = true;
    _visibilityHandler?.setNavigatingToResult(true);
    _visibilityHandler?.setLogEnabled(false);
    _visibilityHandler?.dispose();
    _timer?.cancel();
    _pauseTimer?.cancel();

    context.pushReplacement(
      QuizResultPage(
        id: widget.data.id.toString(),
        nilai: nilai,
        jawabanBenar: jawabanBenar.toDouble(),
        totalSoal: totalSoal.toDouble(),
        remainingSeconds: remainingSeconds,
      ),
    );
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
    isDialogShown = false; // reset di sini
    WidgetsBinding.instance.removeObserver(this);
    _visibilityHandler?.dispose();
    _timer?.cancel();
    _pauseTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      automaticallyImplyLeading: false,
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
      body: WillPopScope(
          onWillPop: () async => false,
          child: ListView(
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
              QuizMultipleChoice(
                id: widget.data.id.toString(),
                isTimeUp: isTimeUp,
                remainingSeconds: remainingSeconds,
              ),
            ],
          )),
    );
  }
}
