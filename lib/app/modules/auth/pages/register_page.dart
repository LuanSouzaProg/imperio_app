import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/components/button_component.dart';

class RegisterPage extends StatefulWidget {
  final bool isEmail;

  const RegisterPage({super.key, required this.isEmail});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.isEmail ? 'Qual o seu e-mail?' : 'Qual sua senha?',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 22),
            TextField(
              decoration: InputDecoration(
                labelText: widget.isEmail ? 'Email' : 'Senha',
                labelStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: ButtonComponent(
                onPressed: () {
                  if (widget.isEmail) {
                    Modular.to.pushNamed(
                      '/register',
                      arguments: false,
                    );
                  } else {
                    Modular.to.pop();
                    Modular.to.pop();
                  }
                },
                background: Colors.yellow,
                text: 'Continuar',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
