import 'package:flutter/material.dart';

import '../components/register_auth_component.dart';
import '../components/auth_divider_component.dart';
import '../components/social_auth_component.dart';
import '../components/header_component.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          HeaderComponent(),
          SizedBox(height: 40),
          SocialAuthComponent(),
          SizedBox(height: 30),
          AuthDividerComponent(),
          SizedBox(height: 30),
          RegisterAuthComponent(),
        ],
      ),
    );
  }
}
