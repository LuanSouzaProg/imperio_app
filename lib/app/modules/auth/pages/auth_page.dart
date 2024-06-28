import 'package:flutter/material.dart';

import '../../../shared/components/button_component.dart';
import '../components/auth_divider_component.dart';
import '../components/header_component.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderComponent(),
          const SizedBox(height: 40),
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
          const SizedBox(height: 30),
          const AuthDividerComponent(),
          const SizedBox(height: 30),
          Padding(
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
          )
        ],
      ),
    );
  }
}
