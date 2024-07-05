import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            onPressed: () {
              Modular.to.pushReplacementNamed('/home_module/');
            },
            text: 'Entrar com Google',
            icon: SvgPicture.asset(
              'assets/onboarding/google.svg',
            ),
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
            icon: SvgPicture.asset(
              'assets/onboarding/apple.svg',
            ),
            needIcon: true,
            background: Colors.black,
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
