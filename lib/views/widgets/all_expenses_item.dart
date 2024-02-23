import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/views/widgets/active_and_inactive_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.isActive, required this.allExpensesItemModel});
  final bool isActive;
  final AllExpensesItemModel allExpensesItemModel;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel)
        : InActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}
