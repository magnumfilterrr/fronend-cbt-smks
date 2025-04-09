import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ujian_online_smks/core/components/buttons.dart';
import 'package:ujian_online_smks/core/components/custom_text_field.dart';
import 'package:ujian_online_smks/core/constants/colors.dart';
import 'package:ujian_online_smks/data/datasources/auth_local_datasourece.dart';
import 'package:ujian_online_smks/data/models/request/login_request_model.dart';
import 'package:ujian_online_smks/persentation/auth/bloc/login/login_bloc.dart';
import 'package:ujian_online_smks/persentation/auth/pages/pages_register.dart';
import 'package:ujian_online_smks/persentation/home/pages/dashboard_pages.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Log in'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24.0),
        children: [
          CustomTextField(
            controller: emailController,
            label: 'Email Address',
          ),
          const SizedBox(height: 16.0),
          CustomTextField(
            controller: passwordController,
            label: 'Password',
            obscureText: true,
          ),
          const SizedBox(height: 42.0),
          BlocConsumer<LoginBloc, LoginState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  success: (data) {
                    //simpan data ke storage
                    AuthLocalDataSources().saveAuthData(data);
                    //snack bar
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Login Success',
                          style: TextStyle(color: Colors.black),
                        ),
                        backgroundColor: AppColors.lightGreen,
                      ),
                    );
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DashboardPage(),
                        ) // Contoh navigasi ke HomePage
                        );
                  },
                  error: (message) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(message),
                      backgroundColor: AppColors.lightRed,
                    ));
                  });
            },
            builder: (context, state) {
              return state.maybeWhen(
                  orElse: () => Button.filled(
                        onPressed: () {
                          // context.pushReplacement(const DashboardPage());
                          final requestModel = LoginRequestModel(
                              email: emailController.text,
                              password: passwordController.text);
                          context
                              .read<LoginBloc>()
                              .add(LoginEvent.login(requestModel));
                        },
                        label: 'LOG IN',
                      ),
                  loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ));
            },
          ),
          const SizedBox(height: 24.0),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.pushReplacement(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) =>
          //             const RegisterPage(), // Contoh navigasi ke HomePage
          //       ),
          //     );
          //   },
          //   child: const Text.rich(
          //     TextSpan(
          //       text: 'Don\'t have an account? ',
          //       children: [
          //         TextSpan(
          //           text: 'Sign up',
          //           style: TextStyle(color: AppColors.primary),
          //         ),
          //       ],
          //     ),
          //     textAlign: TextAlign.center,
          //   ),
          // ),
        ],
      ),
    );
  }
}
