import 'package:expense_tracker_app/home/views/widgets/container_salary_widget.dart';
import 'package:expense_tracker_app/home/views/widgets/welcome_user_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          spacing: 20.0,
          children: [WelcomeUserWidget(), ContainerSalaryWidget()],
        ),
      ),
    );
  }
}
