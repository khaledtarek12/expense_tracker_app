import 'package:expense_tracker_app/status/views/widgets/status_chart.dart';
import 'package:expense_tracker_app/status/views/widgets/transaction_status_app_bar.dart';
import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          spacing: 20,
          children: [TransactionStatusAppBar(), StatusChart()],
        ),
      ),
    );
  }
}
