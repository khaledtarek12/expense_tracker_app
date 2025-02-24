import 'package:expense_tracker_app/home/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashFactory: NoSplash.splashFactory,
        textTheme: GoogleFonts.poppinsTextTheme(),
        colorScheme: const ColorScheme.light(
          surface: Color(0xffF3F5F7),
          onSurface: Colors.black,
          primary: Color(0xff00b2e7),
          secondary: Color(0xffe064f7),
          tertiary: Color(0xffff8d6c),
          outline: Color(0xFF7F8B9B),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
