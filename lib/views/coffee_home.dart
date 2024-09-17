import 'package:flutter/material.dart';

import '../widgets/coffee_grid.dart';
import '../widgets/custom_sliver_app_bar.dart';

class CoffeeHomePage extends StatelessWidget {
  const CoffeeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(),
          CoffeeGrid(),
        ],
      ),
    );
  }
}
