import 'package:active_life/colors.dart';
import 'package:active_life/main_screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        useMaterial3: true,
        textTheme: GoogleFonts.atkinsonHyperlegibleTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: yellowColor),
      ),
      home: const SplashScreen(),
    );
  }
}

