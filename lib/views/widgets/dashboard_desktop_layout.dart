import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/my_cards_and_transaction_history_section.dart';

import 'all_expenses_quick_invoice_section.dart';
import 'custom_drawer.dart';
import 'income_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 20),
        Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 40),
                child: AllExpensesQuickInvoiceSection(),
              ),
            )),
        SizedBox(width: 15),
        Expanded(
            child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              MyCardsAndTransactionHistorySection(),
              SizedBox(height: 24),
              IncomeSection(),
            ],
          ),
        ))
      ],
    );
  }
}
