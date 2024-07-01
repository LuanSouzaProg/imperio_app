import 'package:flutter/material.dart';
import 'package:imperio/app/modules/home/components/bets_component.dart';

import 'result_game_component.dart';
import 'teams_component.dart';

class ListGamesComponent extends StatefulWidget {
  const ListGamesComponent({super.key});

  @override
  State<ListGamesComponent> createState() => _ListGamesComponentState();
}

class _ListGamesComponentState extends State<ListGamesComponent> {
  List<String> dates = [
    'Live',
    'Hoje',
    '01/11',
    '02/11',
  ];

  int indexSelect = 0;

  PageController pageController = PageController();

  void onItemTapped(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 100),
      curve: Curves.easeInOut,
    );

    setState(() {
      indexSelect = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 48,
          child: ListView.builder(
            itemCount: dates.length,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => onItemTapped(index),
                child: Padding(
                  padding: index == 0
                      ? const EdgeInsets.only(left: 0)
                      : const EdgeInsets.only(left: 20),
                  child: Container(
                    alignment: Alignment.center,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(),
                      color: indexSelect == index ? Colors.black : Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        dates[index],
                        style: TextStyle(
                          color: indexSelect == index
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.8,
          child: PageView.builder(
            itemCount: dates.length,
            controller: pageController,
            onPageChanged: (value) => setState(() => indexSelect = value),
            itemBuilder: (context, index) {
              return ListView.builder(
                shrinkWrap: false,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10)
                        .copyWith(bottom: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
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
                      child: const Column(
                        children: [
                          SizedBox(height: 20),
                          TeamsComponent(),
                          SizedBox(height: 20),
                          ResultGameComponent(),
                          SizedBox(height: 20),
                          BetsComponent(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Divider(),
                          ),
                          Text(
                            'Ver mais',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Acompanhe todas as partidas',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.yellow,
                ),
              ),
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
