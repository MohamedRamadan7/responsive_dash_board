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
    return PieChart(getShartData());
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
            value: 40,
            showTitle: false,
            radius: isActiveRadius == 0 ? 60 : 50,
            color: const Color(0xff208CC8),
          ),
          PieChartSectionData(
            value: 25,
            showTitle: false,
            radius: isActiveRadius == 1 ? 60 : 50,
            color: const Color(0xff4EB7F2),
          ),
          PieChartSectionData(
            value: 20,
            showTitle: false,
            radius: isActiveRadius == 2 ? 60 : 50,
            color: const Color(0xff064061),
          ),
          PieChartSectionData(
            value: 15,
            showTitle: false,
            radius: isActiveRadius == 3 ? 60 : 50,
            color: const Color(0xffE2DECD),
          ),
        ]);
  }
}
