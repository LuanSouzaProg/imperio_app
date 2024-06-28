import 'package:flutter/material.dart';

class ListPopularChampionshipsComponent extends StatefulWidget {
  const ListPopularChampionshipsComponent({super.key});

  @override
  State<ListPopularChampionshipsComponent> createState() =>
      _ListPopularChampionshipsComponentState();
}

class _ListPopularChampionshipsComponentState
    extends State<ListPopularChampionshipsComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Campeonatos populares',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 80,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.yellow.shade100,
                  ),
                  child: const Icon(
                    Icons.circle,
                    size: 70,
                    color: Colors.black38,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
