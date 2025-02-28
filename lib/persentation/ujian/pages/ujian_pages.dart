import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ujian_online_smks/core/components/custom_scaffold.dart';
import 'package:ujian_online_smks/persentation/ujian/bloc/ujian/ujian_bloc.dart';

import 'package:ujian_online_smks/persentation/ujian/widgets/quiz_card.dart';

class UjianPage extends StatefulWidget {
  const UjianPage({super.key});

  @override
  State<UjianPage> createState() => _UjianPageState();
}

class _UjianPageState extends State<UjianPage> {
  @override
  void initState() {
    
    context.read<UjianBloc>().add(const UjianEvent.getAllUjian());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBarTitle: const Text('Materi TPA'),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 24.0),
        children: [
          BlocBuilder<UjianBloc, UjianState>(builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return const Center(
                  child: Text('Error'),
                );
              },
              loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              success: (datas) {
                return ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: datas.data.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 16.0),
                  itemBuilder: (context, index) => QuizCard(
                    data: datas.data[index],
                  ),
                );
              },
            );
          }),
        ],
      ),
    );
  }
}
