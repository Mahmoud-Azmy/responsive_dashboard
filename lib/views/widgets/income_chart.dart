import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        sectionsSpace: 0,
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, p1) {
            activeIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sections: [
          PieChartSectionData(
            value: 40,
            showTitle: false,
            radius: activeIndex == 0 ? 30 : 20,
            color: const Color(0xff208CC8),
          ),
          PieChartSectionData(
            value: 25,
            showTitle: false,
            radius: activeIndex == 1 ? 30 : 20,
            color: const Color(0xff4EB7F2),
          ),
          PieChartSectionData(
            value: 20,
            showTitle: false,
            radius: activeIndex == 2 ? 30 : 20,
            color: const Color(0xff062561),
          ),
          PieChartSectionData(
            value: 22,
            showTitle: false,
            radius: activeIndex == 3 ? 30 : 20,
            color: const Color(0xffE2DECD),
          ),
        ]);
  }
}
