import 'package:flutter/material.dart';

import '../../../shared/components/button_component.dart';

class SocialAuthComponent extends StatelessWidget {
  const SocialAuthComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: ButtonComponent(
            onPressed: () {},
            text: 'Entrar com Google',
            icon: Icons.email,
            needIcon: true,
            background: Colors.grey.shade400,
            textColor: Colors.black,
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: ButtonComponent(
            onPressed: () {},
            text: 'Entrar com Apple',
            icon: Icons.email,
            needIcon: true,
            background: Colors.black,
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
