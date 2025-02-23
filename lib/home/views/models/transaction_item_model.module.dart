import 'package:flutter/material.dart';

class TransactionItemModel {
  final String title;
  final IconData icon;
  final String amount;
  final String date;
  final String color;

  TransactionItemModel({
    required this.title,
    required this.icon,
    required this.amount,
    required this.date,
    required this.color,
  });

  // to json
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'icon': icon.codePoint,
      'amount': amount,
      'date': date,
      'color': color,
    };
  }

  // from json
  factory TransactionItemModel.fromJson(Map<String, dynamic> json) {
    return TransactionItemModel(
      title: json['title'],
      icon: IconData(json['icon'], fontFamily: 'MaterialIcons'),
      amount: json['amount'],
      date: json['date'],
      color: json['color'],
    );
  }
}
