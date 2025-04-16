import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ujian_online_smks/core/components/buttons.dart';
import 'package:ujian_online_smks/core/constants/colors.dart';
import 'package:ujian_online_smks/persentation/ujian/bloc/daftar_soal/daftar_soal_bloc.dart';
import 'package:ujian_online_smks/persentation/ujian/bloc/jawaban/jawaban_bloc.dart';
import 'package:ujian_online_smks/persentation/ujian/pages/quiz_result_page.dart';
import 'package:ujian_online_smks/persentation/ujian/widgets/answer_choices.dart';

class QuizMultipleChoice extends StatefulWidget {
  final String id;
  final bool isTimeUp;
  final int remainingSeconds;
  const QuizMultipleChoice({
    super.key,
    required this.id,
    required this.isTimeUp,
    required this.remainingSeconds,
  });

  @override
  State<QuizMultipleChoice> createState() => _QuizMultipleChoiceState();
}

class _QuizMultipleChoiceState extends State<QuizMultipleChoice> {
  String selectedAnswer = '';
  String jawaban = '';
  Map<String, String> savedAnswers =
      {}; // Menyimpan semua jawaban yang telah dipilih

  @override
  void initState() {
    super.initState();
    context.read<DaftarSoalBloc>().add(DaftarSoalEvent.started(widget.id));
  }

  // Method untuk memuat jawaban yang sudah disimpan untuk soal tertentu
  void loadSavedAnswer(String soalId) {
    if (savedAnswers.containsKey(soalId)) {
      setState(() {
        jawaban = savedAnswers[soalId]!;
        // Anda mungkin perlu menyesuaikan selectedAnswer berdasarkan jawaban yang disimpan
        // Ini tergantung pada bagaimana Anda ingin menampilkan jawaban yang sudah dipilih sebelumnya
      });
    } else {
      setState(() {
        jawaban = '';
        selectedAnswer = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<JawabanBloc, JawabanState>(
          listener: (context, state) {
            state.maybeWhen(
              answered: (data) {
                print("Jawaban diterima: $data");
                if (data != null && data.containsKey('data')) {
                  final double nilai = (data['data']['nilai'] ?? 0).toDouble();
                  final double jawabanBenar =
                      (data['data']['jawaban_benar'] ?? 0).toDouble();
                  final double totalSoal =
                      (data['data']['total_soal'] ?? 0).toDouble();
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => QuizResultPage(
                        id: widget.id,
                        nilai: nilai,
                        jawabanBenar: jawabanBenar,
                        totalSoal: totalSoal,
                        remainingSeconds: widget.remainingSeconds,
                      ),
                    ),
                  );
                }
              },
              error: (message) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Error jawaban: $message')),
                );
              },
              orElse: () {},
            );
          },
        ),
        BlocListener<DaftarSoalBloc, DaftarSoalState>(
          listener: (context, state) {
            state.maybeWhen(
              success: (e, index, isNext, isPrev) {
                // Ketika soal berubah, muat jawaban yang disimpan untuk soal ini
                loadSavedAnswer(e[index].id.toString());
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: BlocBuilder<DaftarSoalBloc, DaftarSoalState>(
        builder: (context, state) {
          return state.maybeWhen(orElse: () {
            return const Center(child: CircularProgressIndicator());
          }, error: (message) {
            return Center(child: Text(message));
          }, success: (e, index, isNext, isPrev) {
            final currentSoalId = e[index].id.toString();

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(24.0),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
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
                  child: Column(
                    children: [
                      Text(
                        e[index].pertanyaan,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 20),
                      if (e[index].gambarPertanyaan != null &&
                          e[index].gambarPertanyaan!.isNotEmpty)
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.network(
                              e[index].gambarPertanyaan!,
                            fit: BoxFit.cover,
                              loadingBuilder:
                                  (context, child, loadingProgress) {
                                if (loadingProgress == null) return child;
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              },
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(Icons.broken_image, size: 100),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 34.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnswerChoices(
                      label: e[index].pilihanJawaban.a.teks,
                      imageUrl: (e[index].pilihanJawaban.a.gambar != null &&
                              e[index].pilihanJawaban.a.gambar!.isNotEmpty)
                          ? e[index].pilihanJawaban.a.gambar!
                          : null,
                      isSelected: jawaban == 'a',
                      onChanged: (value) {
                        setState(() {
                          jawaban = 'a';
                          selectedAnswer = e[index].pilihanJawaban.a.teks;
                          savedAnswers[currentSoalId] = 'a'; // Simpan jawaban
                        });
                      },
                    ),
                    const SizedBox(height: 16.0),
                    AnswerChoices(
                      label: e[index].pilihanJawaban.b.teks,
                      imageUrl: (e[index].pilihanJawaban.b.gambar != null &&
                              e[index].pilihanJawaban.b.gambar!.isNotEmpty)
                          ? e[index].pilihanJawaban.b.gambar!
                          : null,
                      isSelected: jawaban == 'b',
                      onChanged: (value) {
                        setState(() {
                          jawaban = 'b';
                          selectedAnswer = e[index].pilihanJawaban.b.teks;
                          savedAnswers[currentSoalId] = 'b'; // Simpan jawaban
                        });
                      },
                    ),
                    const SizedBox(height: 16.0),
                    AnswerChoices(
                      label: e[index].pilihanJawaban.c.teks,
                      imageUrl: (e[index].pilihanJawaban.c.gambar != null &&
                              e[index].pilihanJawaban.c.gambar!.isNotEmpty)
                          ? e[index].pilihanJawaban.c.gambar!
                          : null,
                      isSelected: jawaban == 'c',
                      onChanged: (value) {
                        setState(() {
                          jawaban = 'c';
                          selectedAnswer = e[index].pilihanJawaban.c.teks;
                          savedAnswers[currentSoalId] = 'c'; // Simpan jawaban
                        });
                      },
                    ),
                    const SizedBox(height: 16.0),
                    AnswerChoices(
                      label: e[index].pilihanJawaban.d.teks,
                      imageUrl: (e[index].pilihanJawaban.d.gambar != null &&
                              e[index].pilihanJawaban.d.gambar!.isNotEmpty)
                          ? e[index].pilihanJawaban.d.gambar!
                          : null,
                      isSelected: jawaban == 'd',
                      onChanged: (value) {
                        setState(() {
                          jawaban = 'd';
                          selectedAnswer = e[index].pilihanJawaban.d.teks;
                          savedAnswers[currentSoalId] = 'd'; // Simpan jawaban
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 38.0),
                if (isPrev)
                  Button.filled(
                    onPressed: () {
                      // Simpan jawaban saat ini sebelum pindah ke soal sebelumnya
                      if (jawaban.isNotEmpty) {
                        savedAnswers[currentSoalId] = jawaban;
                      }
                      context
                          .read<DaftarSoalBloc>()
                          .add(const DaftarSoalEvent.prevSoal());
                    },
                    label: 'Sebelumnya',
                  ),
                if (isPrev) const SizedBox(height: 20),
                if (jawaban.isEmpty)
                  Button.filled(
                    onPressed: () {},
                    disabled: true,
                    label: 'Selanjutnya',
                  )
                else if (isNext)
                  Button.filled(
                    onPressed: () {
                      // Simpan jawaban saat ini
                      savedAnswers[currentSoalId] = jawaban;

                      context.read<JawabanBloc>().add(
                            JawabanEvent.addJawaban(
                              soalId: currentSoalId,
                              jawaban: jawaban,
                            ),
                          );
                      context
                          .read<DaftarSoalBloc>()
                          .add(const DaftarSoalEvent.nextSoal());

                      setState(() {
                        jawaban = ''; // Reset untuk soal berikutnya
                        selectedAnswer = '';
                      });
                    },
                    label: 'Selanjutnya',
                  )
                else
                  Button.filled(
                    onPressed: () {
                      // Pastikan jawaban terakhir disimpan
                      if (jawaban.isNotEmpty) {
                        savedAnswers[currentSoalId] = jawaban;
                      }

                      context.read<JawabanBloc>().add(
                            JawabanEvent.addJawaban(
                              soalId: currentSoalId,
                              jawaban: jawaban,
                            ),
                          );
                      context.read<JawabanBloc>().add(
                            JawabanEvent.setAnswer(widget.id),
                          );
                    },
                    label: 'Selesai',
                  ),
              ],
            );
          });
        },
      ),
    );
  }
}
