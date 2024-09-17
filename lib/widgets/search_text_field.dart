import 'package:cofee_shop/manager/get_coffees_cubit/get_coffees_cubit.dart';
import 'package:cofee_shop/manager/search_coffee_cubit/search_coffee_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Row(
        children: [
          const Icon(Icons.search, color: Colors.black),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              onChanged: (value) {
                // check if value is not empty
                // if (value.isEmpty) {
                //   BlocProvider.of<GetCoffeesCubit>(context).getCoffees();
                // }
                BlocProvider.of<GetCoffeesCubit>(context)
                    .searchCoffee(productName: value);
              },
              decoration: const InputDecoration(
                hintText: "Search coffee",
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
