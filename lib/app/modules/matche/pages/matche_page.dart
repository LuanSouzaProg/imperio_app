import 'package:flutter/material.dart';

import '../components/matche_card_component.dart';

class MatchePage extends StatefulWidget {
  const MatchePage({super.key});

  @override
  State<MatchePage> createState() => _MatchesPageState();
}

class _MatchesPageState extends State<MatchePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Partida',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        elevation: 1,
      ),
      body: const Column(
        children: [
          MatcheCardComponent(),
        ],
      ),
    );
  }
}
