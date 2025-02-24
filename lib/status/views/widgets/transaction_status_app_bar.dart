import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TransactionStatusAppBar extends StatelessWidget {
  const TransactionStatusAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            padding: const EdgeInsets.all(2),
            backgroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          icon: Material(
            color: Theme.of(context).colorScheme.outline,
            borderRadius: BorderRadius.circular(8),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 4),
              child: Icon(Iconsax.arrow_left, size: 15),
            ),
          ),
          color: Colors.white,
          onPressed: () {},
        ),
        const Text(
          'Transaction',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
        ),
        const Spacer(),
        IconButton(
          style: IconButton.styleFrom(
            padding: const EdgeInsets.all(2),
            backgroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          icon: const Icon(Iconsax.setting_5),
          color: Theme.of(context).colorScheme.outline,
          onPressed: () {},
        ),
      ],
    );
  }
}
