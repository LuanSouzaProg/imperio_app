import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10).copyWith(
        top: 8,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Padding(
          padding: EdgeInsets.only(left: 20, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Entre',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                'em sua conta',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 6),
              Text(
                'Acompanhe seus jogos,',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Text(
                'campeonatos e times favoritos',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
