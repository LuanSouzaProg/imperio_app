import 'package:flutter/material.dart';

class TeamsComponent extends StatelessWidget {
  const TeamsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Column(
          children: [
            Icon(
              Icons.circle,
              size: 50,
            ),
            SizedBox(height: 20),
            Text('São Paulo'),
          ],
        ),
        Column(
          children: [
            const Text('Ao vivo•'),
            const SizedBox(height: 10),
            Container(
              height: 20,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(),
              ),
              child: const Text('60'),
            ),
          ],
        ),
        const Column(
          children: [
            Icon(
              Icons.circle,
              size: 50,
            ),
            SizedBox(height: 20),
            Text('São Paulo'),
          ],
        ),
      ],
    );
  }
}
