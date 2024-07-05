import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(99),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(4, 4),
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search,
                    size: 16,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(99),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(4, 4),
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Icon(
                        Icons.question_mark_rounded,
                        size: 16,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Ajuda e suporte',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 16),
            ],
          ),
          const SizedBox(height: 24),
          Divider(
            color: Colors.grey.shade300,
          ),
          const SizedBox(height: 20),
          item(context, 'Início', 'assets/drawer/home_Regular_1.svg'),
          item(context, 'Esportes', 'assets/icons_sports/Whistle.svg'),
          item(context, 'Noticias e Dicas', 'assets/drawer/Bookmark.svg'),
          item(context, 'Favoritos', 'assets/drawer/Star.svg'),
          item(context, 'Influenciadores', 'assets/drawer/Users_1.svg'),
          item(context, 'Comparador de odds', 'assets/drawer/Chart.svg'),
          Divider(
            color: Colors.grey.shade300,
          ),
          const SizedBox(height: 20),
          item(context, 'Jogo consciente', 'assets/drawer/Coupon.svg'),
          item(context, 'Privacidade e segurança', 'assets/drawer/Shield.svg'),
        ],
      ),
    );
  }

  Widget item(BuildContext context, String title, String icon) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 20),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              height: 16,
              // ignore: deprecated_member_use
              color: Colors.grey.shade700,
            ),
            const SizedBox(width: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
