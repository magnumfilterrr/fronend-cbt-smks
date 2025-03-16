// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:ujian_online_smks/core/assets/assets.gen.dart';
import 'package:ujian_online_smks/core/extensions/build_context_ext.dart';
import 'package:ujian_online_smks/persentation/home/widgets/header_home.dart';
import 'package:ujian_online_smks/persentation/home/widgets/menu_home.dart';
import 'package:ujian_online_smks/persentation/home/widgets/title_section.dart';
import 'package:ujian_online_smks/persentation/ujian/pages/ujian_pages.dart';
// import 'package:kiosk_mode/kiosk_mode.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const HeaderHome(),
          const SizedBox(height: 24.0),
          TitleSection(
            title: 'Beranda',
            onSeeAllTap: () {},
          ),
          const SizedBox(height: 16.0),
          GridView(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 24.0,
            ),
            children: [
              MenuHome(
                imagePath: Assets.images.menu.aboutUs.path,
                label: 'About Us',
                onPressed: () {
                  // context.push(const AboutUsPage());
                },
              ),
              MenuHome(
                imagePath: Assets.images.menu.tips.path,
                label: 'Tips & Tricks ',
                onPressed: () {
                  // context.push(const TipsAndTricksPage());
                },
              ),
              MenuHome(
                imagePath: Assets.images.menu.materi.path,
                label: 'Ujian',
                onPressed: () {
                  context.push(const UjianPage());
                },
              ),
              MenuHome(
                imagePath: Assets.images.menu.quiz.path,
                label: 'Materi',
                onPressed: () async {
                  // await startKioskMode();
                  // context.push(const QuizListPage());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
