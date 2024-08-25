import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';

class IncomSectionHeader extends StatelessWidget {
  const IncomSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Income',
          style: AppStyles.styleSemiBold20,
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 8,
          ),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xffF1F1F1)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
              const Text(
                'Monthly',
                style: AppStyles.styleMedium16,
              ),
              const SizedBox(
                width: 16,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xff064061),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
