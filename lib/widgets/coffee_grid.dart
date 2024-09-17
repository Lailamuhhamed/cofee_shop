import 'package:cofee_shop/manager/get_coffees_cubit/get_coffees_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/coffee_model.dart';
import 'coffee_card.dart';

class CoffeeGrid extends StatelessWidget {
  const CoffeeGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetCoffeesCubit, GetCoffeesState>(
      builder: (context, state) {
        var cubit = BlocProvider.of<GetCoffeesCubit>(context);
        if (state is GetCoffeesSuccessState ||
            state is SearchCoffeeSuccessState) {
          return SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 0.75,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return CoffeeCard(
                  coffee: cubit.coffees[index],
                );
              },
              childCount: cubit.coffees.length,
            ),
          );
        } else if (state is GetCoffeesFailureState ||
            state is SearchCoffeeFailureState) {
          return const SliverToBoxAdapter(
            child: Text('something went wrong '),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
