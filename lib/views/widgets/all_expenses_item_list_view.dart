import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({
    super.key,
  });

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  int activeIndex = 6;
  final List<AllExpensesItemModel> items = [
    const AllExpensesItemModel(
        image: Assets.assetsImagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensesItemModel(
        image: Assets.assetsImagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensesItemModel(
        image: Assets.assetsImagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
        children: items.asMap().entries.map((e) {
      int index = e.key;
      var item = e.value;
      if (index == 1) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: GestureDetector(
              onTap: () {
                if (activeIndex != index) {
                  setState(() {
                    activeIndex = index;
                  });
                }
              },
              child: AllExpensesItem(
                  isActive: activeIndex == index, allExpensesItemModel: item),
            ),
          ),
        );
      } else {
        return Expanded(
            child: GestureDetector(
                onTap: () {
                  if (activeIndex != index) {
                    setState(() {
                      activeIndex = index;
                    });
                  }
                },
                child: AllExpensesItem(
                    isActive: activeIndex == index,
                    allExpensesItemModel: item)));
      }
    }).toList());
  }
}
