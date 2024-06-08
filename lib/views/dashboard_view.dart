import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/Dashboard_desktop_layout.dart';
import 'package:responsive_dash_board/views/widgets/adaptive_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobilelayout: (context) => const SizedBox(),
          tabletLayout: (context) => const SizedBox(),
          desktopLayout: (context) => const DashboardDesktopLayout()),
    );
  }
}
