import 'dart:math';

import 'package:expense_tracker_app/home/views/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              // stops: const [0.15, 0.45, 0.65],
              transform: const GradientRotation(pi / 4),
              colors: [
                Theme.of(context).colorScheme.tertiary,
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.primary,
              ],
            ),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          elevation: 3,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Iconsax.category5, size: 30),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Iconsax.chart_215, size: 30),
              label: 'Settings',
            ),
          ],
        ),
      ),
      body: const MainScreen(),
    );
  }
}
