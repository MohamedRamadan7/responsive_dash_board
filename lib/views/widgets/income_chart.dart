import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

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
            titlePositionPercentageOffset: isActiveRadius == 0 ? 1.5 : null,
            title: isActiveRadius == 0 ? 'Design service' : '40%',
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: isActiveRadius == 0 ? null : Colors.white,
            ),
            value: 40,
            radius: isActiveRadius == 0 ? 40 : 35,
            color: const Color(0xff208CC8),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: isActiveRadius == 1 ? 2.7 : null,
            title: isActiveRadius == 1 ? 'Design product' : '25%',
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: isActiveRadius == 1 ? null : Colors.white,
            ),
            value: 25,
            radius: isActiveRadius == 1 ? 40 : 35,
            color: const Color(0xff4EB7F2),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: isActiveRadius == 2 ? 1.4 : null,
            title: isActiveRadius == 2 ? 'Product royalti' : '20%',
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: isActiveRadius == 2 ? null : Colors.white,
            ),
            value: 20,
            radius: isActiveRadius == 2 ? 40 : 35,
            color: const Color(0xff064061),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: isActiveRadius == 3 ? 1.5 : null,
            title: isActiveRadius == 3 ? 'Other' : '22%',
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: isActiveRadius == 3 ? null : Colors.white,
            ),
            value: 22,
            radius: isActiveRadius == 3 ? 40 : 35,
            color: const Color(0xffE2DECD),
          ),
        ]);
  }
}
