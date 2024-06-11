import 'package:flutter/material.dart';

import 'all_expenses_quick_invoice_section.dart';
import 'custom_drawer.dart';
import 'my_cards_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: AllExpensesQuickInvoiceSection(),
            )),
        SizedBox(width: 24),
        Expanded(child: MyCardsSection())
      ],
    );
  }
}
