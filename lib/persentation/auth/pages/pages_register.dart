import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ujian_online_smks/core/components/buttons.dart';
import 'package:ujian_online_smks/core/components/custom_text_field.dart';
import 'package:ujian_online_smks/core/constants/colors.dart';
import 'package:ujian_online_smks/core/constants/variables.dart';
import 'package:ujian_online_smks/data/datasources/auth_local_datasourece.dart';
import 'package:ujian_online_smks/data/models/request/register_request_model.dart';
import 'package:ujian_online_smks/persentation/auth/bloc/register/register_bloc.dart';
import 'package:ujian_online_smks/persentation/auth/pages/pages_login.dart';
import 'package:http/http.dart' as http;

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final roleController = TextEditingController();

  String? selectedKelas;
  String selectedJurusan = 'DKV';
  List<Map<String, dynamic>> kelasList = [];
  final List<String> jurusanList = ['DKV', 'TKR', 'MPLB', 'PBR'];
  int selectedKelasId = 1;

  @override
  void initState() {
    super.initState();
    fetchKelas().then((data) {
      setState(() {
        kelasList = data;
      });
    }).catchError((error) {
      print("Error fetching kelas: $error");
    });
  }

  Future<List<Map<String, dynamic>>> fetchKelas() async {
    final response =
        await http.get(Uri.parse('${Variables.baseUrl}/api/getkelas'));

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return List<Map<String, dynamic>>.from(jsonResponse['kelas']);
    } else {
      throw Exception('Gagal mengambil daftar kelas');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Register'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24.0),
        children: [
          CustomTextField(
            controller: nameController,
            label: 'Nama Lengkap',
          ),
          const SizedBox(height: 16.0),
          CustomTextField(
            controller: emailController,
            label: 'Maukan Alamat Email',
          ),
          const SizedBox(height: 16.0),
          CustomTextField(
            controller: passwordController,
            label: 'Password',
            obscureText: true,
          ),
          const SizedBox(height: 16.0),
          CustomTextField(
            controller: roleController,
            label: 'Role',
          ),
          const SizedBox(height: 16.0),
          CustomTextField<int>(
            label: 'Pilih Kelas',
            isDropdown: true,
            value: selectedKelasId, // Nilai yang dipilih (int)
            items: kelasList.map((kelas) {
              return DropdownMenuItem<int>(
                value: kelas['id'], // Pastikan ini `int`
                child: Text(kelas['nama_kelas']),
              );
            }).toList(),
            onDropdownChanged: (value) {
              setState(() {
                selectedKelasId = value ?? 1;
              });
            },
          ),
          const SizedBox(height: 16.0),
          CustomTextField<String>(
            label: 'Pilih Jurusan',
            isDropdown: true,
            value: selectedJurusan,
            items: ['DKV', 'TKR', 'MPLB', 'PBR'].map((jurusan) {
              return DropdownMenuItem(
                value: jurusan,
                child: Text(jurusan),
              );
            }).toList(),
            onDropdownChanged: (value) {
              setState(() {
                selectedJurusan = value ?? 'DKV';
              });
            },
          ),
          const SizedBox(height: 24.0),
          BlocConsumer<RegisterBloc, RegisterState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  success: (state) {
                    AuthLocalDataSources().saveAuthData(state);
                  });
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Register Success'),
                  backgroundColor: Colors.blue,
                ),
              );
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPages()),
              );
            },
            builder: (context, state) {
              return state.maybeWhen(orElse: () {
                return Button.filled(
                  onPressed: () {
                    final dataRequest = RegisterRequestModel(
                      name: nameController.text,
                      email: emailController.text,
                      password: passwordController.text,
                      role: roleController.text,
                      kelasId: selectedKelasId,
                      jurusan: selectedJurusan,
                    );

                    context
                        .read<RegisterBloc>()
                        .add(RegisterEvent.register(dataRequest)); //
                    // Future.delayed(
                    //   const Duration(seconds: 2),
                    //   () => context.pushReplacement(const LoginPages()),
                    // );
                    // showDialog(
                    //   context: context,
                    //   builder: (BuildContext context) {
                    //     return const RegisterSuccessDialog();
                    //   },
                    // );
                  },
                  label: 'REGISRER',
                );
              }, loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              });
            },
          ),
          const SizedBox(height: 24.0),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const LoginPages()),
              );
            },
            child: const Text.rich(
              TextSpan(
                text: 'Already have an account?? ',
                children: [
                  TextSpan(
                    text: 'Sign in',
                    style: TextStyle(color: AppColors.primary),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
