import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_container.dart';
import 'package:responsive_dash_board/views/widgets/my_card_section.dart';
import 'package:responsive_dash_board/views/widgets/transaction_history_section.dart';

class MyCardTransactionHistorySection extends StatelessWidget {
  const MyCardTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        child: Column(
      children: [
        MyCardSection(),
        Divider(
          height: 40,
          color: Color(0xffF1F1F1),
        ),
        TransactionHistorySection()
      ],
    ));
  }
}
