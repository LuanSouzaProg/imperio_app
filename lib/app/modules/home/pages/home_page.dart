import 'package:flutter/material.dart';

import '../components/list_popular_championships_component.dart';
import '../components/list_banners_component.dart';
import '../components/list_sports_component.dart';
import '../components/list_games_component.dart';

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
        title: const Text(
          'Império',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            ListSportsComponent(),
            ListBannersComponent(),
            SizedBox(height: 20),
            ListPopularChampionshipsComponent(),
            SizedBox(height: 20),
            ListGamesComponent(),
          ],
        ),
      ),
    );
  }
}
