import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeShart extends StatefulWidget {
  const IncomeShart({super.key});

  @override
  State<IncomeShart> createState() => _IncomeShartState();
}

class _IncomeShartState extends State<IncomeShart> {
  int isActiveRadius = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getShartData()));
  }

  PieChartData getShartData() {
    return PieChartData(
        sectionsSpace: 0,
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            isActiveRadius =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sections: [
          PieChartSectionData(
            showTitle: false,
            value: 40,
            radius: isActiveRadius == 0 ? 40 : 35,
            color: const Color(0xff208CC8),
          ),
          PieChartSectionData(
            showTitle: false,
            value: 25,
            radius: isActiveRadius == 1 ? 40 : 35,
            color: const Color(0xff4EB7F2),
          ),
          PieChartSectionData(
            showTitle: false,
            value: 20,
            radius: isActiveRadius == 2 ? 40 : 35,
            color: const Color(0xff064061),
          ),
          PieChartSectionData(
            showTitle: false,
            value: 22,
            radius: isActiveRadius == 3 ? 40 : 35,
            color: const Color(0xffE2DECD),
          ),
        ]);
  }
}
