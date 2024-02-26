import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';
import 'package:responsive_dash_board/views/widgets/transaction_history_item_list_view.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'Transaction History',
              style: AppStyles.styleSemiBold20,
            ),
            const Spacer(),
            Text(
              'See all',
              style: AppStyles.styleMedium16
                  .copyWith(color: const Color(0xff4EB7F2)),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const TransactionHistoryItemListView(),
      ],
    );
  }
}
