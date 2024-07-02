import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../bloc/tips_bloc/tips_bloc.dart';

class ListTipsComponent extends StatefulWidget {
  const ListTipsComponent({super.key});

  @override
  State<ListTipsComponent> createState() => _ListTipsComponentState();
}

class _ListTipsComponentState extends State<ListTipsComponent> {
  TipsBloc tipsBloc = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Dicas',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              Text(
                'Ver todas',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        BlocBuilder<TipsBloc, TipsState>(
          bloc: tipsBloc,
          builder: (context, state) {
            if (state is TipsInitialState) {
              tipsBloc.add(GetTipsEvent());
            }

            if (state is TipsLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is TipsErrorState) {
              return const Center(
                child: Text('Erro'),
              );
            }

            if (state is TipsSuccessState) {
              var item = state.tips;

              return SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: item.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(
                    bottom: 10,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: index == 0
                          ? const EdgeInsets.only(left: 0)
                          : const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 225,
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
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                image: DecorationImage(
                                  image: AssetImage(item[index].image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              height: 120,
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                item[index].title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                item[index].description,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 30,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: item[index].sports.length,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: index == 0
                                        ? const EdgeInsets.only(left: 0)
                                        : const EdgeInsets.only(left: 10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 6,
                                          vertical: 4,
                                        ),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              item[index].sports[index].image,
                                            ),
                                            const SizedBox(width: 5),
                                            Text(
                                              item[index].sports[index].name,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
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
