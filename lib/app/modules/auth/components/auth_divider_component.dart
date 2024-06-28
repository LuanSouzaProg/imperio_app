import 'package:flutter/material.dart';

class AuthDividerComponent extends StatelessWidget {
  const AuthDividerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          child: const Divider(),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text('ou entre com'),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          child: const Divider(),
        ),
      ],
    );
  }
}
