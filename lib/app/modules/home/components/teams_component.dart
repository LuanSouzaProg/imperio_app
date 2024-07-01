import 'package:flutter/material.dart';

import '../../../domain/models/matche_model.dart';

class TeamsComponent extends StatelessWidget {
  final MatcheModel matcheModel;

  const TeamsComponent({super.key, required this.matcheModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Image.asset(matcheModel.homeLogo, height: 60),
            const SizedBox(height: 10),
            Text(
              matcheModel.homePlayer,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              matcheModel.date,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 36,
              width: 72,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.black45,
                ),
              ),
              child: Text(
                matcheModel.currentTime,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Image.asset(matcheModel.awayLogo, height: 60),
            const SizedBox(height: 10),
            Text(
              matcheModel.awayPlayer,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
