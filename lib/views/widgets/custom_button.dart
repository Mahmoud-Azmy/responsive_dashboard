import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.text, this.textColor, this.backgroundColor});
  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: backgroundColor ?? const Color(0xff4EB7F2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {},
          child: Text(
            text,
            style: AppStyles.styleSemiBold18
                .copyWith(color: textColor ?? const Color(0xffFFFFFF)),
          )),
    );
  }
}

class QuickInvoiceButtonsSection extends StatelessWidget {
  const QuickInvoiceButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: CustomButton(
          textColor: Color(0xff4EB7F2),
          backgroundColor: Color(0xffFFFFFF),
          text: 'Add more details',
        )),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: CustomButton(text: 'Send Money'),
        ),
      ],
    );
  }
}
