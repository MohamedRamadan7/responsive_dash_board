import 'package:flutter/material.dart';

import '../../models/income_details_model.dart';
import 'income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const List<IncomeDetailsModel> items = [
    IncomeDetailsModel(
        color: Color(0xff208CC8), title: 'Design service', value: '40%'),
    IncomeDetailsModel(
        color: Color(0xff4EB7F2), title: 'Design product', value: '40%'),
    IncomeDetailsModel(
        color: Color(0xff064061), title: 'Product royalti', value: '20%'),
    IncomeDetailsModel(color: Color(0xffE2DECD), title: 'Other', value: '22%'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          items.map((e) => IncomeDetailsItem(incomeDetailsModel: e)).toList(),
    );
  }
}
