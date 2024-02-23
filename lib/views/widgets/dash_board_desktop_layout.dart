import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';

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
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: AllExpenses(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
