import 'package:flutter/material.dart';

class ListSportsComponent extends StatefulWidget {
  const ListSportsComponent({super.key});

  @override
  State<ListSportsComponent> createState() => _ListSportsComponentState();
}

class _ListSportsComponentState extends State<ListSportsComponent> {
  List<String> itens = [
    'Todos',
    'Futebol',
    'Volei',
    'Basquete',
    'Handebol',
    'Futebol Americano',
    'Futebol de Campo',
    'Futebol de Campo',
    'Futebol de Campo',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: itens.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(Icons.sports),
                    const SizedBox(width: 4),
                    Text(itens[index]),
                  ],
                ),
                Container(
                  height: 4,
                  width: 40,
                  color: Colors.black,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
