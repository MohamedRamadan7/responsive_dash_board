import 'package:flutter/material.dart';

import 'all_expenses_quick_invoice_section.dart';
import 'income_section.dart';
import 'my_cards_and_transaction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesQuickInvoiceSection(),
          SizedBox(height: 24),
          MyCardsAndTransactionHistorySection(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}
