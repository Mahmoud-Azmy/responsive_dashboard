import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.image,
      this.imgeColor,
      this.backgrounColor,
      this.iconColor});
  final String image;
  final Color? imgeColor, backgrounColor, iconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          height: 60,
          width: 60,
          decoration: ShapeDecoration(
              shape: const OvalBorder(),
              color: backgrounColor ?? const Color(0xffFAFAFA)),
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                imgeColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
          ),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios_outlined,
          color: iconColor ?? const Color(0xff064061),
        )
      ],
    );
  }
}
