import 'package:cofee_shop/manager/get_coffees_cubit/get_coffees_cubit.dart';
import 'package:cofee_shop/manager/search_coffee_cubit/search_coffee_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'my_bloc_observer.dart';
import 'views/coffee_home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // init bloc observer
  Bloc.observer = MyBlocObserver();
  runApp(const CoffeeApp());
}

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetCoffeesCubit()..getCoffees(),
        ),
        BlocProvider(
          create: (context) => SearchCoffeeCubit(),
        ),
      ],
      child: MaterialApp(
        home: const CoffeeHomePage(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.soraTextTheme(),
        ),
      ),
    );
  }
}
