import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ujian_online_smks/data/datasources/soal_remote_datasourece.dart';
import 'package:ujian_online_smks/data/datasources/ujian_remote_datasource.dart';
import 'package:ujian_online_smks/firebase_options.dart';
import 'package:ujian_online_smks/persentation/auth/bloc/login/login_bloc.dart';
import 'package:ujian_online_smks/persentation/auth/bloc/logout/bloc/logout_bloc.dart';
import 'package:ujian_online_smks/persentation/auth/bloc/register/register_bloc.dart';
import 'package:ujian_online_smks/persentation/auth/pages/pages_login.dart';
import 'package:ujian_online_smks/persentation/ujian/bloc/daftar_soal/daftar_soal_bloc.dart';
import 'package:ujian_online_smks/persentation/ujian/bloc/hitung_nilai/hitung_nilai_bloc.dart';
import 'package:ujian_online_smks/persentation/ujian/bloc/jawaban/jawaban_bloc.dart';
import 'package:ujian_online_smks/persentation/ujian/bloc/soal/soal_bloc.dart';
import 'package:ujian_online_smks/persentation/ujian/bloc/ujian/ujian_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => RegisterBloc()),
        BlocProvider(create: (context) => LogoutBloc()),
        BlocProvider(create: (context) => LoginBloc()),
        BlocProvider(create: (context) => UjianBloc(UjianRemoteDataSource())),
        BlocProvider(create: (context) => SoalBloc(SoalRemoteDataSource())),
        BlocProvider(
            create: (context) => DaftarSoalBloc(SoalRemoteDataSource())),
        BlocProvider(
            create: (context) => HitungNilaiBloc(SoalRemoteDataSource())),
        BlocProvider(create: (context) => JawabanBloc(SoalRemoteDataSource())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ujian Online SMKS',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        builder: (context, child) {
          // Jika di Web, bungkus dengan MobileLayout
          return kIsWeb
              ? MobileLayout(child: child ?? const SizedBox())
              : child ?? const SizedBox();
        },
        home: const LoginPages(), // Halaman utama
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  final Widget child;
  const MobileLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Warna latar luar
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 400, // Ukuran maksimal seperti layar mobile
          ),
          child: Container(
            height: double.infinity,
            color: Colors.white, // Warna body utama
            child:
                child, // Menampilkan halaman yang dipilih (misal: LoginPages)
          ),
        ),
      ),
    );
  }
}
