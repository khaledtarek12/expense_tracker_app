import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class WelcomeUserWidget extends StatelessWidget {
  const WelcomeUserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: const Color(0xFFFAC766),
          child: Image.asset('assets/images/face.png', width: 28, height: 28),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'welcome!',
              style: TextStyle(
                color: Theme.of(context).colorScheme.outline,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'John Doe',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          icon: const Icon(Iconsax.setting),
          onPressed: () {},
        ),
      ],
    );
  }
}
