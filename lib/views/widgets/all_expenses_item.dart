import 'package:flutter/material.dart';

import '../../models/all_expenses_model.dart';
import 'InActive_and_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemModel, required this.isSelected});
  final AllExpensesItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItem(itemModel: itemModel,)
        : InActiveAllExpensesItem(itemModel: itemModel);
  }
}
