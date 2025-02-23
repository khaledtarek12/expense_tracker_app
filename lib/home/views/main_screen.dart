import 'package:expense_tracker_app/constants/items.dart';
import 'package:expense_tracker_app/home/views/widgets/container_salary_widget.dart';
import 'package:expense_tracker_app/home/views/widgets/transaction_item_widget.dart';
import 'package:expense_tracker_app/home/views/widgets/welcome_user_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          spacing: 30.0,
          children: [
            const WelcomeUserWidget(),
            const ContainerSalaryWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transactions',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  'View All',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.outline,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: Items.transactionItems.length,
                itemBuilder: (context, index) {
                  return TransactionItemWidget(
                    transactionItem: Items.transactionItems[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
