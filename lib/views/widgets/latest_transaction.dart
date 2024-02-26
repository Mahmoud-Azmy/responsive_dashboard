import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';
import 'package:responsive_dash_board/views/widgets/latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16,
        ),
        SizedBox(
          height: 8,
        ),
        LatestTransactionListView()
      ],
    );
  }
}
