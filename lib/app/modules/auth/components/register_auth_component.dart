import 'package:flutter/material.dart';

import '../../../shared/components/button_component.dart';

class RegisterAuthComponent extends StatelessWidget {
  const RegisterAuthComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonComponent(
            onPressed: () {},
            text: ' E-mail ',
            background: Colors.white,
            needBorder: true,
          ),
          ButtonComponent(
            onPressed: () {},
            text: 'Telefone',
            background: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
