import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
          SizedBox(
            width: 145,
            child: ButtonComponent(
              onPressed: () {
                Modular.to.pushNamed(
                  '/register',
                  arguments: true,
                );
              },
              text: ' E-mail ',
              background: Colors.white,
              needBorder: true,
            ),
          ),
          SizedBox(
            width: 145,
            child: ButtonComponent(
              onPressed: () {},
              text: 'Telefone',
              background: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
