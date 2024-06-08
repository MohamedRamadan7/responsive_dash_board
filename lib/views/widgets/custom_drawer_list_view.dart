import 'package:flutter/material.dart';

import '../../models/drawer_item_mode.dart';
import 'drawer_item.dart';

class CustomDrawerListView extends StatelessWidget {
  const CustomDrawerListView({
    super.key,
    required this.items,
  });

  final List<DrawerItemModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 20),
        child: DrawerItem(drawerItemModel: items[index]),
      ),
      itemCount: items.length,
    );
  }
}
