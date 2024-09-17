import 'package:flutter/material.dart';

import '../models/coffee_model.dart';
import 'coffee_card.dart';

class CoffeeGrid extends StatelessWidget {
  const CoffeeGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
            coffee: coffeeList[index],
          );
        },
        childCount: coffeeList.length,
      ),
    );
  }
}
