import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/list_popular_championships_component.dart';
import '../components/list_banners_component.dart';
import '../components/list_sports_component.dart';
import '../components/list_games_component.dart';
import '../components/list_tips_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset('assets/logo/imperio_logo.svg'),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            ListSportsComponent(),
            ListBannersComponent(),
            SizedBox(height: 32),
            ListPopularChampionshipsComponent(),
            SizedBox(height: 32),
            ListGamesComponent(),
            SizedBox(height: 32),
            ListTipsComponent(),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
