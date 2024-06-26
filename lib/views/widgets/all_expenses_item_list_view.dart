import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';

import '../../models/all_expenses_model.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});
  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          child: GestureDetector(
        onTap: () {
          updateIdex(0);
        },
        child: AllExpensesItem(
          itemModel: items[0],
          isSelected: selectedIndex == 0,
        ),
      )),
      const SizedBox(width: 10),
      Expanded(
          child: GestureDetector(
        onTap: () {
          updateIdex(1);
        },
        child: AllExpensesItem(
          itemModel: items[1],
          isSelected: selectedIndex == 1,
        ),
      )),
      const SizedBox(width: 10),
      Expanded(
          child: GestureDetector(
        onTap: () {
          updateIdex(2);
        },
        child: AllExpensesItem(
          itemModel: items[2],
          isSelected: selectedIndex == 2,
        ),
      )),
    ]);
    // return Row(
    //   // children:items.map((e) => Expanded(child: AllExpensesItem(itemModel: e))).toList(),
    //   children: items.asMap().entries.map((e) {
    //     int index = e.key;
    //     var item = e.value;
    //     return Expanded(
    //         child: GestureDetector(
    //       onTap: () {
    //         updateIdex(index);
    //       },
    //       child: Padding(
    //         padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
    //         child: AllExpensesItem(
    //           itemModel: item,
    //           isSelected: selectedIndex == index,
    //         ),
    //       ),
    //     ));
    //   }).toList(),
    // );
  }

  void updateIdex(int index) {
    if (selectedIndex != index) {
      setState(() {
        selectedIndex = index;
      });
    }
  }
}
