import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/my_card.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
        controller: pageController,
        animationDuration: const Duration(milliseconds: 300),
        children: List.generate(6, (index) {
          return const MyCard();
        }));
  }
}
