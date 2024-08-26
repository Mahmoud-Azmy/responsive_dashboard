import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_details_item_model.dart';
import 'package:responsive_dash_board/views/widgets/income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    IncomeDetailsItemModel(
        color: Color(0xff208CC8), title: 'Design service', value: '40%'),
    IncomeDetailsItemModel(
        color: Color(0xff4EB7F2), title: 'Design product', value: '25%'),
    IncomeDetailsItemModel(
        color: Color(0xff064061), title: 'Product royalti', value: '20%'),
    IncomeDetailsItemModel(
        color: Color(0xffE2DECD), title: 'Other', value: '22%'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return IncomeDetailsItem(incomeDetailsItemModel: items[index]);
      },
    );
  }
}
