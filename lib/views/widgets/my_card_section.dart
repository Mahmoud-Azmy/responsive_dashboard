import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';
import 'package:responsive_dash_board/views/widgets/custom_container.dart';
import 'package:responsive_dash_board/views/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/views/widgets/my_card_page_view.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My card',
            style: AppStyles.styleSemiBold20,
          ),
          SizedBox(
            height: 20,
          ),
          MyCardPageView(),
          SizedBox(
            height: 20,
          ),
          DotsIndicator(
            activeIndex: 0,
          ),
        ],
      ),
    );
  }
}
