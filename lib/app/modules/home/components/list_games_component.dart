import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../bloc/matches_bloc/matches_bloc.dart';
import 'bets_component.dart';
import 'result_game_component.dart';
import 'teams_component.dart';

class ListGamesComponent extends StatefulWidget {
  const ListGamesComponent({super.key});

  @override
  State<ListGamesComponent> createState() => _ListGamesComponentState();
}

class _ListGamesComponentState extends State<ListGamesComponent> {
  MatchesBloc matchesBloc = Modular.get();

  PageController pageController = PageController();
  int indexSelect = 0;

  void onItemTapped(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 100),
      curve: Curves.easeInOut,
    );

    indexSelect = index;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<MatchesBloc, MatchesState>(
          bloc: matchesBloc,
          builder: (context, state) {
            if (state is MatchesInitialState) {
              matchesBloc.add(
                GetMatchesEvent(date: '2022-01-01'),
              );
            }

            if (state is MatchesLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is MatchesErrorState) {
              return const Center(
                child: Text('Erro'),
              );
            }

            if (state is MatchesSuccessState) {
              var item = state.matches;

              return Column(
                children: [
                  SizedBox(
                    height: 48,
                    child: ListView.builder(
                      itemCount: 1,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
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
                                color: indexSelect == index
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  item[index].date,
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
                    height: MediaQuery.of(context).size.height * 0.85,
                    child: PageView.builder(
                      itemCount: item.length,
                      controller: pageController,
                      itemBuilder: (context, index) {
                        return ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Modular.to.pushNamed('/matche_module/');
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10)
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
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 24),
                                      TeamsComponent(
                                        matcheModel: item[index],
                                      ),
                                      const SizedBox(height: 14),
                                      ResultGameComponent(
                                        matcheModel: item[index],
                                      ),
                                      const SizedBox(height: 14),
                                      BetsComponent(
                                        matcheModel: item[index],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16),
                                        child: Divider(),
                                      ),
                                      const Text(
                                        'Ver mais',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(height: 24),
                                    ],
                                  ),
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

            return Container();
          },
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Acompanhe todas as partidas',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
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
