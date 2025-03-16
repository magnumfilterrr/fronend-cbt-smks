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

  @override
  void initState() {
    super.initState();
    context.read<DaftarSoalBloc>().add(DaftarSoalEvent.started(widget.id));
    // context.read<UjianBloc>().add(UjianEvent.checkStatus(widget.id));
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
                  // Navigasi langsung ke halaman hasil
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
      ],
      child: BlocBuilder<DaftarSoalBloc, DaftarSoalState>(
        builder: (context, state) {
          return state.maybeWhen(orElse: () {
            return const Center(child: CircularProgressIndicator());
          }, error: (message) {
            return Center(child: Text(message));
          }, success: (e, index, isNext, isPrev) {
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
                      if (e[index].gambarPertanyaan.isNotEmpty)
                        Image.network(
                          e[index].gambarPertanyaan,
                          fit: BoxFit.cover,
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
                      imageUrl:
                          e[index].pilihanJawaban.a.gambar, // Tambahkan ini
                      isSelected:
                          selectedAnswer == e[index].pilihanJawaban.a.teks,
                      onChanged: (value) {
                        setState(() {
                          selectedAnswer = value;
                          jawaban = 'a';
                        });
                      },
                    ),
                    const SizedBox(height: 16.0),
                    AnswerChoices(
                      label: e[index].pilihanJawaban.b.teks,
                      imageUrl:
                          e[index].pilihanJawaban.b.gambar, // Tambahkan ini
                      isSelected:
                          selectedAnswer == e[index].pilihanJawaban.b.teks,
                      onChanged: (value) {
                        setState(() {
                          selectedAnswer = value;
                          jawaban = 'b';
                        });
                      },
                    ),
                    const SizedBox(height: 16.0),
                    AnswerChoices(
                      label: e[index].pilihanJawaban.c.teks,
                      imageUrl:
                          e[index].pilihanJawaban.c.gambar, // Tambahkan ini
                      isSelected:
                          selectedAnswer == e[index].pilihanJawaban.c.teks,
                      onChanged: (value) {
                        setState(() {
                          selectedAnswer = value;
                          jawaban = 'c';
                        });
                      },
                    ),
                    const SizedBox(height: 16.0),
                    AnswerChoices(
                      label: e[index].pilihanJawaban.d.teks,
                      imageUrl:
                          e[index].pilihanJawaban.d.gambar, // Tambahkan ini
                      isSelected:
                          selectedAnswer == e[index].pilihanJawaban.d.teks,
                      onChanged: (value) {
                        setState(() {
                          selectedAnswer = value;
                          jawaban = 'd';
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 38.0),
                if (isPrev)
                  Button.filled(
                    onPressed: () {
                      context
                          .read<DaftarSoalBloc>()
                          .add(const DaftarSoalEvent.prevSoal());
                      setState(() {
                        jawaban = '';
                        selectedAnswer = '';
                      });
                    },
                    label: 'Sebelumnya',
                  ),
                // const SizedBox(height: 20),
                if (isPrev)
                  const SizedBox(
                    height: 20,
                  ), // Jarak antar tombol
                if (jawaban.isEmpty)
                  Button.filled(
                    onPressed: () {},
                    disabled: true,
                    label: 'Selanjutnya',
                  )
                else if (isNext)
                  Button.filled(
                    onPressed: () {
                      context.read<JawabanBloc>().add(
                            JawabanEvent.addJawaban(
                              soalId: e[index].id.toString(),
                              jawaban: jawaban,
                            ),
                          );
                      context
                          .read<DaftarSoalBloc>()
                          .add(const DaftarSoalEvent.nextSoal());

                      setState(() {
                        jawaban = '';
                        selectedAnswer = '';
                      });
                    },
                    label: 'Selanjutnya',
                  )
                else
                  Button.filled(
                    onPressed: () {
                      context.read<JawabanBloc>().add(
                            JawabanEvent.addJawaban(
                              soalId: e[index].id.toString(),
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
