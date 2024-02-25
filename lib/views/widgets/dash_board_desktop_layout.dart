import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/my_card_section.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 293,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          flex: 604,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 24,
                ),
                AllExpenses(),
                SizedBox(
                  height: 24,
                ),
                QuickInvoice()
              ],
            ),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          flex: 468,
          child: MyCardSection(),
        ),
        SizedBox(
          width: 16,
        ),
      ],
    );
  }
}
