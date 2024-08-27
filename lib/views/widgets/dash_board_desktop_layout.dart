import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/income_section.dart';
import 'package:responsive_dash_board/views/widgets/my_card_transaction_history_section.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          flex: 5,
          child: SingleChildScrollView(
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
              ],
            ),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                MyCardTransactionHistorySection(),
                SizedBox(
                  height: 16,
                ),
                IncomeSection(),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 16,
        ),
      ],
    );
  }
}
