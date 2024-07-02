import 'package:flutter/material.dart';

import '../../../domain/models/matche_model.dart';

class BetsComponent extends StatelessWidget {
  final MatcheModel matcheModel;

  const BetsComponent({super.key, required this.matcheModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              matcheModel.betHome.local,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            Image.asset(
              matcheModel.betHome.image,
              height: 20,
            ),
            Text(
              matcheModel.betHome.odd,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ],
        ),
        Container(
          height: 30,
          width: 1,
          color: Colors.grey,
        ),
        Column(
          children: [
            Text(
              matcheModel.betIntermediate.local,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            Image.asset(
              matcheModel.betIntermediate.image,
            ),
            Text(
              matcheModel.betIntermediate.odd,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
        Container(
          height: 30,
          width: 1,
          color: Colors.grey,
        ),
        Column(
          children: [
            Text(
              matcheModel.betAway.local,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            Image.asset(
              matcheModel.betAway.image,
            ),
            Text(
              matcheModel.betAway.odd,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
