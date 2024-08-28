import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_container.dart';
import 'package:responsive_dash_board/views/widgets/income_chart.dart';
import 'package:responsive_dash_board/views/widgets/income_details.dart';
import 'package:responsive_dash_board/views/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        child: Column(
      children: [
        IncomSectionHeader(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: IncomeChart()),
            Expanded(
              flex: 2,
              child: IncomeDetails(),
            ),
          ],
        ),
      ],
    ));
  }
}
