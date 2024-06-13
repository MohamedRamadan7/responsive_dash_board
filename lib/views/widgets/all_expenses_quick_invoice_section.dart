import 'package:flutter/material.dart';

import 'all_expenses.dart';
import 'quick_invoice.dart';

class AllExpensesQuickInvoiceSection extends StatelessWidget {
  const AllExpensesQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(height: 20),
        QuickInvoice(),
      ],
    );
  }
}