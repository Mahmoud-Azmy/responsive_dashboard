import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.activeIndex});
  final int activeIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          6,
          (index) => Padding(
                padding: const EdgeInsets.only(right: 5),
                child: CustomDotIndicator(isActive: activeIndex == index),
              )),
    );
  }
}
