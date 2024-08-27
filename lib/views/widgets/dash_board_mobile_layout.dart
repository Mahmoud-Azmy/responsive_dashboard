import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses.dart';
import 'package:responsive_dash_board/views/widgets/income_section.dart';
import 'package:responsive_dash_board/views/widgets/my_card_transaction_history_section.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice.dart';

class DashBoardMobilLayout extends StatelessWidget {
  const DashBoardMobilLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            AllExpenses(),
            SizedBox(
              height: 14,
            ),
            QuickInvoice(),
            SizedBox(
              height: 24,
            ),
            MyCardTransactionHistorySection(),
            SizedBox(
              height: 24,
            ),
            IncomeSection(),
          ],
        ),
      ),
    );
  }
}
