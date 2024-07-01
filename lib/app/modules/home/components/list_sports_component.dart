import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../bloc/sports_listing_bloc/sports_listing_bloc.dart';

class ListSportsComponent extends StatefulWidget {
  const ListSportsComponent({super.key});

  @override
  State<ListSportsComponent> createState() => _ListSportsComponentState();
}

class _ListSportsComponentState extends State<ListSportsComponent> {
  SportsListingBloc sportsListingBloc = Modular.get();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SportsListingBloc, SportsListingState>(
      bloc: sportsListingBloc,
      builder: (context, state) {
        if (state is SportsListingInitialState) {
          sportsListingBloc.add(GetSportsEvent());
        }

        if (state is SportsListingLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is SportsListingErrorState) {
          return const Center(
            child: Text('Erro'),
          );
        }

        if (state is SportsListingSuccessState) {
          var itens = state.sports;

          return SizedBox(
            height: 48,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: itens.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (context, index) {
                var item = itens[index];

                return Padding(
                  padding: index == 0
                      ? const EdgeInsets.only(left: 0)
                      : const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            item.image,
                            // ignore: deprecated_member_use
                            color: index == 0 ? Colors.black : Colors.black54,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            item.name,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: index == 0 ? Colors.black : Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      index == 0
                          ? Container(
                              height: 4,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            )
                          : const SizedBox.shrink(),
                    ],
                  ),
                );
              },
            ),
          );
        }

        return Container();
      },
    );
  }
}
