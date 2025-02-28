import 'package:flutter/material.dart';
import 'package:ujian_online_smks/data/datasources/soal_remote_datasourece.dart';
import 'package:ujian_online_smks/data/datasources/ujian_remote_datasource.dart';
import 'package:ujian_online_smks/persentation/auth/bloc/login/login_bloc.dart';
import 'package:ujian_online_smks/persentation/auth/bloc/logout/bloc/logout_bloc.dart';
import 'package:ujian_online_smks/persentation/auth/bloc/register/register_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ujian_online_smks/persentation/auth/pages/pages_login.dart';
import 'package:ujian_online_smks/persentation/ujian/bloc/daftar_soal/daftar_soal_bloc.dart';
import 'package:ujian_online_smks/persentation/ujian/bloc/hitung_nilai/hitung_nilai_bloc.dart';
import 'package:ujian_online_smks/persentation/ujian/bloc/jawaban/jawaban_bloc.dart';
import 'package:ujian_online_smks/persentation/ujian/bloc/soal/soal_bloc.dart';
import 'package:ujian_online_smks/persentation/ujian/bloc/ujian/ujian_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RegisterBloc(),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(),
        ),
        BlocProvider(
          create: (context) => LoginBloc(),
        ),
        BlocProvider(
          create: (context) => UjianBloc(UjianRemoteDataSource()),
        ),
        BlocProvider(
          create: (context) => SoalBloc(SoalRemoteDataSource()),
        ),
        BlocProvider(
          create: (context) => DaftarSoalBloc(SoalRemoteDataSource()),
        ),
        BlocProvider(
          create: (context) => HitungNilaiBloc(SoalRemoteDataSource()),
        ),
        BlocProvider(
          create: (context) => JawabanBloc(SoalRemoteDataSource()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ujian Online SMKS',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const LoginPages(),
      ),
    );
  }
}
