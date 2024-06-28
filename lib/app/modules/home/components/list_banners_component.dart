import 'package:flutter/material.dart';

class ListBannersComponent extends StatefulWidget {
  const ListBannersComponent({super.key});

  @override
  State<ListBannersComponent> createState() => _ListBannersComponentState();
}

class _ListBannersComponentState extends State<ListBannersComponent> {
  List<String> itens = [
    'Campeonatos\nPopulares',
    'NBA',
    'NFL',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: itens.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.yellow,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 40),
                child: Text(
                  itens[index],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
