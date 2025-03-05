import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ujian_online_smks/core/components/buttons.dart';
import 'package:ujian_online_smks/core/constants/colors.dart';
import 'package:ujian_online_smks/persentation/ujian/bloc/daftar_soal/daftar_soal_bloc.dart';
// import 'package:ujian_online_smks/persentation/ujian/bloc/hitung_nilai/hitung_nilai_bloc.dart';
import 'package:ujian_online_smks/persentation/ujian/bloc/jawaban/jawaban_bloc.dart';
// import 'package:ujian_online_smks/persentation/ujian/bloc/ujian/ujian_bloc.dart';
import 'package:ujian_online_smks/persentation/ujian/pages/quiz_result_page.dart';
import 'package:ujian_online_smks/persentation/ujian/widgets/answer_choices.dart';
// import 'package:ujian_online_smks/persentation/ujian/widgets/quiz_result_last.dart';
// import 'package:ujian_online_smks/persentation/ujian/widgets/quiz_result_last.dart'; // Pastikan path ini benar

class QuizMultipleChoice extends StatefulWidget {
  final String id;
  const QuizMultipleChoice({
    super.key,
    required this.id,
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
                  final nilai = data['data']['nilai'] ?? 0;
                  final jawabanBenar = data['data']['jawaban_benar'] ?? 0;
                  final totalSoal = data['data']['total_soal'] ?? 0;

                  // Navigasi langsung ke halaman hasil
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => QuizResultPage(
                        id: widget.id,
                        nilai: nilai,
                        jawabanBenar: jawabanBenar,
                        totalSoal: totalSoal,
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
        // BlocListener<HitungNilaiBloc, HitungNilaiState>(
        //   listener: (context, state) {
        //     state.maybeWhen(
        //       success: (nilai, jawabanBenar, totalSoal) {
        //         // Navigasi ke halaman hasil
        //         Navigator.of(context).pushReplacement(
        //           MaterialPageRoute(
        //             builder: (context) => QuizResultLast(
        //               id: widget.id,
        //               nilai: nilai,
        //               jawabanBenar: jawabanBenar,
        //               totalSoal: totalSoal,
        //             ),
        //           ),
        //         );
        //       },
        //       error: (message) {
        //         ScaffoldMessenger.of(context).showSnackBar(
        //           SnackBar(content: Text('Error nilai: $message')),
        //         );
        //       },
        //       orElse: () {},
        //     );
        //   },
        // ),

        // BlocListener<UjianBloc, UjianState>(
        //   listener: (context, state) {
        //     state.maybeWhen(
        //       statusLoaded: (status) {
        //         ScaffoldMessenger.of(context).showSnackBar(
        //           SnackBar(content: Text('Status ujian diperbarui: $status')),
        //         );
        //       },
        //       error: (message) {
        //         ScaffoldMessenger.of(context).showSnackBar(
        //           SnackBar(content: Text('Error status ujian: $message')),
        //         );
        //       },
        //       orElse: () {},
        //     );
        //   },
        // ),
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
                  child: Text(
                    e[index].pertanyaan,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 34.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnswerChoices(
                      label: e[index].pilihanJawaban.a,
                      isSelected: selectedAnswer == e[index].pilihanJawaban.a,
                      onChanged: (value) {
                        setState(() {
                          selectedAnswer = value;
                          jawaban = 'a';
                        });
                      },
                    ),
                    const SizedBox(height: 16.0),
                    AnswerChoices(
                      label: e[index].pilihanJawaban.b,
                      isSelected: selectedAnswer == e[index].pilihanJawaban.b,
                      onChanged: (value) {
                        setState(() {
                          selectedAnswer = value;
                          jawaban = 'b';
                        });
                      },
                    ),
                    const SizedBox(height: 16.0),
                    AnswerChoices(
                      label: e[index].pilihanJawaban.c,
                      isSelected: selectedAnswer == e[index].pilihanJawaban.c,
                      onChanged: (value) {
                        setState(() {
                          selectedAnswer = value;
                          jawaban = 'c';
                        });
                      },
                    ),
                    const SizedBox(height: 16.0),
                    AnswerChoices(
                      label: e[index].pilihanJawaban.d,
                      isSelected: selectedAnswer == e[index].pilihanJawaban.d,
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

                if (isPrev) const SizedBox(width: 16.0), // Jarak antar tombol

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
