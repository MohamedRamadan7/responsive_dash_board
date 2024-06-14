import 'package:flutter/material.dart';

import '../../utils/size_config.dart';
import 'income_chart.dart';
import 'income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1250
        ? const SizedBox()
        : const Row(
            children: [
              Expanded(child: IncomeShart()),
              Expanded(flex: 2, child: IncomeDetails())
            ],
          );
  }
}