import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StatusChart extends StatelessWidget {
  const StatusChart({super.key});

  @override
  Widget build(BuildContext context) {
    List<double> values = [2, 4.2, 4, 5.6, 4, 3.6, 2, 1];

    BarChartGroupData makeBar(int x, double y) {
      return BarChartGroupData(
        x: x,
        barRods: [
          BarChartRodData(
            gradient: LinearGradient(
              transform: const GradientRotation(pi / 40),
              colors: [
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.tertiary,
              ],
            ),
            toY: y,
            width: 20,
            borderRadius: BorderRadius.circular(25),
            backDrawRodData: BackgroundBarChartRodData(
              show: true,
              toY: 6,
              color: const Color(0xFFE8EEEE),
            ),
          ),
        ],
      );
    }

    List<BarChartGroupData> chartsGroup() =>
        List.generate(values.length, (index) => makeBar(index, values[index]));

    BarChartData barChartData() {
      return BarChartData(
        titlesData: FlTitlesData(
          show: true,
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 38,
              getTitlesWidget: getLeftWidget,
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 38,
              getTitlesWidget: getBottomWidget,
            ),
          ),
          topTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          rightTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),
        borderData: FlBorderData(show: false),
        gridData: const FlGridData(show: false),
        barGroups: chartsGroup(),
        barTouchData: BarTouchData(
          touchTooltipData: BarTouchTooltipData(
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              return BarTooltipItem(
                '\$${rod.toY.toStringAsFixed(2)}',
                const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
          ),
        ),
      );
    }

    return Container(
      height: MediaQuery.of(context).size.width + 40,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20.0),
          const Text(
            '01 Jan 2021 - 01 April 2021',
            style: TextStyle(
              fontSize: 17.0,
              color: Color(0xFF4C628D),
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 10.0),
          const Text(
            '\$3500.00',
            style: TextStyle(
              fontSize: 30.0,
              color: Color(0xFF4C628D),
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 15.0),
          Expanded(child: BarChart(barChartData())),
        ],
      ),
    );
  }

  Widget getBottomWidget(double value, TitleMeta meta) {
    String text = '0${value.toInt() + 1}';
    return SideTitleWidget(
      meta: meta,
      space: 16,
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF4C628D),
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget getLeftWidget(double value, TitleMeta meta) {
    String text = '\$ ${value.toInt()}k';
    return SideTitleWidget(
      meta: meta,
      space: 0,
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF4C628D),
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
