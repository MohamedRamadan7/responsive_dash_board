import 'package:flutter/material.dart';

import 'all_expenses.dart';
import 'custom_drawer.dart';
import 'quick_invoice.dart';

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
            child: Column(
              children: [
                AllExpenses(),
                SizedBox(height: 24),
                QuickInvoice(),
              ],
            ))
      ],
    );
  }
}
