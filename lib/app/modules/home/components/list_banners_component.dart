import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../bloc/banners_bloc/banners_bloc.dart';

class ListBannersComponent extends StatefulWidget {
  const ListBannersComponent({super.key});

  @override
  State<ListBannersComponent> createState() => _ListBannersComponentState();
}

class _ListBannersComponentState extends State<ListBannersComponent> {
  BannersBloc bannersBloc = Modular.get();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BannersBloc, BannersState>(
      bloc: bannersBloc,
      builder: (context, state) {
        if (state is BannersInitialState) {
          bannersBloc.add(GetBannersEvent());
        }

        if (state is BannersLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is BannersErrorState) {
          return const Center(
            child: Text('Erro'),
          );
        }

        if (state is BannersSuccessState) {
          var itens = state.banners;

          return SizedBox(
            height: 166,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: itens.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (context, index) {
                return Padding(
                  padding: index == 0
                      ? const EdgeInsets.only(left: 0)
                      : const EdgeInsets.only(left: 20),
                  child: Container(
                    width: 270,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: index == 1 ? Colors.black26 : Colors.yellow,
                      image: DecorationImage(
                        alignment: AlignmentDirectional.centerEnd,
                        image: AssetImage(itens[index].image),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 140,
                            child: Text(
                              itens[index].name,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 140,
                            child: Text(
                              itens[index].subtitle,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54),
                            ),
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
    );
  }
}
