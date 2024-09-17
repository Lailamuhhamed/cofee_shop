import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'views/coffee_home.dart';

void main() {
  runApp(const CoffeeApp());
}

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CoffeeHomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.soraTextTheme(),
      ),
    );
  }
}
