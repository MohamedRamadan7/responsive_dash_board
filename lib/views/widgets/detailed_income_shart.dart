import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeShart extends StatefulWidget {
  const DetailedIncomeShart({super.key});

  @override
  State<DetailedIncomeShart> createState() => _DetailedIncomeShartState();
}

class _DetailedIncomeShartState extends State<DetailedIncomeShart> {
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
            value: 40,
            showTitle: false,
            radius: isActiveRadius == 0 ? 35 : 30,
            color: const Color(0xff208CC8),
          ),
          PieChartSectionData(
            value: 25,
            showTitle: false,
            radius: isActiveRadius == 1 ? 35 : 30,
            color: const Color(0xff4EB7F2),
          ),
          PieChartSectionData(
            value: 20,
            showTitle: false,
            radius: isActiveRadius == 2 ? 35 : 30,
            color: const Color(0xff064061),
          ),
          PieChartSectionData(
            value: 15,
            showTitle: false,
            radius: isActiveRadius == 3 ? 35 : 30,
            color: const Color(0xffE2DECD),
          ),
        ]);
  }
}
