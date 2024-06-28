import 'package:flutter/material.dart';

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
      duration: const Duration(milliseconds: 300),
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
          height: 40,
          child: ListView.builder(
            itemCount: dates.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => onItemTapped(index),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    alignment: Alignment.center,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
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
        const SizedBox(height: 16),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
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
                        borderRadius: BorderRadius.circular(20),
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
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
