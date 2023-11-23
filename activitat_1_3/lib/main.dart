import 'package:activitat_1_3/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'styles/app_styles.dart';


void main() {
  runApp(const FitnessTime());
}

class FitnessTime extends StatelessWidget {
  const FitnessTime({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitness Time',
      theme: ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: AppStyles.persianPink,
              secondary: AppStyles.majorelleBlue,
              tertiary: AppStyles.heliotrope,
            ),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppStyles.persianPink,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        useMaterial3: false,
      ),
      home: const HomePage(title: 'Fitness Time'),
    );
  }
}
