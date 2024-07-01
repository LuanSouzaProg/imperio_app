import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../bloc/popular_championships_bloc/popular_championships_bloc.dart';

class ListPopularChampionshipsComponent extends StatefulWidget {
  const ListPopularChampionshipsComponent({super.key});

  @override
  State<ListPopularChampionshipsComponent> createState() =>
      _ListPopularChampionshipsComponentState();
}

class _ListPopularChampionshipsComponentState
    extends State<ListPopularChampionshipsComponent> {
  PopularChampionshipsBloc popularChampionshipsBloc = Modular.get();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: popularChampionshipsBloc,
      builder: (context, state) {
        if (state is PopularChampionshipsInitialState) {
          popularChampionshipsBloc.add(GetPopularChampionshipsEvent());
        }

        if (state is PopularChampionshipsLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is PopularChampionshipsErrorState) {
          return const Center(
            child: Text('Erro'),
          );
        }

        if (state is PopularChampionshipsSuccessState) {
          var item = state.popularChampionships;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Campeonatos populares',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: item.length,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: index == 0
                          ? const EdgeInsets.only(left: 0)
                          : const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.yellow.shade100,
                        ),
                        child: Image.asset(
                          item[index].image,
                          width: 30,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        }

        return Container();
      },
    );
  }
}
