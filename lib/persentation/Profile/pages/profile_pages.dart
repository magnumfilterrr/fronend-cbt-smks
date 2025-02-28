// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ujian_online_smks/core/assets/assets.gen.dart';
import 'package:ujian_online_smks/core/extensions/build_context_ext.dart';
import 'package:ujian_online_smks/data/datasources/auth_local_datasourece.dart';
import 'package:ujian_online_smks/data/models/response/auth_response_model.dart';
import 'package:ujian_online_smks/persentation/Profile/widgets/profile_menu.dart';
import 'package:ujian_online_smks/persentation/auth/bloc/logout/bloc/logout_bloc.dart';
import 'package:ujian_online_smks/persentation/auth/pages/pages_login.dart';

import '../../../core/components/custom_scaffold.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      showBackButton: false,
      toolbarHeight: 110.0,
      appBarTitle: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(50.0)),
            child: Image.asset(
              Assets.icons.notification.path,
              width: 50.0,
              height: 50.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16.0),
          SizedBox(
            width: context.deviceWidth - 160.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FutureBuilder<AuthResponseModel>(
                    future: AuthLocalDataSources().getAuthData(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Text(
                          snapshot.data!.data.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                          overflow: TextOverflow.ellipsis,
                        );
                      } else {
                        return const SizedBox();
                      }
                    }),
                FutureBuilder<AuthResponseModel>(
                    future: AuthLocalDataSources().getAuthData(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Text(
                          snapshot.data!.data.email,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                          overflow: TextOverflow.ellipsis,
                        );
                      } else {
                        return const SizedBox();
                      }
                    }),
              ],
            ),
          ),
          const Spacer(),
          // IconButton(
          //   onPressed: () {
          //     context.pushAndRemoveUntil(const LoginPage(), (route) => false);
          //   },
          //   icon: Assets.icons.logout.image(width: 24.0),
          // ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(30.0),
        children: [
          const SizedBox(height: 16.0),
          const Text(
            'Account',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8.0),
          ProfileMenu(
            label: 'Edit Profile',
            onPressed: () {},
          ),
          ProfileMenu(
            label: 'Help',
            onPressed: () {},
          ),
          ProfileMenu(
            label: 'Privacy & Policy',
            onPressed: () {},
          ),
          ProfileMenu(
            label: 'Term of Service',
            onPressed: () {},
          ),
          const SizedBox(height: 16.0),
          BlocListener<LogoutBloc, LogoutState>(
            listener: (context, state) {
              state.when(
                initial: () {
                  // State awal, tidak perlu aksi
                  print('Initial state');
                },
                loading: () {
                  // Tampilkan indikator loading
                  print('Logout in progress...');
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing logout...')),
                  );
                },
                success: () async {
                  // Logout berhasil
                  print('Logout successful');
                  await AuthLocalDataSources().removeAuthData();
                  if (context.mounted) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPages()),
                    );
                  }
                },
                error: (message) {
                  // Tampilkan error
                  print('Logout failed: $message');
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Logout failed: $message')),
                  );
                },
              );
            },
            child: ProfileMenu(
              label: 'Logout',
              onPressed: () {
                context.read<LogoutBloc>().add(const LogoutEvent.logout());
                print('Logout button clicked');
              },
            ),
          ),
        ],
      ),
    );
  }
}
