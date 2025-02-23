import 'package:expense_tracker_app/home/views/models/transaction_item_model.module.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Items {
  static List<TransactionItemModel> transactionItems = [
    TransactionItemModel(
      title: 'Food',
      icon: Icons.fastfood_rounded,
      color: "0xFFFFC061",
      amount: '-\$45.00',
      date: 'Today',
    ),
    TransactionItemModel(
      title: 'Shopping',
      icon: Icons.shopping_bag_rounded,
      color: "0xFF8325D9",
      amount: '-\$280.00',
      date: 'Today',
    ),
    TransactionItemModel(
      title: 'Entertainment',
      icon: Iconsax.ticket_star,
      color: "0xFFFA2A38",
      amount: '-\$60.00',
      date: 'Yesterday',
    ),
    TransactionItemModel(
      title: 'Travel',
      icon: Icons.airplanemode_on_rounded,
      color: "0xFF00B69C",
      amount: '-\$250.00',
      date: 'Yesterday',
    ),
  ];
}
