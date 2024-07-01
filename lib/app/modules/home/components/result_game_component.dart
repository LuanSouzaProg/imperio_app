import 'package:flutter/material.dart';

import '../../../domain/models/matche_model.dart';

class ResultGameComponent extends StatelessWidget {
  final MatcheModel matcheModel;

  const ResultGameComponent({super.key, required this.matcheModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          matcheModel.homeScore.toString(),
          style: const TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Text(
          ' : ',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w500,
            color: Colors.black54,
          ),
        ),
        Text(
          matcheModel.awayScore.toString(),
          style: const TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
