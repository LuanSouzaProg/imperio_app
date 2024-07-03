import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../bloc/latest_bets_bloc/latest_bets_bloc.dart';

class ListLatestBetsComponent extends StatefulWidget {
  const ListLatestBetsComponent({super.key});

  @override
  State<ListLatestBetsComponent> createState() =>
      _ListLatestBetsComponentState();
}

class _ListLatestBetsComponentState extends State<ListLatestBetsComponent> {
  LatestBetsBloc latestBetsBloc = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Image.asset(
                'assets/latest_best/noto_fire.png',
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 8),
              const Text(
                'Últimas apostas ganhas',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        BlocBuilder<LatestBetsBloc, LatestBetsState>(
          bloc: latestBetsBloc,
          builder: (context, state) {
            if (state is LatestBetsInitialState) {
              latestBetsBloc.add(GetLatestBetsEvent());
            }

            if (state is LatestBetsLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is LatestBetsErrorState) {
              return const Center(
                child: Text('Erro'),
              );
            }

            if (state is LatestBetsSuccessState) {
              var item = state.latestBets;

              return SizedBox(
                height: 110,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: item.length,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: index == 0
                          ? const EdgeInsets.only(left: 0)
                          : const EdgeInsets.only(left: 10),
                      child: Container(
                        width: 310,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                item[index].imageUser,
                                height: 40,
                                width: 40,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item[index].nameUser,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    item[index].description,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        item[index].opponents,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12,
                                        ),
                                      ),
                                      const Text(
                                        ' • ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        item[index].time,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    item[index].betImage,
                                    height: 40,
                                    width: 40,
                                  ),
                                  Text(
                                    item[index].betOdd,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            }

            return Container();
          },
        ),
      ],
    );
  }
}
