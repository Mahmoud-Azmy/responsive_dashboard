import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          maxLines: 1,
          transactionModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          maxLines: 1,
          transactionModel.subTitle,
          style: AppStyles.styleRegular16(context)
              .copyWith(color: const Color(0xffaaaaaa)),
        ),
        trailing: Text(
          maxLines: 1,
          transactionModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
              color: transactionModel.isWithdrawal
                  ? const Color(0xffF3735E)
                  : const Color(0xff7DD97B)),
        ),
      ),
    );
  }
}
