import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppStyles.styleRegular16(context)
              .copyWith(color: const Color(0xffAAAAAA)),
          fillColor: const Color(0xffF1F1F1),
          filled: true,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xffF1F1F1),
      ),
    );
  }
}
