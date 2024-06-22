import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/transaction_item.dart';

import '../../models/transaction.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const List<TransactionModel> items = [
    TransactionModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      price: r'$20,129',
      isWithdrawal: true,
    ),
    TransactionModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 ',
      price: r'$20,129',
      isWithdrawal: false,
    ),
    // TransactionModel(
    //   title: 'Juni Mobile App project',
    //   date: '13 Apr, 2022 ',
    //   price: r'$20,129',
    //   isWithdrawal: false,
    // ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(transactionModel: e)).toList(),
    );
  }
}
