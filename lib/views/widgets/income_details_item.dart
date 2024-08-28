import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_details_item_model.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.incomeDetailsItemModel});
  final IncomeDetailsItemModel incomeDetailsItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: incomeDetailsItemModel.color,
        ),
      ),
      title: Text(
        maxLines: 1,
        incomeDetailsItemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        maxLines: 1,
        incomeDetailsItemModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
