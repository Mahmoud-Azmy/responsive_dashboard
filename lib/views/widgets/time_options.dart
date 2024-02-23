import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';

class TimeOptions extends StatelessWidget {
  const TimeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xffF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      padding: const EdgeInsets.only(
        left: 8,
      ),
      child: Row(
        children: [
          const Text(
            'Monthly',
            style: AppStyles.styleMedium16,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: Color(0xff064061),
              ))
        ],
      ),
    );
  }
}
